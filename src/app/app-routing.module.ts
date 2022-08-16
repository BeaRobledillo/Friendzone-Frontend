import { Component, NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { CreateEventComponent } from './components/pages/create-event/create-event.component';
import { HomepageComponent } from './components/pages/homepage/homepage.component';

import { UpdateEventComponent } from './components/pages/update-event/update-event.component';

import { OneEventComponent } from './components/pages/one-event/one-event.component';
import { EquipoComponent } from './components/pages/equipo/equipo.component';
import { ContactComponent } from './components/pages/contact/contact.component';

import { CalendarComponent } from './components/pages/calendar/calendar.component';



const routes: Routes = [
  {path: '', component: HomepageComponent},
  {path: 'create-event', component: CreateEventComponent},

  {path: 'update-event/:id', component: UpdateEventComponent},

  {path: 'one-event', component: OneEventComponent},

  {path: 'equipo', component: EquipoComponent},
  {path: 'contact', component: ContactComponent},
  {path: 'calendar', component: CalendarComponent}


];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
