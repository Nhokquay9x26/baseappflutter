
class Validations {
  static String validationUsername(String username) {
    if (username == null) {
//      return tr("error.auth_input_username");
    }

    return null;
  }

  static String validationPassword(String password) {
    if (password == null) {
//      return tr("error.auth_input_password");
    }

    if (password.length < 6) {
//      return tr("error.auth_password_min_6_char");
    }

    return null;
  }
}
