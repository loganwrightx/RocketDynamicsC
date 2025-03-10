#ifndef QUATERNION_H
#define QUATERNION_H

#include <vector>

class Quaternion {
public:
  Quaternion();
  Quaternion(double angle, double axis[3]);
  Quaternion(double w, double x, double y, double z);
  ~Quaternion();

  Quaternion conj();

private:
  double _w, _x, _y, _z;
};

Quaternion hamiltonProduct(Quaternion q1, Quaternion q2);

#endif