import { Component, OnInit } from '@angular/core';
import { ActivatedRoute, Router } from '@angular/router';
import { Event } from 'src/app/interface/event';
import { Todo } from 'src/app/interface/todo';
import { EventService } from 'src/app/services/event.service';
import { CreateEventComponent } from '../create-event/create-event.component';


@Component({
  selector: 'app-one-event',
  templateUrl: './one-event.component.html',
  styleUrls: ['./one-event.component.css']
})
export class OneEventComponent implements OnInit {


  todos : Todo[] = [];
  newTodo : string;
  latitude: number;
  longitude: number;

  event:Event=new Event();
  geocoder: google.maps.Geocoder = new google.maps.Geocoder();

  constructor(private eventservice:EventService, private router:Router, private route: ActivatedRoute,) { }

  ngOnInit(): void {
    const id = this.route.snapshot.params['id'];
    this.eventservice.getEventById(id).subscribe({
      next: (res) => {
        this.event = res;
        this.getLocationFromGoogleApi({ address: this.event.location });
      },
      error: (err) => console.log(err)
      
    });
  }

  getLocationFromGoogleApi(request: google.maps.GeocoderRequest): void {
    this.geocoder
      .geocode(request, (results) => {
        this.latitude = results[0].geometry.location.lat();
        this.longitude = results[0].geometry.location.lng();
        
      });
  }

  saveTodo(){
    if(this.newTodo){
      let todo = new Todo();
      todo.name = this.newTodo;
      todo.isCompleted=true
      this.todos.push(todo);
      this.newTodo='';
    }else{
      alert('Por favor, introduzca tarea')
    }
  }

  done(id:number){
    this.todos[id].isCompleted = !this.todos[id].isCompleted;
  }

  remove(id:number){
    this.todos = this.todos.filter((v,i)=>i !== id);
  }



}
