#include <stdio.h>
#include <math.h>

double mysqrt(double x)
{
  if (x <= 0) {
    return 0;
  }

  return exp(log(x) * 0.5);
}
