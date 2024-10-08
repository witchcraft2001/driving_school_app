// Flutter imports:
import 'package:flutter/material.dart';

class AppSpaces {
  AppSpaces._();

  static const double sp2 = 2.0;
  static const double sp4 = 4.0;
  static const double sp5 = 5.0;
  static const double sp6 = 6.0;
  static const double sp8 = 8.0;
  static const double sp12 = 12.0;
  static const double sp16 = 16.0;
  static const double sp20 = 20.0;
  static const double sp24 = 24.0;
  static const double sp32 = 32.0;
  static const double sp40 = 40.0;
  static const double sp48 = 48.0;
  static const double sp64 = 64.0;
  static const double sp76 = 76.0;

  static const pb4 = EdgeInsets.only(bottom: sp4);
  static const pb8 = EdgeInsets.only(bottom: sp8);
  static const pb12 = EdgeInsets.only(bottom: sp12);
  static const pb16 = EdgeInsets.only(bottom: sp16);
  static const pb24 = EdgeInsets.only(bottom: sp24);
  static const pb32 = EdgeInsets.only(bottom: sp32);

  static const pt4 = EdgeInsets.only(top: sp4);
  static const pt8 = EdgeInsets.only(top: sp8);
  static const pt16 = EdgeInsets.only(top: sp16);
  static const pt24 = EdgeInsets.only(top: sp24);
  static const pt32 = EdgeInsets.only(top: sp32);
  static const pt48 = EdgeInsets.only(top: sp48);
  static const pt64 = EdgeInsets.only(top: sp64);

  static const pt16b24 = EdgeInsets.only(top: sp16, bottom: sp24);

  static const pl4 = EdgeInsets.only(left: sp4);
  static const pl8 = EdgeInsets.only(left: sp8);
  static const pl16 = EdgeInsets.only(left: sp16);
  static const pl24 = EdgeInsets.only(left: sp24);
  static const pl32 = EdgeInsets.only(left: sp32);
  static const pl64 = EdgeInsets.only(left: sp64);

  static const pl8v8 = EdgeInsets.only(left: sp8, top: sp8, bottom: sp8);
  static const pl8pr24 = EdgeInsets.only(left: sp8, right: sp24);
  static const pl24t24 = EdgeInsets.only(left: sp24, top: sp24);

  static const pr4 = EdgeInsets.only(right: sp4);
  static const pr8 = EdgeInsets.only(right: sp8);
  static const pr16 = EdgeInsets.only(right: sp16);
  static const pr24 = EdgeInsets.only(right: sp24);
  static const pr32 = EdgeInsets.only(right: sp32);

  static const pr24b24 = EdgeInsets.only(bottom: sp24, right: sp24);

  static const ph8 = EdgeInsets.symmetric(horizontal: sp8);
  static const ph12 = EdgeInsets.symmetric(horizontal: sp12);
  static const ph16 = EdgeInsets.symmetric(horizontal: sp16);
  static const ph24 = EdgeInsets.symmetric(horizontal: sp24);
  static const ph48 = EdgeInsets.symmetric(horizontal: sp48);

  static const ph12t16b24 = EdgeInsets.fromLTRB(sp12, sp16, sp12, sp24);
  static const ph12b24 = EdgeInsets.fromLTRB(sp12, 0.0, sp12, sp24);
  static const ph16t16 = EdgeInsets.fromLTRB(sp16, sp16, sp16, 0.0);
  static const ph16t16b4 = EdgeInsets.fromLTRB(sp16, sp16, sp16, sp4);
  static const ph24t4b16 = EdgeInsets.fromLTRB(sp24, sp4, sp24, sp16);
  static const ph24t76 = EdgeInsets.fromLTRB(sp24, sp76, sp24, 0.0);
  static const ph40t40 = EdgeInsets.fromLTRB(sp40, sp40, sp40, 0.0);

  static const ph8v16 = EdgeInsets.symmetric(horizontal: sp8, vertical: sp16);
  static const ph12v4 = EdgeInsets.symmetric(horizontal: sp12, vertical: sp4);
  static const ph12v24 = EdgeInsets.symmetric(horizontal: sp12, vertical: sp24);

  static const ph16v4 = EdgeInsets.symmetric(horizontal: sp16, vertical: sp4);
  static const ph16v8 = EdgeInsets.symmetric(horizontal: sp16, vertical: sp8);
  static const ph16v12 = EdgeInsets.symmetric(horizontal: sp16, vertical: sp12);
  static const ph16v16 = EdgeInsets.symmetric(horizontal: sp16, vertical: sp16);
  static const ph16v48 = EdgeInsets.symmetric(horizontal: sp16, vertical: sp48);

  static const ph20v12 = EdgeInsets.symmetric(horizontal: sp20, vertical: sp12);

  static const ph24v12 = EdgeInsets.symmetric(horizontal: sp24, vertical: sp12);
  static const ph24t8 = EdgeInsets.fromLTRB(sp24, sp8, sp24, 0.0);

  static const pv4 = EdgeInsets.symmetric(vertical: sp4);
  static const pv8 = EdgeInsets.symmetric(vertical: sp8);
  static const pv12 = EdgeInsets.symmetric(vertical: sp12);
  static const pv16 = EdgeInsets.symmetric(vertical: sp16);
  static const pv24 = EdgeInsets.symmetric(vertical: sp24);
  static const pv32 = EdgeInsets.symmetric(vertical: sp32);
  static const pv48 = EdgeInsets.symmetric(vertical: sp48);

  static const p8 = EdgeInsets.all(sp8);
  static const p12 = EdgeInsets.all(sp12);
  static const p16 = EdgeInsets.all(sp16);
  static const p20 = EdgeInsets.all(sp20);
  static const p24 = EdgeInsets.all(sp24);
  static const p32 = EdgeInsets.all(sp32);
  static const p48 = EdgeInsets.all(sp48);
  static const p64 = EdgeInsets.all(sp64);
}
