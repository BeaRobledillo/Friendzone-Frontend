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
import { ProfileComponent } from './components/pages/profile/profile.component';

import { CalendarComponent } from './components/pages/calendar/calendar.component';
import { AuthGuard } from './helpers/auth-guard';



const routes: Routes = [

  { path: '', redirectTo: 'landing', pathMatch: 'full', data: { breadcrumb: { label: 'Inicio', info: 'landing' }} },
  {path: 'landing', component: LandingComponent, canActivate: [AuthGuard]}, 
  {path: 'home', component: HomepageComponent, canActivate: [AuthGuard], data: {role: ['ROLE_USER']}},
  {path: 'create-event', component: CreateEventComponent, canActivate: [AuthGuard], data: {role: ['ROLE_USER']}},
  {path: 'update-event/:id', component: UpdateEventComponent, canActivate: [AuthGuard], data: {role: ['ROLE_USER']}},
  {path: 'one-event/:id', component: OneEventComponent, canActivate: [AuthGuard], data: {role: ['ROLE_USER']}},
  {path: 'calendar', component: CalendarComponent, canActivate: [AuthGuard], data: {role: ['ROLE_USER']}},
  {path: 'equipo', component: EquipoComponent},
  {path: 'contact', component: ContactComponent},
  
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
