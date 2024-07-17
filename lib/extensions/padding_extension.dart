import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

extension PaddingHelper on Widget {
  Padding get p25 => Padding(padding: const EdgeInsets.all(25), child: this);

  Padding get p16 => Padding(padding: const EdgeInsets.all(16), child: this);

  Padding get p8 => Padding(padding: const EdgeInsets.all(8), child: this);

  Padding get p4 => Padding(padding: const EdgeInsets.all(4), child: this);

  /// Set padding according to `value`
  Padding p(double value) =>
      Padding(padding: EdgeInsets.all(value), child: this);

  /// Horizontal Padding 16
  Padding get hP4 =>
      Padding(padding:  EdgeInsets.symmetric(horizontal: 4.w), child: this);

  Padding get hP8 =>
      Padding(padding:  EdgeInsets.symmetric(horizontal: 8.w), child: this);

  Padding get hP16 =>
      Padding(padding:  EdgeInsets.symmetric(horizontal: 16.w), child: this);

  Padding get hP25 =>
      Padding(padding:  EdgeInsets.symmetric(horizontal: 25.w), child: this);

  Padding hp(double value) =>
      Padding(padding: EdgeInsets.symmetric(horizontal: value.w), child: this);

  Padding get rP4 =>
      Padding(padding:  EdgeInsets.only(right: 4.w), child: this);

  Padding get rP8 =>
      Padding(padding:  EdgeInsets.only(right: 8.w), child: this);

  Padding get rP16 =>
      Padding(padding:  EdgeInsets.only(right: 16.w), child: this);

  Padding get rP25 =>
      Padding(padding:  EdgeInsets.only(right: 25.w), child: this);

  Padding rp(double value) =>
      Padding(padding: EdgeInsets.only(right: value.w), child: this);

  Padding get lP4 =>
      Padding(padding: EdgeInsets.only(left: 4.w), child: this);

  Padding get lP8 =>
      Padding(padding:  EdgeInsets.only(left: 8.w), child: this);

  Padding get lP16 =>
      Padding(padding:  EdgeInsets.only(left: 16.w), child: this);

  Padding get lP25 =>
      Padding(padding:  EdgeInsets.only(left: 25.w), child: this);

  Padding lp(double value) =>
      Padding(padding: EdgeInsets.only(left: value.w), child: this);

  Padding get tP4 =>
      Padding(padding:  EdgeInsets.only(top: 4.h), child: this);

  Padding get tP8 =>
      Padding(padding:  EdgeInsets.only(top: 8.h), child: this);

  Padding get tP16 =>
      Padding(padding:  EdgeInsets.only(top: 16.h), child: this);

  Padding get tP25 =>
      Padding(padding:  EdgeInsets.only(top: 25.h), child: this);

  Padding tp(double value) =>
      Padding(padding: EdgeInsets.only(top: value.h), child: this);

  Padding get bP4 =>
      Padding(padding:  EdgeInsets.only(bottom: 4.h), child: this);

  Padding get bP8 =>
      Padding(padding:  EdgeInsets.only(bottom: 8.h), child: this);

  Padding get bP16 =>
      Padding(padding:  EdgeInsets.only(bottom: 16.h), child: this);

  Padding get bP25 =>
      Padding(padding:  EdgeInsets.only(bottom: 25.h), child: this);

  Padding bp(double value) =>
      Padding(padding: EdgeInsets.only(bottom: value.h), child: this);

  Padding get vP25 =>
      Padding(padding:  EdgeInsets.symmetric(vertical: 25.h), child: this);

  Padding get vP16 =>
      Padding(padding:  EdgeInsets.symmetric(vertical: 16.h), child: this);

  Padding get vP8 =>
      Padding(padding:  EdgeInsets.symmetric(vertical: 8.h), child: this);

  Padding get vP4 =>
      Padding(padding:  EdgeInsets.symmetric(vertical: 4.h), child: this);

  Padding vp(double value) =>
      Padding(padding: EdgeInsets.symmetric(vertical: value.h), child: this);

  Padding setPadding(
          {double top = 0,
          double bottom = 0,
          double left = 0,
          double right = 0}) =>
      Padding(
          padding: EdgeInsets.only(
              top: top.h, bottom: bottom.h, right: right.w, left: left.w),
          child: this);
}