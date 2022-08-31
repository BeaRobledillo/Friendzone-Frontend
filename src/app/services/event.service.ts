import { Injectable } from '@angular/core';
import { HttpClient, HttpHeaders} from '@angular/common/http'
import { Observable } from 'rxjs';
import { Event } from '../interface/event';

@Injectable({
  providedIn: 'root'
})

export class EventService{
    private baseURL = "http://localhost:8080/api";

    constructor(private httpClient: HttpClient){}

    getEventsList(): Observable<Event[]>{
        return this.httpClient.get<Event[]>(`${this.baseURL}/allevents`);
      }

    deleteEvent(id: number): Observable<Object>{
        return this.httpClient.delete(`${this.baseURL}/delete/${id}`);
      }


      addEvent(event: Event): Observable<object>{
        return this.httpClient.post(`${this.baseURL}/createevent`, event)
      }

      getEventById(id: number): Observable<Event>{

        return this.httpClient.get<Event>(`${this.baseURL}/oneevent/${id}`)
      }

      updateEvent(id: number, event: Event): Observable<object>{
        return this.httpClient.put(`${this.baseURL}/update/`, event)
      }

}