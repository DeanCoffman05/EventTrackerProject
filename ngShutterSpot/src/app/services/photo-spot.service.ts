import { PhotoSpot } from './../models/photo-spot';
import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Observable, catchError, throwError } from 'rxjs';
import { environment } from 'src/environments/environment';
import { DatePipe } from '@angular/common';


@Injectable({
  providedIn: 'root'
})
export class PhotoSpotService {

  private url = environment.baseUrl + 'api/photospots/';
  constructor(
    private http: HttpClient
  ) { }
  index(): Observable<PhotoSpot[]> {
    return this.http.get<PhotoSpot[]>(this.url).pipe(
      catchError((err: any) => {
        console.log(err);
        return throwError(
          () => new Error('TodoService.index(): error retrieving spot: ' + err)
        );
      })
    );
  }
  public create(photospot: PhotoSpot): Observable<PhotoSpot> {

    photospot.name = '';
    return this.http.post<PhotoSpot>(this.url, photospot).pipe(
      catchError((err: any) => {
        console.log(err);
        return throwError(
          () => new Error('TodoService.create(): error retrieving spot: ' + err)
        );
      })
    );
  }
  updatePhotoSpot(updatePhotoSpot: PhotoSpot): Observable<PhotoSpot> {
    return this.http.put<PhotoSpot>(this.url + updatePhotoSpot.id, updatePhotoSpot).pipe(
      catchError((err: any) => {
        console.log(err);
        return throwError(
          () => new Error('PhotoSpotService.updatePhotoSpot(): error updating photo spot: ' + err)
        );
      })
    );
  }
  destroy(id: number): Observable<void> {
    return this.http.delete<void>(this.url + id).pipe(
      catchError((err: any) => {
        console.log(err);
        return throwError(
          () => new Error('TodoService.delete(): error deleting Spot: ' + err)
        );
      })
    );

  }
  show(id: number): Observable<PhotoSpot> {
    return this.http.get<PhotoSpot>(this.url + '/' + id).pipe(
      catchError((err: any) => {
        console.log(err);
        return throwError(
          () => new Error('TodoService.show(): error retrieving Spot: ' + err)
        );
      })
    );
  }

}

