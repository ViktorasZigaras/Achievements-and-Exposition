import React, { Component } from 'react';
import './App.css';
import Unsplash, {toJson} from 'unsplash-js';
import './styles.sass';

class App extends Component {
  render() {
    return (
      <div className="app">

        <div>

          <input className="input" type="text" name="searchTF"></input>
          <input className="searchButton" type="button" value="Search" onClick={()=>this.onSearch()}/>
          <br/>

          <div className="grid">
            <img src="" width="100" height="100" class="" name="img1"/>
            <img src="" width="100" height="100" class="" name="img2"/>
            <img src="" width="100" height="100" class="" name="img3"/>
            <img src="" width="100" height="100" class="" name="img4"/>
            <img src="" width="100" height="100" class="" name="img5"/><br/>
            <img src="" width="100" height="100" class="" name="img6"/>
            <img src="" width="100" height="100" class="" name="img7"/>
            <img src="" width="100" height="100" class="" name="img8"/>
            <img src="" width="100" height="100" class="" name="img9"/>
            <img src="" width="100" height="100" class="" name="img10"/><br/>
          </div>

        </div>

        <div>
          <input className="saveButton" type="button" value="Save" onClick={()=>this.onSave()}/>
          <br/>
          <select name="saveList" className="saveList" onChange={()=>this.onLoad()}/>
        </div>

      </div>
    );
  }

  constructor(props) {
    super(props);
    this.state = {saves: []};
  
    unsplash = new Unsplash({
      applicationId: "ccd31a87bfefc707fa7c5ff21da118d245be88b728636a041f43cf37e4c2fe0b",//{APP_ACCESS_KEY}
      secret: "e91ea80a36b51bf9749f95c17ccdb2354836dd420199eb47078d0b2a4e37576a"//{APP_SECRET}
    });
  }

  onLoad() {
    var sel = document.getElementsByName('saveList')[0];
    this.loadPictures(this.state.saves[sel.value]);
  }

  onSave() {
    var sel = document.getElementsByName('saveList')[0]; 
    var opt = document.createElement("option"); 
    opt.value = this.state.saves.length;
    this.state.saves.push(jsonSaved);
    
    opt.text = document.getElementsByName('searchTF')[0].value;
    sel.appendChild(opt);
  }

  onSearch() {
    unsplash.search.photos(document.getElementsByName('searchTF')[0].value)
    .then(toJson)
    .then(json => {
      jsonSaved = json;
      this.loadPictures(json);
    });
  }

  loadPictures(json) {
    document.getElementsByName('img1')[0].src = "";
    document.getElementsByName('img2')[0].src = "";
    document.getElementsByName('img3')[0].src = "";
    document.getElementsByName('img4')[0].src = "";
    document.getElementsByName('img5')[0].src = "";
    document.getElementsByName('img6')[0].src = "";
    document.getElementsByName('img7')[0].src = "";
    document.getElementsByName('img8')[0].src = "";
    document.getElementsByName('img9')[0].src = "";
    document.getElementsByName('img10')[0].src = "";

    if (json.results[0].urls.raw) {
      document.getElementsByName('img1')[0].src = json.results[0].urls.raw + "&w=100&h=100";
    }
    if (json.results[1].urls.raw) {
      document.getElementsByName('img2')[0].src = json.results[1].urls.raw + "&w=100&h=100";
    }
    if (json.results[2].urls.raw) {
      document.getElementsByName('img3')[0].src = json.results[2].urls.raw + "&w=100&h=100";
    }
    if (json.results[3].urls.raw) {
      document.getElementsByName('img4')[0].src = json.results[3].urls.raw + "&w=100&h=100";
    }
    if (json.results[4].urls.raw) {
      document.getElementsByName('img5')[0].src = json.results[4].urls.raw + "&w=100&h=100";
    }
    if (json.results[5].urls.raw) {
      document.getElementsByName('img6')[0].src = json.results[5].urls.raw + "&w=100&h=100";
    }
    if (json.results[6].urls.raw) {
      document.getElementsByName('img7')[0].src = json.results[6].urls.raw + "&w=100&h=100";
    }
    if (json.results[7].urls.raw) {
      document.getElementsByName('img8')[0].src = json.results[7].urls.raw + "&w=100&h=100";
    }
    if (json.results[8].urls.raw) {
      document.getElementsByName('img9')[0].src = json.results[8].urls.raw + "&w=100&h=100";
    }
    if (json.results[9].urls.raw) {
      document.getElementsByName('img10')[0].src = json.results[9].urls.raw + "&w=100&h=100";
    }
  }

}

var unsplash;
var jsonSaved;

export default App;