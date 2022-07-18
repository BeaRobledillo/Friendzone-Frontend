import { Injectable } from '@angular/core';
import { HttpClient} from '@angular/common/http'
import { Observable } from 'rxjs';
import { Event } from '../interface/event';

@Injectable({
  providedIn: 'root'
})

export class EventService{
    private baseURL = "http://localhost:8080/api/allevents";

    constructor(private httpClient: HttpClient){}

    getEventsList(): Observable<Event[]>{
        return this.httpClient.get<Event[]>(`${this.baseURL}`);
      }


}