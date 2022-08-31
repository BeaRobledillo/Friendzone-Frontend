import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';
import { EventService } from 'src/app/services/event.service';
import { Event } from 'src/app/interface/event';
import { UserService } from 'src/app/services/user.service';

@Component({
  selector: 'app-homepage',
  templateUrl: './homepage.component.html',
  styleUrls: ['./homepage.component.css']
})
export class HomepageComponent implements OnInit {

  content?: string;

  events:Event[]=[];
  

  constructor(private eventService: EventService, private router:Router, private userService: UserService) { }

  ngOnInit(): void {

    this.getEvents();

    this.userService.getUserBoard().subscribe(
      data => {
        this.content = data;
      },
      err => {
        this.content = JSON.parse(err.error).message;
      }
    );
   
  }

  private getEvents(){
    this.eventService.getEventsList().subscribe(data => {
      this.events = data;
    })
  }

  delete(id:number){
    
  
    this.eventService.deleteEvent(id).subscribe( data => {
      console.log(data);
      this.getEvents();
    })
  

  }

  updateEvent(id: number){
    this.router.navigate(['update-event', id]);
  }

  showOneEvent(id: number): void {
    this.router.navigate(['one-event', id]);


  }

}