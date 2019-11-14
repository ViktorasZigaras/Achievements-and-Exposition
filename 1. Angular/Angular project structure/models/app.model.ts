import { EventEmitter } from '@angular/core';
import { Subscriber } from '../vo/subscriber';
import { Module } from '../vo/module';
import { Country } from '../vo/country';
import { Category } from '../vo/category';
import { Permission } from '../vo/permission';

export class AppModel {
    //readonly onSelectedRetailerChange: EventEmitter<number> = new EventEmitter<number>();
    /*
    set selectedRetailer(value: number) {
        this.onSelectedRetailerChange.emit(this._selectedRetailer = value);
    }
    */

    selectedSubscriber: number;
    selectedModule: number;

    /* */

    private _subscribers: Subscriber[];
    
    set subscribers(value: any) {
        //this._subscribers = value;

        this._subscribers = [];

        let item: Subscriber;

        if (value != undefined){
            this._subscribers = [];
            for (let i: number = 0; i < value.length; i++) {

                if (i == 0) {
                    this.selectedSubscriber = value[i].SubscriberId;
                    if (this.selectedItemSet == false) {
                        this.selectedItem = value[i].SubscriberId + ", " + value[i].SubscriberName;
                        this.selectedItemSet = true;
                    }
                }

                item = new Subscriber(value[i].SubscriberId, value[i].SubscriberName);
                this._subscribers.push(item);
            }
            //}
        };
        //console.log(this._subscribers);
        /*
        this._subscribers.sort((a, b) => {
        if (a.name < b.name) return -1;
        else if (a.name > b.name) return 1;
        else return 0;
        });
        */
        //"SubscriberId": 1003,
        //"SubscriberName": "user name 1003"
    }

    get subscribers(): any {
        return this._subscribers;
    }

    /* */

    private _modules: Module[];
    
    set modules(value: any) {
        //this._subscribers = value;

        this._modules = [];

        let item: Module;

        if (value != undefined){
            this._modules = [];
            for (let i: number = 0; i < value.length; i++) {

                if (i == 0) {
                    this.selectedModule = value[i].ModuleId;
                    this.selectedMode = value[i].ModuleName;
                    
                }

                item = new Module(value[i].ModuleId, value[i].ModuleName);
                this._modules.push(item);
            }
            //}
        };
        //console.log(this._modules);
        /*
        this._subscribers.sort((a, b) => {
        if (a.name < b.name) return -1;
        else if (a.name > b.name) return 1;
        else return 0;
        });
        */
       //"ModuleId": 1,
       //"ModuleName": "Price Tracker"
    }

    get modules(): any {
        return this._modules;
    }

    /* */

    private _countries: Country[];
    
    set countries(value: any) {
        //this._subscribers = value;

        this._countries = [];

        let item: Country;

        if (value != undefined){
            this._countries = [];
            for (let i: number = 0; i < value.length; i++) {
              item = new Country(value[i].CountryId, value[i].CountryName, value[i].StateId);
              this._countries.push(item);
            }
            //}
        };
        //console.log(this._modules);
        /*
        this._subscribers.sort((a, b) => {
        if (a.name < b.name) return -1;
        else if (a.name > b.name) return 1;
        else return 0;
        });
        */
        //"CountryId": 101,
        //"CountryName": "Country 101"
    }

    get countries(): any {
        return this._countries;
    }
    //

    /* */

    private _categories: Category[];
    private allCategories: Category[];
    
    set categories(value: any) {
        //this._subscribers = value;

        this._categories = [];

        let item: Category;

        if (value != undefined){

            this._categories = [];
            this.allCategories = [];

            for (let i: number = 0; i < value.length; i++) {
                item = new Category(value[i].CategoryId, value[i].ParentId,
                    value[i].CategoryName, value[i].StateId, value[i].HierarchyLevel);
                    //console.log(value[i].HierarchyLevel);
                
                this.allCategories.push(item);

                if (item.level == 0) {
                    this._categories.push(item);
                }
            }

            //

            for (let i: number = 0; i < this.allCategories.length; i++) {

                let cat: Category = this.allCategories[i];
      
                for (let j: number = 0; j < this.allCategories.length; j++) {
      
                  let otherCat: Category = this.allCategories[j];
      
                  if (cat.parent == otherCat.id/* && item.parentName == otherItem.name*/) {
                    otherCat.children.push(cat);
                    //cat.children.push(otherCat);
                    //item.parent = otherCat;
                    //console.log(otherCat.id + " parent " + cat.id + " child ");
                    break;
                  }
      
                }
      
              }
            //}
        };
        //console.log(this._modules);
        /*
        this._subscribers.sort((a, b) => {
        if (a.name < b.name) return -1;
        else if (a.name > b.name) return 1;
        else return 0;
        });
        */
        //"CategoryId": 193506,
        //"ParentId": null,
        //"CategoryName": "category 193506",
        //"StateId": 0,
        //"HierarchyLevel": 0
    }

    setCategoryState(id: number, state: number)
    {

        for (let i: number = 0; i < this.allCategories.length; i++) {

            let cat: Category = this.allCategories[i];

            if (cat.id == id) {

                cat.state = state;

            }

        }

    }

    get categories(): any {
        return this._categories;
    }

    /* */

    private _permissions: Permission[];
    
    set permissions(value: any) {
        //this._subscribers = value;

        this._permissions = [];

        let item: Permission;

        if (value != undefined){
            this._permissions = [];
            for (let i: number = 0; i < value.length; i++) {
              item = new Permission(value[i].ModuleId, value[i].SubscriberId,
                value[i].CategoryId, value[i].CategoryName, value[i].CountryId,
                value[i].CountryName, value[i].StateId);
              this._permissions.push(item);
            }
            //}
        };
        //console.log(this._modules);
        /*
        this._subscribers.sort((a, b) => {
        if (a.name < b.name) return -1;
        else if (a.name > b.name) return 1;
        else return 0;
        });
        */
       //"ModuleId": 1,
       //"SubscriberId": -19,
       //"CategoryId": 193302,
       //"CategoryName": "category 193302",
       //"CountryId": 1,
       //"CountryName": "country 1",
       //"StateId": 1
    }

    get permissions(): any {
        return this._permissions;
    }

    //

    subscriberId: string/* = ""*/;
    subscriberName: string/* = ""*/;
    selectedItem: string;
    selectedMode: string;
    selectedItemSet: boolean = false;
    
}