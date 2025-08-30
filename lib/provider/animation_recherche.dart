import 'package:airbnb/models/reservation.dart';
import 'package:flutter/material.dart';

class AnimationRecherche extends ChangeNotifier {
  List<bool> focus = [true, false, false];
  bool whereFocus = false;
  Reservation? reservation = Reservation(
    animaux: 0,
    destination: "",
    date: DateTime.now(),
    adultes: 0,
    enfants: 0,
    bebes: 0,
  );

  void setWhereFocus(bool whereFocus) {
    this.whereFocus = whereFocus;
    notifyListeners();
  }

  void addAdultes() {
    reservation!.adultes++;
    notifyListeners();
  }

  void addBebes() {
    reservation!.bebes++;
    notifyListeners();
  }

  void addEnfants() {
    reservation!.enfants++;
    notifyListeners();
  }

  void addAnimaux() {
    reservation!.animaux++;
    notifyListeners();
  }

  void diminueAdultes() {
    reservation!.adultes--;
    notifyListeners();
  }

  void diminueBebes() {
    reservation!.bebes--;
    notifyListeners();
  }

  void diminueEnfants() {
    reservation!.enfants--;
    notifyListeners();
  }

  void diminueAnimaux() {
    reservation!.animaux--;
    notifyListeners();
  }

  void setReservation(Reservation reservation) {
    this.reservation = reservation;
    notifyListeners();
  }

  void setWhereInReservation(String destination) {
    reservation!.setDestination(destination);
    notifyListeners();
  }

  void setDateRangeInReservation(DateTime date) {
    reservation!.setDateRange(date);
    notifyListeners();
  }

  void activeFirst() {
    focus = [true, false, false];
    notifyListeners();
  }

  void activeSecond() {
    focus = [false, true, false];
    whereFocus = false;
    notifyListeners();
  }

  void activeThrid() {
    focus = [false, false, true];
    whereFocus = false;
    notifyListeners();
  }
}
