import '9-palindrome.dart';

String longestPalindrome(String s) {
  var string = s.split("");
  var found = false;
  var pal ;
  for (int i = 0; i < string.length - 3; i++) {
    if (string[i] == string[string.length - 1]) {
      pal = string.sublist(i);
      found = true;
    }
  }
  if (!found) {
    for (int j = string.length - 1; j >= 2; j--) {
      // print(string[0]);
      // print(string[j]);
      // print('------');
      if (string[0] == string[j]) {
        pal = string.getRange(0,j+1);
        // print(pal);
        // print('****');
        found = true;
      }
    }
  }
  if (!found) return 'none';
  var result = isPalindrome(pal.join());
  return result ? pal.join() : 'none';

}