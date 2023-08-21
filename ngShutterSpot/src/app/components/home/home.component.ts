import { PhotoSpot } from './../../models/photo-spot';

import { Component, OnInit } from '@angular/core';

import { PhotoSpotService } from 'src/app/services/photo-spot.service';

@Component({
  selector: 'app-home',
  templateUrl: './home.component.html',
  styleUrls: ['./home.component.css']
})
export class HomeComponent implements OnInit {
  selected: PhotoSpot | null = null;
  newSpot: PhotoSpot = new PhotoSpot();
  editPhotoSpot: PhotoSpot | null = null;
  listAllSpots: boolean = false;
  showUpdateForm: boolean = false;
  spotList: PhotoSpot[] = [];
  showAddForm: boolean = false;
  showBackgroundImage: boolean = true;



  constructor(
    private spotService: PhotoSpotService
  ) { }
  ngOnInit(): void {
    this.reload();
  }

  listSpots() {
    this.listAllSpots = !this.listAllSpots;

  }
  hideBackground() {
    this.showBackgroundImage = true;
  }

  reload() {
    this.spotService.index().subscribe({
      next: (list) => {
        this.spotList = list;
      },
      error: (fail) => {
        console.error('HomeComponent.reload(): error getting parks');
        console.error(fail);
      }
    });
  }


  toggleAddForm() {
    this.showAddForm = !this.showAddForm;
  }


  displaySpots(photoSpot: PhotoSpot) {
    this.selected = photoSpot;
  }
  clearSelection() {
    this.selected = null;
  }

  addSpot(photoSpot: PhotoSpot): void {
    this.spotService.create(photoSpot).subscribe({
      next: (createdSpot) => {
        this.newSpot = new PhotoSpot();
        this.showAddForm = false;
        this.reload();
      },
      error: (fail) => {
        console.error('HomeComponenet.addSpot: error creating PhotoSpot');
        console.error(fail);
      },
    });
  }

  setEditPhotoSpot() {
    this.editPhotoSpot = Object.assign({}, this.selected);
  }
  updateSpot(PhotoSpot: PhotoSpot, setSelected: boolean = true) {
    this.spotService.updatePhotoSpot(PhotoSpot).subscribe({
      next: (updatedSpot) => {
        if (setSelected) {
          this.selected = updatedSpot;
        }
        this.editPhotoSpot = null;
        this.reload();
      },
      error: (oops) => {
        console.error('PhotoSpotComponent.updateSpot: error updating PhotoSpot');
        console.error(oops);
      },
    });
  }

  deletePhotoSpot(id: number) {
    this.spotService.destroy(id).subscribe({
      next: () => {

        this.spotList = this.spotList.filter(spot => spot.id !== id);


        if (this.selected && this.selected.id === id) {
          this.selected = null;
        }
      },
      error: (toobad) => {
        console.error('PhotoSpotComponent.deleteSpot: error deleting Spot');
        console.log(toobad);
      },
    });
  }

  displayUpdateForm() {
    this.showUpdateForm = true;
    this.editPhotoSpot = Object.assign({}, this.selected); // Clone the selected spot
  }

}




