/// A discrete reading of the force of gravity acting on the device.
///
/// This is the gravity component of [AccelerometerEvent], as separated by the
/// platform. Adding a [GravityEvent] and a [UserAccelerometerEvent] taken at
/// the same time yields the corresponding [AccelerometerEvent].
class GravityEvent {
  /// Constructs an instance with the given [x], [y], and [z] values.
  GravityEvent(this.x, this.y, this.z, this.timestamp);

  /// Force of gravity along the x axis measured in m/s^2.
  ///
  /// When the device is held upright facing the user, this is close to 0.
  /// Positive values mean the device is tilted with its right edge up.
  final double x;

  /// Force of gravity along the y axis measured in m/s^2.
  ///
  /// When the device is held upright facing the user, this is close to 9.8.
  final double y;

  /// Force of gravity along the z axis measured in m/s^2.
  ///
  /// This uses a right-handed coordinate system. When the device is lying flat
  /// on a table screen up, this is close to 9.8.
  final double z;

  /// timestamp of the event
  ///
  /// This is the timestamp of the event in microseconds, as provided by the
  /// underlying platform. For Android, this is the timestamp in the event in
  /// nanoseconds from the `android.os.SystemClock.elapsedRealtimeNanos` API,
  /// and synchronized with SystemClock.uptimeMillis() to be in the same time.
  /// For iOS, this is the TimeInterval in the event synchronized with
  /// [NSDate timeIntervalSince1970] to be in the same time.

  final DateTime timestamp;

  @override
  String toString() =>
      '[GravityEvent (x: $x, y: $y, z: $z, timestamp: $timestamp)]';
}
