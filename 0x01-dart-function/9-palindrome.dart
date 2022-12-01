bool isPalindrome(String s) {
  var string = s.split("");
  if (string.length <= 2) return false;
  for (int i = 0; i < string.length / 2; i++) {
    if (string[i] != string[string.length - (i + 1)]) return false;
  }
  return true;
}
