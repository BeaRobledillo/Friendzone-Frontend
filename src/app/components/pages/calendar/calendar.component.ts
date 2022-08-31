import { Component, OnInit } from '@angular/core';
import { CalendarOptions } from '@fullcalendar/angular';
import { EventService } from 'src/app/services/event.service';
import { Event } from 'src/app/interface/event';
import esLocale from '@fullcalendar/core/locales/es';


@Component({
  selector: 'app-calendar',
  templateUrl: './calendar.component.html',
  styleUrls: ['./calendar.component.css']
})
export class CalendarComponent implements OnInit {

  events:Event[]=[];

  calendarOptions : CalendarOptions;

  constructor(private eventService:EventService) { }

  myEvents: any [] = [];

  ngOnInit(): void {


    this.getEvents();
    console.log (this.eventsParse(this.events));
    console.log (this.calendarOptions);

    this.myEvents= this.eventsParse(this.events);

  }

  private getEvents(){
    this.eventService.getEventsList().subscribe(data => {
      this.events = data;
      console.log(data);
      let parseEvents = this.eventsParse(data);
      console.log(parseEvents);
      this.calendarOptions = {
        initialView: 'dayGridMonth',
        locale: esLocale,
        navLinks: false,
        headerToolbar: {
          left: '',
          center: 'title',
        },
        
        dateClick: this.handleDateClick.bind(this),
         events: parseEvents
      };

    })
  }

  private eventsParse(events: Event[]){
    let parseEvents: any [] = [];
    events.forEach((item)=>{
      let parse: any = {title:"", date:""}
      parse.title = "";
      parse.title = item.name;
      parse.date = "";
      parse.date = item.event_date;
      parseEvents.push(parse);
      console.log (parse);
    });
    return parseEvents;
  }
  
  handleDateClick(arg) {
    alert('date click! ' + arg.dateStr)
  }

}
