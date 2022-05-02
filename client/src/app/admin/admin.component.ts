import { HttpClient } from '@angular/common/http';
import { Component, OnInit } from '@angular/core';
import { UserService } from '../_services/user.service';
import { GetEntriesService } from '../_services/get-entries.service';
import { JsontocsvService } from '../_services/jsontocsv.service';

@Component({
  selector: 'app-admin',
  templateUrl: './admin.component.html',
  styleUrls: ['./admin.component.css']
})
export class AdminComponent implements OnInit {
  content?: string;

  constructor(private userService: UserService, private _service: GetEntriesService, private service: JsontocsvService) { }

  ngOnInit(): void {
    let entries = [];

    this.userService.getAdminBoard().subscribe({
      next: data => {
        this.content = data;
      },
      error: err => {
        this.content = JSON.parse(err.error).message;
      }
    });
  }
  // getReport()
  // {
  //   window.open('http://localhost:8080/api/csv/download');
    
  // }
  public errorMessage: boolean = false;
  public errorMessageText: string = '';

  getReport() {
    this._service.getEntries().subscribe({
      next: (res) =>  {
          this.service.downloadFile(res, 'entries');
      },
      complete: () => { },
      error: (err) => {
        this.errorMessageText = "No entries present for today";
          this.errorMessage = true;
      }
    });

  }
  
}
