// Copyright 2020 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

/// Discrete reading from an gravity accelerometer. Accelerometers measure the acceleration
/// of the device. Note that these readings only include the effects of gravity. Put
/// simply, you can use these accelerometer readings to determine the direction of gravity
/// which can be useful information on the orientation of the device.
class GravityAccelerometerEvent {
  /// Constructs an instance with the given [x], [y], and [z] values.
  GravityAccelerometerEvent(this.x, this.y, this.z, this.timestamp);

  /// Gravity acceleration force along the x axis measured in m/s^2.
  ///
  /// Positive values mean the right side of the device is towards gravity and
  /// negative mean the left side is towards gravity.
  final double x;

  /// Gravity acceleration force along the y axis measured in m/s^2.
  ///
  /// Positive values mean the bottom of the device is towards gravity (upright)
  /// and negative mean the top of the device is towards gravity (upside down).
  final double y;

  /// Gravity acceleration force along the z axis measured in m/s^2.
  ///
  /// Positive values mean the back of the device is towards gravity (screen up) and
  /// negative mean the front of the device is towards gravity (screen down).
  final double z;

  /// timestamp of the event
  ///
  /// This is the timestamp of the event in microseconds, as provided by the
  /// underlying platform. For Android, this is the uptimeMillis provided by
  /// the SensorEvent. For iOS, this is the timestamp provided by the CMDeviceMotion.

  final DateTime timestamp;

  @override
  String toString() => '[GravityAccelerometerEvent (x: $x, y: $y, z: $z, timestamp: $timestamp)]';
}
