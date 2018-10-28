import React, { Component } from 'react';
//import logo from './logo.svg';
import './App.css';
//import { SearchBox } from 'google-maps-react';
//import { SearchBox } from 'react-google-maps';
//import { SearchBox } from 'react-google-maps/lib/components/places/SearchBox';
import /*PlacesAutocomplete, */{
  geocodeByAddress,
  getLatLng,
} from 'react-places-autocomplete';
import * as math from 'mathjs'

class App extends Component {
  render() {
    return (
      /*
      <div className="App">
        <header className="App-header">
          <img src={logo} className="App-logo" alt="logo" />
          <p>
            Edit <code>src/App.js</code> and save to reload.
          </p>
          <a
            className="App-link"
            href="https://reactjs.org"
            target="_blank"
            rel="noopener noreferrer"
          >
            Learn React
          </a>
        </header>
      </div>
      */

     <div className="flex">
       
       <div className="left-section">
       <div className="flex">
        <div className="top-10 width-120">
          <div className="height-20">Full name: </div><br/>
          <div className="height-20">Email: </div><br/>
          <div className="height-20">Address </div><br/>
          <div className="height-20">City: </div><br/>
          <div className="height-20">Street: </div><br/>
          <div className="height-20">House number: </div><br/>
          <div className="height-20">Zip code: </div><br/>
        </div>
        <div>
          <input className="input" type="text" name="fullName"></input><br/>
          <input className="input" type="text" name="email"></input><br/>
          <br/>
          <input className="input" type="text" name="city"></input><br/>
          <input className="input" type="text" name="street"></input><br/>
          <input className="input" type="text" name="house"></input><br/>
          <input className="input" type="text" name="zipcode"></input><br/>
          
        </div>
       </div>
        <div className="flex">
          <input type="button" value="add customer" onClick={()=>this.onAddCustomer()} className="add-button"/>
          <input type="button" value="remove customer" onClick={()=>this.onRemoveCustomer()} className="add-button"/>
          
        </div>
        <FileInput />
       </div>
       <div className="right-section">
        <List ref={this.myRef}/*customers={customers_global}*//>
       </div>
     </div>
     
    );
  }

  //<br/>
  //        <input className="input" type="text" name="placeholder"></input><br/>

  onRemoveCustomer() {
    //
    for (var i = 0; i < customers_global.length; i++) {
      console.log(customers_global[i].name + " " + document.getElementsByName('fullName')[0].value);
      if /*(String(customers_global[i].name) === 'user 8')*/
          /*(math.eval(
            customers_global[i].name.toString() + ' == ' + document.getElementsByName('fullName')[0].value.toString())
          )*/
          ((customers_global[i].name) ===
          (document.getElementsByName('fullName')[0].value)) {
        console.log(i);
        customers_global.splice(i, 1);
        listReference.current.setState({customers: customers_global});
        break;
      }
    }
    //customers_global.findIndex
  }

  constructor(props) {
    super(props);
    this.state = {/*searchBox: SearchBox*/};
    this.myRef = React.createRef();
    listReference = this.myRef;
    /*
    var input = document.getElementsByName('placeholder')[0];
    this.state.searchBox = new SearchBox(input);
    this.state.searchBox.onPlacesChanged = function(){
      console.log('change');
    }*/
    //map.controls[google.maps.ControlPosition.TOP_LEFT].push(input);
    /*google.maps.places.*/
    /*
    var aScript = document.createElement('script');
    aScript.type = 'text/javascript';
    aScript.src = "https://maps.googleapis.com/maps/api/js?key=AIzaSyBmOmHKf6BorMjzCA_NbftHCvLtm5S0hf0&libraries=places&callback=initMap";

    document.head.appendChild(aScript);
    */
    var aScript = document.createElement('script');
    aScript.type = 'text/javascript';
    aScript.src = "https://maps.google.com/maps?file=api&amp;v=3&amp;sensor=false";

    document.head.appendChild(aScript);
    
    //<script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBmOmHKf6BorMjzCA_NbftHCvLtm5S0hf0&libraries=places&callback=initMap"></script>
    //<script src="https://maps.google.com/maps?file=api&amp;v=3&amp;sensor=false" type="text/javascript"></script>
  }

  //var customers = [];

