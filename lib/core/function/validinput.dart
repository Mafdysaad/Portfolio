validInput(String value, int max, int min, String type, {String? combering}) {
  if (type == 'username') {
    if (isUsername(value)) {
      return 'username not valid ';
    }
  }
  if (type == 'email') {
    if (value.isEmpty) {
      return 'It must not be empty';
    }
    if (isEmail(value)) {
      return 'email not valid';
    }
  }
  if (type == 'phone') {
    if (isPhoneNumber(value)) {
      return 'phone number not valid';
    }
  }
}

bool isUsername(String s) =>
    hasMatch(s, r'^[a-zA-Z0-9][a-zA-Z0-9_.]+[a-zA-Z0-9]$');

/// Checks if string is email.
bool isEmail(String s) => hasMatch(s,
    r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$');

/// Checks if string is phone number.
bool isPhoneNumber(String s) {
  if (s.length > 16 || s.length < 9) return false;
  return hasMatch(s, r'^[+]*[(]{0,1}[0-9]{1,4}[)]{0,1}[-\s\./0-9]*$');
}

bool hasMatch(String? value, String pattern) {
  return (value == null) ? false : RegExp(pattern).hasMatch(value);
}
