export class PhotoSpot {
  id: number;
  name: string;
  address: string;
  city: string;
  state: string;


constructor(
  id: number = 0,
  name: string = '',
  address: string = '',
  city: string = '',
  state: string = '',


) {
  this.id = id;
  this.name = name;
  this.address = address;
  this.city = city;
  this.state = state;
}

}
