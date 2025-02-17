// Copyright 2013 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:ui';

/// Affect the quality of video recording and image capture:
///
/// A preset is treated as a target resolution, and exact values are not
/// guaranteed. Platform implementations may fall back to a higher or lower
/// resolution if a specific preset is not available.
class ResolutionPreset {
  const ResolutionPreset.custom(Size size) : this._(size);

  const ResolutionPreset._(this.size);

  final Size? size;

  /// ~240p
  static const ResolutionPreset low = ResolutionPreset._(Size(320, 240));

  /// ~480p
  static const ResolutionPreset medium = ResolutionPreset._(Size(720, 480));

  /// ~720p
  static const ResolutionPreset high = ResolutionPreset._(Size(1280, 720));

  /// ~1080p
  static const ResolutionPreset veryHigh = ResolutionPreset._(Size(1920, 1080));

  /// ~2160p
  static const ResolutionPreset ultraHigh = ResolutionPreset._(Size(3840, 2160));

  /// The highest resolution available.
  static const ResolutionPreset max = ResolutionPreset._(null);

  static const List<ResolutionPreset> values = <ResolutionPreset>[
    low,
    medium,
    high,
    veryHigh,
    ultraHigh,
    max
  ];
}
