
from tf.transformations import euler_from_quaternion
from math import pi


def sea_rpy_from_quaternion(q):
  r, p, y = euler_from_quaternion([ getattr(q, f) for f in q.__slots__ ])

  # Yaw must be transformed to clockwise from north.
  heading = (pi / 2) - y
  if heading < 0: heading += 2*pi

  # Roll as reported.
  roll = r

  # Sea convention has y axis pointing opposite direction, so pitch is negated.
  pitch = -p

  return roll, pitch, heading
