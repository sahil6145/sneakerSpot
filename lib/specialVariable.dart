import 'package:sneaker_spot/pages/Home.dart';
import 'package:flutter/material.dart';
import 'package:sneaker_spot/pages/shoes.dart';

import 'consts.dart';

enum Button {
  login,
  sign_in,
}

enum Card_categgory { All, Runninng, Formal, Jordens, Sneakers }

enum FootwareType { SHOES, JORDANS, FLIPFLOP, CROPS, SNEKERS }

class Functions {
  Color all = inActiveColour;

  Color Running = inActiveColour;

  Color Jordens = inActiveColour;

  Color Formal = inActiveColour;

  Color Sneakers = inActiveColour;

  void updateButtonColor(Card_categgory selectedButton) {
    if (selectedButton == Card_categgory.Runninng) {
      if (Running == inActiveColour) {
        all = inActiveColour;
        Running = activeColour;
        Sneakers = inActiveColour;
        Formal = inActiveColour;
        Jordens = inActiveColour;
      } else {
        Running = inActiveColour;
      }
    } else if (selectedButton == Card_categgory.All) {
      if (selectedButton == Card_categgory.All) {
        all = activeColour;
        Running = inActiveColour;
        Sneakers = inActiveColour;
        Formal = inActiveColour;
        Jordens = inActiveColour;
      } else {
        all = inActiveColour;
      }
    } else if (selectedButton == Card_categgory.Formal) {
      if (selectedButton == Card_categgory.Formal) {
        all = inActiveColour;
        Running = inActiveColour;
        Sneakers = inActiveColour;
        Formal = activeColour;
        Jordens = inActiveColour;
      } else {
        Formal = inActiveColour;
      }
    } else if (selectedButton == Card_categgory.Jordens) {
      if (selectedButton == Card_categgory.Jordens) {
        all = inActiveColour;
        Running = inActiveColour;
        Sneakers = inActiveColour;
        Formal = inActiveColour;
        Jordens = activeColour;
      } else {
        Jordens = inActiveColour;
      }
    } else {
      if (selectedButton == Card_categgory.Sneakers) {
        all = inActiveColour;
        Running = inActiveColour;
        Sneakers = activeColour;
        Formal = inActiveColour;
        Jordens = inActiveColour;
      } else {
        Sneakers = inActiveColour;
      }
    }
  }

  Color Shoes = inActiveColour;

  Color Jordans = inActiveColour;

  Color flipflop = inActiveColour;

  Color crops = inActiveColour;

  Color snekers = inActiveColour;

  void updateFootwareButton(FootwareType selectedButton) {
    if (selectedButton == FootwareType.SHOES) {
      if (Shoes == inActiveColour) {
        Shoes = activeColour;
        Jordans = inActiveColour;
        snekers = inActiveColour;
        flipflop = inActiveColour;
        crops = inActiveColour;
      } else {
        Shoes = inActiveColour;
      }
    }
    if (selectedButton == FootwareType.SNEKERS) {
      if (Shoes == inActiveColour) {
        Shoes = inActiveColour;
        Jordans = inActiveColour;
        snekers = activeColour;
        flipflop = inActiveColour;
        crops = inActiveColour;
      } else {
        snekers = inActiveColour;
      }
    }
    if (selectedButton == FootwareType.JORDANS) {
      if (Shoes == inActiveColour) {
        Shoes = inActiveColour;
        Jordans = activeColour;
        snekers = inActiveColour;
        flipflop = inActiveColour;
        crops = inActiveColour;
      } else {
        Jordans = inActiveColour;
      }
    }
    if (selectedButton == FootwareType.FLIPFLOP) {
      if (flipflop == inActiveColour) {
        Shoes = inActiveColour;
        Jordans = inActiveColour;
        snekers = inActiveColour;
        flipflop = activeColour;
        crops = inActiveColour;
      } else {
        flipflop = inActiveColour;
      }
    }
    if (selectedButton == FootwareType.CROPS) {
      if (crops == inActiveColour) {
        Shoes = inActiveColour;
        Jordans = inActiveColour;
        snekers = inActiveColour;
        flipflop = inActiveColour;
        crops = activeColour;
      } else {
        crops = inActiveColour;
      }
    }
  }
}
