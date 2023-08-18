import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Observable, catchError, throwError } from 'rxjs';
import { environment } from 'src/environments/environment';
import { PhotoSpot } from '../models/photo-spot';

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
          () => new Error('TodoService.index(): error retrieving todo: ' + err)
        );
      })
    );
  }
}
