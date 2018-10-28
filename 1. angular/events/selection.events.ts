import { EventEmitter } from '@angular/core';
//import { SelectionData } from '../vo/selection.data';
/*
export class SelectionData {

    constructor(public id: number, public selection: boolean) {

    }
}*/

export class SelectionEvent //extends EventEmitter<SelectionData>
{
    constructor() {
        //super();
    }

    static readonly FEATURES: number = 1;
    static readonly ADVANCED_FEATURES: number = 2;
    static readonly BRANDS: number = 3;
}