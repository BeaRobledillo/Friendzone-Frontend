import {
    AbstractControl,
    ValidatorFn,
    FormControl,
    FormGroup,
    ValidationErrors
  } from '@angular/forms';
  
  export class CustomValidators {
    constructor() {}
  
    
    static confirmPassword(): ValidatorFn {
      return (formGroup: AbstractControl): ValidationErrors | null => {
        const password = formGroup.get('password');
        const confirmPassword = formGroup.get('confirmPassword');

        if (password?.value !== confirmPassword?.value) {
            confirmPassword?.setErrors({ mustMatch: true });
        }
        return null;
    
      };
    }
  }