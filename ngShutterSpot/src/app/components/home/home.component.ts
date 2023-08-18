
import { Component, OnInit } from '@angular/core';
import { PhotoSpot } from 'src/app/models/photo-spot';
import { PhotoSpotService } from 'src/app/services/photo-spot.service';


@Component({
  selector: 'app-home',
  templateUrl: './home.component.html',
  styleUrls: ['./home.component.css']
})
export class HomeComponent implements OnInit{

spotList: PhotoSpot[] = [];

  constructor (
  private spotService: PhotoSpotService
  ) {}
    ngOnInit(): void {
      this.reload();
    }
    reload() {
      this.spotService.index().subscribe ( {
        next: (list) => {
          this.spotList = list;
        },
        error: (fail) => {
          console.error('HomeComponent.reload(): error getting parks');
          console.error(fail);
        }
      });
    }


  }






