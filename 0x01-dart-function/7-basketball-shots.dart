int whoWins(Map<String, int> teamA, Map<String, int> teamB) {
  int numbA = (teamA['Free throws'] ?? 0) +
      (teamA['2 pointers'] ?? 0) * 2 +
      (teamA['3 pointers'] ?? 0) * 3;
  int numbB = (teamB['Free throws'] ?? 0) +
      (teamB['2 pointers'] ?? 0) * 2 +
      (teamB['3 pointers'] ?? 0) * 3;
  if (numbA == numbB) return 0;
  return numbA > numbB ? 1 : 2;
}
