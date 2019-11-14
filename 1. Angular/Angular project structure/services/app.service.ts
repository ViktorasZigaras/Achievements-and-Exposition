import { Injector } from '@angular/core';
import { BaseService } from './base.service';
import { Injectable } from '@angular/core';
import { Response, Headers, URLSearchParams, Http } from '@angular/http';
//import { Observable } from 'rxjs/Rx';
import { Observable, Subject } from 'rxjs';
import { map } from 'rxjs/operators';
import { RequestOptions } from '@angular/http';
//import 'rxjs/add/operator/map';
import { AppModel } from '../models/app.model';

@Injectable()
export class AppService extends BaseService {
    constructor(injector: Injector) {
        super(injector.get(Http), injector.get(AppModel));
    }


    getSubscribers(): Observable<Response> {
        let params: URLSearchParams = this.params;
        return this.http.post(this.serviceUrl + 'App/GetSubscriberList', params)
            .pipe(map((x) => x.json()));
    }

    getModules(): Observable<Response> {
        let params: URLSearchParams = this.params;
        return this.http.post(this.serviceUrl + 'App/GetModuleList', params)
            .pipe(map((x) => x.json()));
    }

    getCountries(moduleId:string, subscriberId:string): Observable<Response> {
        let params: URLSearchParams = this.params;
        params.set('ModuleId', moduleId);
        params.set('SubscriberId', subscriberId);
        return this.http.post(this.serviceUrl + 'App/GetCountryList', params)
           .pipe(map((x) => x.json()));
    }

    getCategories(moduleId:string, subscriberId:string): Observable<Response> {
        let params: URLSearchParams = this.params;
        params.set('ModuleId', moduleId);
        params.set('SubscriberId', subscriberId);
        return this.http.post(this.serviceUrl + 'App/GetCategoryList', params)
            .pipe(map((x) => x.json()));
    }

    getPermissions(moduleId:string, subscriberId:string): Observable<Response> {
        let params: URLSearchParams = this.params;
        params.set('ModuleId', moduleId);
        params.set('SubscriberId', subscriberId);
        return this.http.post(this.serviceUrl + 'App/GetPermissions', params)
            .pipe(map((x) => x.json()));
    }

    //

    addCountries(moduleId:string, subscriberId:string, countryId: string): Observable<Response> {
        let params: URLSearchParams = this.params;
        params.set('ModuleId', moduleId);
        params.set('SubscriberId', subscriberId);
        params.set('CountryId', countryId);
        return this.http.post(this.serviceUrl + 'App/AddSingleCountryPermissions', params)
            .pipe(map((x) => x.json()));
    }
    
    removeCountries(moduleId:string, subscriberId:string, countryId: string): Observable<Response> {
        let params: URLSearchParams = this.params;
        params.set('ModuleId', moduleId);
        params.set('SubscriberId', subscriberId);
        params.set('CountryId', countryId);
        return this.http.post(this.serviceUrl + 'App/RemoveSingleCountryPermissions', params)
            .pipe(map((x) => x.json()));
    }

    addAllCountries(moduleId:string, subscriberId:string): Observable<Response> {
        let params: URLSearchParams = this.params;
        params.set('ModuleId', moduleId);
        params.set('SubscriberId', subscriberId);
        return this.http.post(this.serviceUrl + 'App/AddAllCountryPermissions', params)
            .pipe(map((x) => x.json()));
    }

    removeAllCountries(moduleId:string, subscriberId:string): Observable<Response> {
        let params: URLSearchParams = this.params;
        params.set('ModuleId', moduleId);
        params.set('SubscriberId', subscriberId);
        return this.http.post(this.serviceUrl + 'App/RemoveAllCountryPermissions', params)
            .pipe(map((x) => x.json()));
    }

    //

    addCategories(moduleId:string, subscriberId:string, categoryId: string): Observable<Response> {
        let params: URLSearchParams = this.params;
        params.set('ModuleId', moduleId);
        params.set('SubscriberId', subscriberId);
        params.set('CategoryId', categoryId);
        return this.http.post(this.serviceUrl + 'App/AddSingleCategoryPermissions', params)
            .pipe(map((x) => x.json()));
    }
    
