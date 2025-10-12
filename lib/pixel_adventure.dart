import 'dart:async';

import 'package:flame/components.dart';
import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'package:pixel_adventure_learn/levels/level.dart';

class PixelAdventure extends FlameGame {
  late CameraComponent cam;
  final world = Level(levelName: 'level_01');

  @override
  Color backgroundColor() => Color(0xFF211F30);

  @override
  FutureOr<void> onLoad() async {
    //loading all images into cache
    await images.loadAllImages();

    cam = CameraComponent.withFixedResolution(
      world: world,
      width: 640,
      height: 360,
    );
    cam.viewfinder.anchor = Anchor.topLeft;
    addAll([cam, world]);
    return super.onLoad();
  }
}
