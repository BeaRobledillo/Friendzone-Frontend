import { Component, NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { CreateEventComponent } from './components/pages/create-event/create-event.component';
import { HomepageComponent } from './components/pages/homepage/homepage.component';

import { UpdateEventComponent } from './components/pages/update-event/update-event.component';

import { OneEventComponent } from './components/pages/one-event/one-event.component';
import { EquipoComponent } from './components/pages/equipo/equipo.component';
import { ContactComponent } from './components/pages/contact/contact.component';
import { LandingComponent } from './components/pages/landing/landing.component';
import { HeaderLandingComponent } from './components/layout/header-landing/header-landing.component';


const routes: Routes = [

  
  {path: '', component: LandingComponent},
  {path: 'home', component: HomepageComponent},
  {path: 'create-event', component: CreateEventComponent},

  {path: 'update-event/:id', component: UpdateEventComponent},

  {path: 'one-event', component: OneEventComponent},

  {path: 'equipo', component: EquipoComponent},
  {path: 'contact', component: ContactComponent},
  {path: 'header-landing', component: HeaderLandingComponent}

];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
