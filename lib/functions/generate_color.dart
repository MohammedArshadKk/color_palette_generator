import 'dart:io';

import 'package:flutter/material.dart';
import 'package:palette_generator/palette_generator.dart';

Future<List<Color>> generateColor(File imageFile) async {
  final PaletteGenerator generator = await PaletteGenerator.fromImageProvider(
    FileImage(imageFile),
    maximumColorCount: 15,
  );
  return generator.colors.toList();
}
