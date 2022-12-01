String longestUniqueSubstring(String str) {
  var string = str.split("");
  var s1 = string.toSet();
  var s2 = '';
  for (int i = 0; i < s1.length; i++) {
    s2 = s2 + s1.elementAt(i);
  }
  return s2;
}