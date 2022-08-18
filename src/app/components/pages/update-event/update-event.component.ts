import { Component, OnInit, ViewChild } from '@angular/core';
import { EventService } from 'src/app/services/event.service';
import { Event } from 'src/app/interface/event';
import { ActivatedRoute, Router } from '@angular/router';
import { GooglePlaceDirective } from 'ngx-google-places-autocomplete';
import { Address } from 'ngx-google-places-autocomplete/objects/address';


@Component({
  selector: 'app-update-event',
  templateUrl: './update-event.component.html',
  styleUrls: ['./update-event.component.css']
})
export class UpdateEventComponent implements OnInit {

  title: '';

  @ViewChild("placesRef") placesRef : GooglePlaceDirective;

  title_add;
  latitude;
  longitude;
  zoom;

  id: number;
  event: Event = new Event();
  constructor(private eventService: EventService,
    private route: ActivatedRoute,
    private router: Router) { }

  ngOnInit(): void {

    this.setCurrentLocation();
    this.id = this.route.snapshot.params['id'];

    this.eventService.getEventById(this.id).subscribe(data =>{
      this.event = data;
    }, error => console.log(error))
  }

  onSubmit(){
    this.eventService.updateEvent(this.id, this.event).subscribe( data => {
        this.goToEventList();
    }, error => console.log(error))
  }

  goToEventList(){
    this.router.navigate(['']);
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

}
