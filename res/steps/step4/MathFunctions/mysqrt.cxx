#include <stdio.h>
#include <math.h>

double mysqrt(double x)
{
  if (x <= 0) {
    return 0;
  }


  int result;
#if defined (HAVE_LOG) && defined (HAVE_EXP)
  return exp(log(x) * 0.5);
#else
  return exp(log(x) * 0.5);
#endif


}
