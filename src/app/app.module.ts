import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';

import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';

import { LandingComponent } from './components/pages/landing/landing.component' ;
import { NgbModule } from '@ng-bootstrap/ng-bootstrap';

import { FooterComponent } from './components/layout/footer/footer.component';
import { HeaderComponent } from './components/layout/header/header.component';
import { HeaderLandingComponent } from './components/header-landing/header-landing.component';


@NgModule({
  declarations: [
    AppComponent,

    LandingComponent,

    FooterComponent,
    HeaderComponent,
    HeaderLandingComponent

  ],
  imports: [
    BrowserModule,
    AppRoutingModule,
    NgbModule
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