  onAddCustomer() {
    //alert('click');
    //console.log("click " + value);
    
    //console.log(customers_global);
    /*
    var input = document.getElementsByName('placeholder')[0];
    this.state.searchBox = new SearchBox(input);
    this.state.searchBox.onPlacesChanged = function(){
      console.log('change');
    }
    */

    var item = {};
    item.name = document.getElementsByName('fullName')[0].value;
    item.email = document.getElementsByName('email')[0].value;
    item.city = document.getElementsByName('city')[0].value;
    item.street = document.getElementsByName('street')[0].value;
    item.house = document.getElementsByName('house')[0].value;
    item.zipcode = document.getElementsByName('zipcode')[0].value;

    var address = item.street + ' ' + item.house + ', ' + item.city/* + ;, Lithuania;*/;
    
    geocodeByAddress(address)
      .then(results => getLatLng(results[0]))
      .then(latLng => {
        console.log('Success', latLng);
        
        customers_global.push(item);

        this.myRef.current.setState({customers: customers_global});
        })
      .catch(error => {console.error('Error', error); alert('bad address')});
    
    //console.log(this.state.searchBox.getPlaces());
    
  }
}

class List extends Component {
  constructor(props) {
    super(props);
    this.state = {customers: []};
  }

  render() {
    var rows = [];
    this/*.props*/.state.customers.forEach((contact) => { 
      rows.push(<p key={contact.name} className="hover-item" onClick={()=>this.onClickCustomer(
        contact.name, contact.email, contact.city, contact.street, contact.house, contact.zipcode)}>
        {contact.name}, {contact.email}, {contact.city}, {contact.street}, {contact.house}, {contact.zipcode}</p>);
    });
    //console.log(rows);
    return (
      <div>{rows}</div>
    );
  }

  onClickCustomer(name, email, city, street, house, zipcode) {
    document.getElementsByName('fullName')[0].value = name;
    document.getElementsByName('email')[0].value = email;
    document.getElementsByName('city')[0].value = city;
    document.getElementsByName('street')[0].value = street;
    document.getElementsByName('house')[0].value = house;
    document.getElementsByName('zipcode')[0].value = zipcode;
  }

  
}

var customers_global = [/*{name: "test1"}, {name: "test2"}, {name: "test3"}*/];

var listReference;

export default App;

//////////////////////////

class FileInput extends React.Component {
  constructor(props) {
    super(props)
    this.uploadFile = this.uploadFile.bind(this);
    this.state = {/*fileReader: FileReader, */file: ''};
    //var fileReader;
    //this.fileReader = this.fileReader.bind(this);
  }
  
  uploadFile(event) {

    this.state.file = event.target.files[0];
    //console.log(file);
 
    //

    var reader = new FileReader();
    reader.onload = function(){
      //console.log(reader.result);
      var result = reader.result;
      var index = result.indexOf(";");
      var chunk;
      var fields;
      var item;
      customers_global = [];
      while (index !== -1) {
        chunk = result.substring(0, index);
        fields = chunk.split(',');
        item = {};
        item.name = fields[0];
        item.email = fields[1].substring(1);
        item.city = fields[2].substring(1);
        item.street = fields[3].substring(1);
        item.house = fields[4].substring(1);
        item.zipcode = fields[5].substring(1);
        customers_global.push(item);
        result = result.substring(index + 1);
        index = result.indexOf(";");
      }
      //console.log(customers_global);
      listReference.current.setState({customers: customers_global});
    };
    reader.readAsText(this.state.file);

  }

  onSaveList () {
    /*
    const fs = require('browserify-fs');
    fs.writeFile('test.txt', 'lyrics', (err) => {  
      
      if (err) throw err;

      console.log('Lyric saved!');
    });*/
    /*const writeFileP = require("write-file-p");
 
    // Write a text file
    writeFileP('test.txt', 'Hello World', (err, data) => {
        console.log(err || data);
    });*/
    var data = '';
    for (var i = 0; i < customers_global.length; i++) {
      data = data + customers_global[i].name + ', '
        + customers_global[i].email + ', '
        + customers_global[i].city + ', '
        + customers_global[i].street + ', '
        + customers_global[i].house + ', '
        + customers_global[i].zipcode + ';\n ';
    }
    require("downloadjs")(data, 'test1.txt', 'text/plain');
  }

  render() {
    return (
      <div>
        <span>
          <input type="file"
          name="myFile"
          onChange={this.uploadFile} />
        </span><br/>
        <input type="button" value="save list" onClick={()=>this.onSaveList()} className="add-button"/>
      </div>
    )
  }
}
