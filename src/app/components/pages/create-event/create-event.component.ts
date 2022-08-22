import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';
import { EventService } from 'src/app/services/event.service';
import { Event } from 'src/app/interface/event';

@Component({
  selector: 'app-create-event',
  templateUrl: './create-event.component.html',
  styleUrls: ['./create-event.component.css']
})
export class CreateEventComponent implements OnInit {

  event: Event = new Event();

  constructor(private eventService: EventService,
    private router: Router) { }

  saveEvent() {
    this.eventService.addEvent(this.event).subscribe( data =>{
      console.log(data)
      this.goToEventList()
    },
    error => console.log(error));

  }

  goToEventList(){
    this.router.navigate(['home']);
}

  ngOnInit(): void {

  }

  onSubmit(){
    console.log(this.event);
    this.saveEvent()
    
  }

}
