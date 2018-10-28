import { PerfectScrollbarModule } from './components/perfect.scrollbar/perfect-scrollbar.module';
import { PerfectScrollbarConfigInterface } from './components/perfect.scrollbar/perfect-scrollbar.interfaces';
import { AppService } from './services/app.service';
import { AppModel } from './models/app.model';
import { DashboardComponent } from './components/dashboard.component/dashboard.component';
import { DropdownComponent } from './components/dropdown.component/dropdown.component';
import { CountryListComponent } from './components/country.list.component/country.list.component';
import { CountryListItemComponent } from './components/country.list.component/country.list.item.component';
import { CategoryListComponent } from './components/category.list.component/category.list.component';
import { CategoryListItemComponent } from './components/category.list.component/category.list.item.component';
import { PermissionListComponent } from './components/permission.list.component/permission.list.component';
import { PermissionListItemComponent } from './components/permission.list.component/permission.list.item.component';
import { LazyLoadModule } from '@greg-md/ng-lazy-load';

const PERFECT_SCROLLBAR_CONFIG: PerfectScrollbarConfigInterface = {
  suppressScrollX: false
};

import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';
import { AppComponent } from './app.component';
import { HttpModule } from '@angular/http';
import { InterfaceComponent } from './interface/interface.component';
import { RoutingModule } from './routing.module';
import { OpenIDGuard } from './open-id.guard';
import { CallbackComponent } from './callback/callback.component';
import { AuthService } from './auth.service';
import { BrowserAnimationsModule } from '@angular/platform-browser/animations';
import { CdkTableModule } from '@angular/cdk/table';
import { HttpClientModule } from '@angular/common/http';
import { FormsModule, ReactiveFormsModule } from '@angular/forms';
import { platformBrowserDynamic } from '@angular/platform-browser-dynamic';
import {
  MatAutocompleteModule,
  MatBadgeModule,
  MatBottomSheetModule,
  MatButtonModule,
  MatButtonToggleModule,
  MatCardModule,
  MatCheckboxModule,
  MatChipsModule,
  MatDatepickerModule,
  MatDialogModule,
  MatDividerModule,
  MatExpansionModule,
  MatGridListModule,
  MatIconModule,
  MatInputModule,
  MatListModule,
  MatMenuModule,
  MatNativeDateModule,
  MatPaginatorModule,
  MatProgressBarModule,
  MatProgressSpinnerModule,
  MatRadioModule,
  MatRippleModule,
  MatSelectModule,
  MatSidenavModule,
  MatSliderModule,
  MatSlideToggleModule,
  MatSnackBarModule,
  MatSortModule,
  MatStepperModule,
  MatTableModule,
  MatTabsModule,
  MatToolbarModule,
  MatTooltipModule,
  MatTreeModule,
} from '@angular/material';

import { NgxChartsModule } from '@swimlane/ngx-charts';

@NgModule({
  declarations: [
    AppComponent,
    CallbackComponent,
    InterfaceComponent,
    DashboardComponent,
    DropdownComponent,
    CountryListComponent,
    CountryListItemComponent,
    CategoryListComponent,
    CategoryListItemComponent,
    PermissionListComponent,
    PermissionListItemComponent
  ],
  imports: [
    MatAutocompleteModule,
    MatBadgeModule,
    MatBottomSheetModule,
    MatButtonModule,
    MatButtonToggleModule,
    MatCardModule,
    MatCheckboxModule,
    MatChipsModule,
    MatStepperModule,
    MatDatepickerModule,
    MatDialogModule,
    MatDividerModule,
    MatExpansionModule,
    MatGridListModule,
    MatIconModule,
    MatInputModule,
    MatListModule,
    MatMenuModule,
    MatNativeDateModule,
    MatPaginatorModule,
    MatProgressBarModule,
    MatProgressSpinnerModule,
    MatRadioModule,
    MatRippleModule,
    MatSelectModule,
    MatSidenavModule,
    MatSliderModule,
    MatSlideToggleModule,
    MatSnackBarModule,
    MatSortModule,
    MatTableModule,
    MatTabsModule,
    MatToolbarModule,
    MatTooltipModule,
    MatTreeModule,
    BrowserAnimationsModule,
    BrowserModule,
    RoutingModule,
    HttpModule,
    FormsModule,
    HttpClientModule,
    ReactiveFormsModule,

    LazyLoadModule,
    PerfectScrollbarModule.forRoot(PERFECT_SCROLLBAR_CONFIG),

    NgxChartsModule

  ],
  providers: [
    AuthService,
    OpenIDGuard,
    AppService,
    AppModel,
  ],
  bootstrap: [AppComponent]
})
export class AppModule { }
