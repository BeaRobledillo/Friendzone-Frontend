import { Component, OnInit, ViewChild } from '@angular/core';
import { Router } from '@angular/router';
import { EventService } from 'src/app/services/event.service';
import { Event } from 'src/app/interface/event';
import { GooglePlaceDirective } from 'ngx-google-places-autocomplete';
import { Address } from 'ngx-google-places-autocomplete/objects/address';

@Component({
  selector: 'app-create-event',
  templateUrl: './create-event.component.html',
  styleUrls: ['./create-event.component.css']
})
export class CreateEventComponent implements OnInit {

  title: '';

  @ViewChild("placesRef") placesRef : GooglePlaceDirective;

  title_add;
  latitude;
  longitude;
  zoom;

  event: Event = new Event();

  constructor(private eventService: EventService,
    private router: Router) { }

  saveEvent() {
    this.eventService.addEvent(this.event).subscribe( data =>{
      console.log(data)
      this.goToEventList()
    },
    error => console.log(error));

  }

  goToEventList(){
    this.router.navigate(['home']);
}

  ngOnInit(): void {
    this.setCurrentLocation();

  }

  onSubmit(){
    console.log(this.event);
    this.saveEvent()

  }

  public handleAddressChange(address: Address) {
    this.event.location = address.formatted_address;
    console.log(address.formatted_address);
    console.log('Latitud : ' + address.geometry.location.lat());
    console.log('Longitud : ' + address.geometry.location.lng());
    console.log(this.event.location);

    this.latitude = address.geometry.location.lat();
    this.longitude = address.geometry.location.lng();
  }

  public setCurrentLocation(){
    if ('geolocation' in navigator) {
      navigator.geolocation.getCurrentPosition((position) => {
        this.latitude = position.coords.latitude;
        this.longitude = position.coords.longitude;
        this.zoom = 15;
      })
    }
  }


  AddMail(item:string){
   console.warn(item);
  }

}
