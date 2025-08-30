import 'package:airbnb/models/reservation.dart';
import 'package:flutter/material.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

class AnimationRecherche extends ChangeNotifier {
  List<bool> focus = [true, false, false];
  bool whereFocus = false;
  Reservation? reservation = Reservation(
    animaux: 0,
    destination: "",
    date: ShadDateTimeRange(),
    adultes: 0,
    enfants: 0,
    bebes: 0,
  );

  void setWhereFocus(bool whereFocus) {
    this.whereFocus = whereFocus;
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

  void setDateRangeInReservation(ShadDateTimeRange date) {
    reservation!.setDateRange(date);
    notifyListeners();
  }

  void activeFirst() {
    focus = [true, false, false];
    notifyListeners();
  }

  void activeSecond() {
    focus = [false, true, false];
    notifyListeners();
  }

  void activeThrid() {
    focus = [false, false, true];
    notifyListeners();
  }
}
