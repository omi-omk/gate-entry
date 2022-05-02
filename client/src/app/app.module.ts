import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';
import { FormsModule } from '@angular/forms';
import { HttpClientModule } from '@angular/common/http';
import { BrowserAnimationsModule } from '@angular/platform-browser/animations';

import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { AppHeadingComponent } from './app-heading/app-heading.component';
import { LoginComponent } from './login/login.component';
import { RegisterComponent } from './register/register.component';
import { HomeComponent } from './home/home.component';
import { AdminComponent } from './admin/admin.component';

import { InputFormComponent } from './input-form/input-form.component';
import { EntryDataService } from './_services/entry-data.service';
import { HeadingComponent } from './heading/heading.component';

import { authInterceptorProviders } from './_helpers/auth.interceptor';
import { DownloadPageComponent } from './download-page/download-page.component';
import { JsontocsvService } from './_services/jsontocsv.service';

@NgModule({
  declarations: [
    AppComponent,
    LoginComponent,
    RegisterComponent,
    HomeComponent,
    AppHeadingComponent,
    InputFormComponent,
    HeadingComponent,
    AdminComponent,
    DownloadPageComponent,
  ],
  imports: [
    BrowserModule,
    HttpClientModule,
    AppRoutingModule,
    FormsModule,
    BrowserAnimationsModule,
  ],
  providers: [authInterceptorProviders, EntryDataService, JsontocsvService],
  bootstrap: [AppComponent],
})
export class AppModule {}
