class ValidationMixin {
  String validatEmail(String value) {
        if(!value.contains('@')){
          // return error message
          return 'Please enter a valid email';
        } 

        return null;
      }

  String validatPassword(String value) {
        if(value.length < 4){
          // return error message
          return 'Please must be at least 4 character';
        } 
        return null;

      }
}