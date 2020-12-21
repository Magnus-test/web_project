function check_passwords_identity(input) {
    if (input.value != document.querySelector("#user_password").value) 
      input.setCustomValidity(input.dataset.message);
    else 
      input.setCustomValidity('');
}
  