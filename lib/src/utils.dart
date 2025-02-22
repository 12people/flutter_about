/*
 * Copyright (C) 2019, David PHAM-VAN <dev.nfet.net@gmail.com>
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     https://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

// ignore_for_file: public_member_api_docs

import 'dart:core';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

export 'utils_vm.dart' if (dart.library.js) 'utils_js.dart';

String defaultApplicationVersion(BuildContext context) {
  return 'Version {{ version }}';
}

Widget? defaultApplicationIcon(BuildContext context) {
  return null;
}

bool isCupertino(BuildContext context) {
  final ct = CupertinoTheme.of(context);
  return ct is! MaterialBasedCupertinoThemeData;
}

ThemeData themeFromCupertino(CupertinoThemeData theme) {
  return ThemeData(
    brightness: theme.brightness,
    canvasColor: theme.barBackgroundColor,
    primaryColor: theme.primaryColor,
    // ignore: deprecated_member_use
    accentColor: theme.primaryContrastingColor,
  );
}
