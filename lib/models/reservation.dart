class Reservation {
  String destination;
  DateTime? date;
  int adultes;
  int enfants;
  int bebes;
  int animaux;

  Reservation({
    required this.destination,
    required this.date,
    required this.adultes,
    required this.enfants,
    required this.bebes,
    required this.animaux,
  });

  void setDestination(String destination) {
    this.destination = destination;
  }

  void setDateRange(DateTime? date) {
    this.date = date;
  }

  void setAdultes(int adultes) {
    this.adultes = adultes;
  }

  void setEnfants(int enfants) {
    this.enfants = enfants;
  }

  void setBebes(int bebes) {
    this.bebes = bebes;
  }

  int sommePersonne() {
    return adultes + enfants + bebes;
  }
}
