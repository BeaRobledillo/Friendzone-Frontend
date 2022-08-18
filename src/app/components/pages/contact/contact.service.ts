import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { map } from 'rxjs';


@Injectable({
  providedIn: 'root'
})
export class ContactService {

  private api = 'https://mailthis.to/friendcityequipobeta'

  constructor(private http: HttpClient) { }

  PostMessage(input: any){
    return this.http.post(this.api, input, {responseType: 'text'})
    .pipe(
      map(
        (response) => {
          if (response) {
            return response;
          }else{
            return null;
          }
        },
        (error: any) => {
          return error;
        }
      )
    )
  }
}
