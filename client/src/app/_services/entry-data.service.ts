import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';

// const API_URL = 'http://localhost:8080/api/entry/';
const API_URL = '/api/entry/';

@Injectable({
  providedIn: 'root',
})
export class EntryDataService {
  constructor(private _httpClient: HttpClient) {}

  public checkEntries(empid: String): any {
    return this._httpClient.get(API_URL + empid);
  }
  
  public checkEmp(empno: String): any {
    return this._httpClient.get(API_URL + 'emp/' + empno);
  }

  public in(empno: any): any {
    const entryData = {
      empno: empno,
      currentdate: new Date().toISOString().slice(0, 10),
      intime:
        new Date().getHours() +
        ':' +
        new Date().getMinutes() +
        ':' +
        new Date().getSeconds(),
      outtime: '20:00:00',
    };
    return this._httpClient.post(API_URL + 'in', entryData);
  }
  public out(empno: any): any {
    const entryData = {
      empno: empno,
      currentdate: new Date().toISOString().slice(0, 10),
      outtime:
        new Date().getHours() +
        ':' +
        new Date().getMinutes() +
        ':' +
        new Date().getSeconds(),
    };
    return this._httpClient.put(API_URL + 'out', entryData);
  }
}
