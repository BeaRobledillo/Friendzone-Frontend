import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';
import { Evento } from 'src/app/evento';
import { EventService } from 'src/app/services/event.service';

@Component({
  selector: 'app-create-event',
  templateUrl: './create-event.component.html',
  styleUrls: ['./create-event.component.css']
})
export class CreateEventComponent implements OnInit {

  evento: Evento = new Evento();

  constructor(private eventService: EventService,
    private router: Router) { }

  saveEvent() {
    this.eventService.addEvent(this.evento).subscribe( data =>{
      console.log(data)
    },
    error => console.log(error));

  }

  goToEventList(){
    this.router.navigate(['/create-event']);
}

  ngOnInit(): void {

  }

  onSubmit(){
    console.log(this.evento);
    this.saveEvent()
    
  }

}
