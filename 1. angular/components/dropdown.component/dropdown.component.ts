import { Component, Input, Output } from '@angular/core';
import { AppModel } from '../../models/app.model';
import { AppService } from '../../services/app.service';
  
@Component({
    selector: 'dropdown',
    template: `
      
    <mat-form-field *ngIf="this.mode">
      <mat-select  
        [(ngModel)]="this.appModel.selectedItem"
        [compareWith]="compareIds"
        #a (change)="select(a.value)" panelClass="height-20">
        <mat-option *ngFor="let item of values" class="cursor" [value]="item.id" 
          (click)="select(item.id)" ng-selected="true">
          {{item.id}}, {{item.name}}
        </mat-option>
      </mat-select>
    </mat-form-field>

    <mat-form-field *ngIf="!this.mode">
      <mat-select 
        [(ngModel)]="this.appModel.selectedMode"
        [compareWith]="compareIds" 
        #a (change)="select(a.value)" panelClass="height-20">
        <mat-option *ngFor="let item of values"  class="height-20" class="cursor" [value]="item.id"
          (click)="select(item.id)">
          {{item.name}}
        </mat-option>
      </mat-select>
    </mat-form-field>

    `,
    styleUrls: ['./styles/dropdown.component.sass']
})

//[(placeholder)]="this.appModel.selectedItem"
//[(placeholder)]="this.appModel.selectedMode"

export class DropdownComponent {

    compareIds(item: any): string {
      /*if (id.constructor.name === 'array' && id.length > 0) {
        return '' + id[0];
      }*/
      return item;
    }

    myObj1: {value: null};
    myObj2: {value: null};

    @Input()
    values: any[];

    @Input()
    mode: boolean;
    //<ul class="left-dropdown"> </ul>
  
    //@Input()
    //value: string[];
  
    //@Output()
    //valueChange: EventEmitter;
  
    constructor(private appModel: AppModel, private appService: AppService) {
      //this.valueChange = new EventEmitter();
    }
  
    select(value: number) {
      
      if (this.mode) {
        this.appModel.selectedSubscriber = value;
        this.appModel.selectedItem = "";
        console.log("sub " + value);
      }
      else {
        this.appModel.selectedModule = value;
        this.appModel.selectedMode = "";
        console.log("mod " + value);
      }

      //
      
      this.appService.getCountries(
        this.appModel.selectedModule.toString(),
        this.appModel.selectedSubscriber.toString()
      ).subscribe((x: any) => {
            
        //console.log(x);
        this.appModel.countries = x;

        this.appService.getCategories(
          this.appModel.selectedModule.toString(),
          this.appModel.selectedSubscriber.toString()
        ).subscribe((x: any) => {
              
          //console.log(x);
          this.appModel.categories = x;

          //

          this.appService.getPermissions(
            this.appModel.selectedModule.toString(),
            this.appModel.selectedSubscriber.toString()
          ).subscribe((x: any) => {
                  
            //console.log(x);
            this.appModel.permissions = x;
      
          })
  
        })

      })

      //

      console.log(value);
    }

}