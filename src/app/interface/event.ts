import { Time } from "@angular/common";

export class Event {
    id : number;
    event_date: Date;
    name:String;
    location:string;
    budget: number;
    description: String;
    image:String;
    hour: Time;

}