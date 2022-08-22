import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';
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

  event:Event=new Event();

  constructor(private eventservice:EventService, private router:Router) { }

  ngOnInit(): void {
    

    this.event=this.eventservice.oneEvent;
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
