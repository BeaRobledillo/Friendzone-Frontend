import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';
import { AuthService } from '../../../services/auth.service';
import { FormControl, FormGroup, Validators } from '@angular/forms';
import { CustomValidators } from 'src/app/providers/CustomValidators';

@Component({
  selector: 'app-header-landing',
  templateUrl: './header-landing.component.html',
  styleUrls: ['./header-landing.component.css']
})
export class HeaderLandingComponent implements OnInit {

  isSuccessful = false;
  isSignUpFailed = false;
  errorMessage = '';

  success = '';
  registerForm = new FormGroup(
    {
      username: new FormControl('', [Validators.required]),
      name: new FormControl('', [Validators.required]),
      email: new FormControl('', [Validators.required, Validators.email]),
      password: new FormControl('', [
        Validators.required,
        Validators.minLength(6)
      ]),
      confirmPassword: new FormControl('', [Validators.required])
    },

    CustomValidators.confirmPassword()
  );

  submitted = false;

  constructor(private authService: AuthService, private router:Router) { }

  get f() {
    return this.registerForm.controls;
  }

  onSubmit() {
    this.submitted = true;

    if (this.registerForm.invalid) {
      console.log('Formulario invalido');
      return;
    }
  const { username, name, email, password } = this.registerForm.value;
    this.authService.register(username, name, email, password).subscribe(
      data => {
        console.log(data);
        this.isSuccessful = true;
        this.isSignUpFailed = false;
        
      },
      err => {
        this.errorMessage = err.error.message;
        this.isSignUpFailed = true; 
      })
    }
    

  ngOnInit(): void {
  }

}
