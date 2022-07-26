import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';
import { HttpClientModule } from '@angular/common/http';
import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';

import { HomepageComponent } from './components/pages/homepage/homepage.component';

import { FooterComponent } from './components/layout/footer/footer.component';

import { LandingComponent } from './components/pages/landing/landing.component' ;
import { NgbModule } from '@ng-bootstrap/ng-bootstrap';



import { HeaderComponent } from './components/layout/header/header.component';
import { HeaderLandingComponent } from './components/layout/header-landing/header-landing.component';
import { RouterModule } from '@angular/router';
import { CreateEventComponent } from './components/pages/create-event/create-event.component';
import { FormsModule } from '@angular/forms';



@NgModule({
  declarations: [
    AppComponent,



    HomepageComponent,

    FooterComponent,

    LandingComponent,
    HeaderComponent,
    HeaderLandingComponent,
    CreateEventComponent



  ],
  imports: [
    BrowserModule,
    AppRoutingModule,

    HttpClientModule,

    NgbModule,
    RouterModule,
    FormsModule

  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
