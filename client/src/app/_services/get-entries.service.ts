import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';

// const API_URL = 'http://localhost:8080/api/csv/download';
const API_URL = '/api/csv/download';


@Injectable({
  providedIn: 'root'
})
export class GetEntriesService {

  constructor(private _httpClient: HttpClient) { }

  public getEntries() {
    return this._httpClient.get(API_URL)

  }
 
}
