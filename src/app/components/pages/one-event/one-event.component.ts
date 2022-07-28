import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';
import { Event } from 'src/app/interface/event';
import { EventService } from 'src/app/services/event.service';


@Component({
  selector: 'app-one-event',
  templateUrl: './one-event.component.html',
  styleUrls: ['./one-event.component.css']
})
export class OneEventComponent implements OnInit {

  event:Event=new Event();

  constructor(private eventservice:EventService, private router:Router) { }

  ngOnInit(): void {

    this.event=this.eventservice.oneEvent;
  }

}
