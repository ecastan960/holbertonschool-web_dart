int whoWins(Map<String, int> teamA, Map<String, int> teamB) {
  var numbA1 = teamA['Free throws'] ?? 0;
  var numbA2 = teamA['2 pointer'] ?? 0;
  var numbA3 = teamA['3 pointer'] ?? 0;
  numbA1 = numbA1 * 1;
  numbA2 = numbA2 * 2;
  numbA3 = numbA3 * 3;
  var numbA = numbA1 + numbA2 + numbA3;
  var numbB1 = teamB['Free throws'] ?? 0;
  var numbB2 = teamB['2 pointer'] ?? 0;
  var numbB3 = teamB['3 pointer'] ?? 0;
  numbB1 = numbB1 * 1;
  numbB2 = numbB2 * 2;
  numbB3 = numbB3 * 3;
  var numbB = numbB1 + numbB2 + numbB3;
  return numbA > numbB ? 1 : 2;
}