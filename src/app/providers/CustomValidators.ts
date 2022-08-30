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

        // if (matchingControl?.errors && !matchingControl.errors.mustMatch) {
        //   return null;
        // }
  
        // // set error on matchingControl if validation fails
        if (password?.value !== confirmPassword?.value) {
            confirmPassword?.setErrors({ mustMatch: true });
        }
        return null;
    
      };
    }
  }