import { Component, OnInit } from '@angular/core';
import { EntryDataService } from '../_services/entry-data.service';

@Component({
  selector: 'app-input-form',
  templateUrl: './input-form.component.html',
  styleUrls: ['./input-form.component.css'],
})
export class InputFormComponent implements OnInit {
  empno: String = '';
  public errorMessage: boolean = false;
  public successMessage: boolean = false;
  public entry: any;
  public empid: String = '';
  public errorMessageText: string = '';
  public successMessageText: string = '';
  constructor(private _service: EntryDataService) {}

  ngOnInit(): void {}
  inSubmit() {
    this._service.checkEmp(this.empno).subscribe(
      (res: any) => {
        this.empid = res.empid;
        console.log(this.empid);
        this._service.checkEntries(this.empid).subscribe(
          (res: any) => {
            if (res.currentdate !== 'undefined') {
              this.successMessage = false;
              this.errorMessageText = this.empno + ' is already IN';
              this.errorMessage = true;
            } else {
              this._service.in(this.empid).subscribe((res: any) => {
                this.entry = res;
                // console.log(res);
                this.errorMessage = false;
                this.successMessageText =
                  this.empno +
                  ' is IN at ' +
                  new Date().getHours() +
                  ':' +
                  ((new Date().getMinutes() < 10 ? '0' : '') +
                    new Date().getMinutes());
                this.successMessage = true;
              });
            }
          },
          (err: any) => {
            this._service.checkEmp(this.empno).subscribe(
              (res:any) => {
                // console.log(res);
                this.empid = res.empid;
    
                this._service.in(this.empid).subscribe((res: any) => {
                  this.entry = res;
                  // console.log(res);
                  this.errorMessage = false;
                  this.successMessageText =
                    this.empno +
                    ' is IN at ' +
                    new Date().getHours() +
                    ':' +
                    ((new Date().getMinutes() < 10 ? '0' : '') +
                      new Date().getMinutes());
                  this.successMessage = true;
                },
                (err:any)=>{
                this.errorMessageText = this.empno + ' does not exist';
                this.errorMessage = true;
                });
                
              },
              (err:any) => {
                this.errorMessageText = this.empno + ' does not exist';
                this.errorMessage = true;
              }
            )
            
          }
        );
      },
      (err: any) => {
        console.log("NOt found ID");
        this.errorMessageText = this.empno + ' does not exist';
        this.errorMessage = true;
      }
    )
    
  }
  outSubmit(): void {
    this._service.checkEmp(this.empno).subscribe(
      (res:any) => {
        this.empid = res.empid;
        this._service.checkEntries(this.empid).subscribe((res: any) => {
          if (res === undefined) {
            // alert(this.empno + " IN record is not present");
            this.successMessage = false;
            this.errorMessageText = this.empno + ' IN record is not present';
            this.errorMessage = true;
          } else {
            if (res.outtime == null) {
              this._service.out(this.empid).subscribe((res: any) => {
                this.entry = res;
                this.errorMessage = false;
                this.successMessageText =
                  this.empno +
                  ' is OUT at ' +
                  new Date().getHours() +
                  ':' +
                  ((new Date().getMinutes() < 10 ? '0' : '') +
                    new Date().getMinutes());
                this.successMessage = true;
              });
            } else {
              // alert(this.empno + " already out");
              this._service.out(this.empid).subscribe((res: any) => {
                this.entry = res;
                this.errorMessage = false;
                this.successMessageText =
                  this.empno +
                  ' previos OUT entry is already present. New OUT time is ' +
                  new Date().getHours() +
                  ':' +
                  ((new Date().getMinutes() < 10 ? '0' : '') +
                    new Date().getMinutes());
                this.successMessage = true;
              });
            }
          }
        });
      },
      (err:any) => {
        this.successMessage = false;
        this.errorMessageText = this.empno + ' does not exist';
        this.errorMessage = true;
      }
    )
    
  }
}
