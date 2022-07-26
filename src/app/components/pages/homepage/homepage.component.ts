import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';
import { EventService } from 'src/app/services/event.service';
import { Event } from 'src/app/interface/event';

@Component({
  selector: 'app-homepage',
  templateUrl: './homepage.component.html',
  styleUrls: ['./homepage.component.css']
})
export class HomepageComponent implements OnInit {

  events:Event[]=[];

  constructor(private eventService: EventService, private router:Router) { }

  ngOnInit(): void {

    this.getEvents();
   
  }

  private getEvents(){
    this.eventService.getEventsList().subscribe(data => {
      this.events = data;
    })
  }

  delete(id:number){
    
   this.eventService.deleteEvent(id).subscribe(data=>{
    this.eventService.deleteEvent(id).subscribe( data => {
      console.log(data);
      this.getEvents();
    })
   })

  }

}