    removeCategories(moduleId:string, subscriberId:string, categoryId: string): Observable<Response> {
        let params: URLSearchParams = this.params;
        params.set('ModuleId', moduleId);
        params.set('SubscriberId', subscriberId);
        params.set('CategoryId', categoryId);
        return this.http.post(this.serviceUrl + 'App/RemoveSingleCategoryPermissions', params)
            .pipe(map((x) => x.json()));
    }

    addAllCategories(moduleId:string, subscriberId:string): Observable<Response> {
        let params: URLSearchParams = this.params;
        params.set('ModuleId', moduleId);
        params.set('SubscriberId', subscriberId);
        return this.http.post(this.serviceUrl + 'App/AddAllCategoryPermissions', params)
            .pipe(map((x) => x.json()));
    }

    removeAllCategories(moduleId:string, subscriberId:string): Observable<Response> {
        let params: URLSearchParams = this.params;
        params.set('ModuleId', moduleId);
        params.set('SubscriberId', subscriberId);
        return this.http.post(this.serviceUrl + 'App/RemoveAllCategoryPermissions', params)
            .pipe(map((x) => x.json()));
    }

    //

    //

    addPermissions(moduleId:string, subscriberId:string, categoryId: string, countryId: string): Observable<Response> {
        let params: URLSearchParams = this.params;
        params.set('ModuleId', moduleId);
        params.set('SubscriberId', subscriberId);
        params.set('CategoryId', categoryId);
        params.set('CountryId', countryId);
        return this.http.post(this.serviceUrl + 'App/AddSinglePermissions', params)
            .pipe(map((x) => x.json()));
    }
    
    removePermissions(moduleId:string, subscriberId:string, categoryId: string, countryId: string): Observable<Response> {
        let params: URLSearchParams = this.params;
        params.set('ModuleId', moduleId);
        params.set('SubscriberId', subscriberId);
        params.set('CategoryId', categoryId);
        params.set('CountryId', countryId);
        return this.http.post(this.serviceUrl + 'App/RemoveSinglePermissions', params)
            .pipe(map((x) => x.json()));
    }

    addAllPermissions(moduleId:string, subscriberId:string): Observable<Response> {
        let params: URLSearchParams = this.params;
        params.set('ModuleId', moduleId);
        params.set('SubscriberId', subscriberId);
        return this.http.post(this.serviceUrl + 'App/AddAllScopePermissions', params)
            .pipe(map((x) => x.json()));
    }

    removeAllPermissions(moduleId:string, subscriberId:string): Observable<Response> {
        let params: URLSearchParams = this.params;
        params.set('ModuleId', moduleId);
        params.set('SubscriberId', subscriberId);
        return this.http.post(this.serviceUrl + 'App/RemoveAllPermissions', params)
            .pipe(map((x) => x.json()));
    }

    //

    addAllAllPermissions(moduleId:string, subscriberId:string): Observable<Response> {
        let params: URLSearchParams = this.params;
        params.set('ModuleId', moduleId);
        params.set('SubscriberId', subscriberId);
        return this.http.post(this.serviceUrl + 'App/AddAllPermissions', params)
            .pipe(map((x) => x.json()));
    }

    //

    addSubscriber(subscriberId:string, subscriberName:string): Observable<Response> {
        let params: URLSearchParams = this.params;
        params.set('SubscriberId', subscriberId);
        params.set('SubscriberName', subscriberName);
        return this.http.post(this.serviceUrl + 'App/SetSubscriberPermissions', params)
            .pipe(map((x) => x.json()));
    }
    
    removeSubscriber(subscriberId:string): Observable<Response> {
        let params: URLSearchParams = this.params;
        params.set('SubscriberId', subscriberId);
        //console.log(subscriberId + " sent");
        return this.http.post(this.serviceUrl + 'App/RemoveSubscriberPermissions', params)
            .pipe(map((x) => x.json()));
    }

}