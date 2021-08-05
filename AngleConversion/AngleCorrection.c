#include "stdint.h"
#include "AngleCorrection.h"
#include "math.h"




double store[6] = {0,0,0,0,0,0};

double fcny(void)
{
    return store[0];
}
double fcns(void)
{
    return store[1];
}
double fcnn(void)
{
    return store[2];
}
double fcnup(void)
{
    return store[3];
}
double fcnrem(void)
{
    return store[4];
}
double fcnncount(void)
{
    return store[5];
}

double fcn(double u,double u1, double s1, double n1, double ncount1,double rem1)
{
    double b = u1;
    double s_t = s1;
    double n_t = n1;
    double rem_t = rem1;
    double ncount_t = ncount1;
    double error = u1 - u;
    if (error < (-250))
    {
        if (s1 == 0)
        {
            s_t = s1;
            b = u - 360;
            rem_t = 0;
        }
        else if (s1 == (-1))
        {
            n_t = n1 - 1;
            if (ncount_t > 0)
            {
                if (n_t <= 0)
                {
                    b = u;
                    rem_t = 1;
                }
                else if (n_t > 0)
                {
                    b = u;
                    rem_t = 0;
                }
            }
            else 
            {
                b = u - 360;
                rem_t = 0;
            }
        }
        else if (s1 == 1)
        {
            s_t = -1;
            if (n1 == 0)
            {
               b = u -360;
               
            }
            else if (n1 != 0)
            {
                n_t = n1 - 1;
                b = u;
                if (n_t == 0)
                {
                    rem_t = 1;
                }
                
            }
        }
    }
    else if (error > 250)
    {
        if (s1 == 0)
        {
            s_t = 1;
            n_t = n1+1;
            b = u;
            rem_t = 0;
            
        }
        else if (s1 == 1)
        {
            n_t = n1 + 1;
            b = u;
            
        }
        else if (s1 == -1)
        {
            s_t = 1;
            if (n1 == 1)
            {
              b = u;  
            }
            else if (n1 > 0)
            {
                n_t = n1 + 1;
                b = u;
            }
            else if (n1 < 0 && rem_t == 1)
            {
                n_t = n1 + 1;
                b = u;
            }
        }
    }

if (s_t == -1)
{
    if (n_t > 0 || rem_t > 0)
    {
        b = u;
    }
    else 
    {
        b = u - 360;
    }
}
else if ( s_t >= 0)
{
    b = u;
}

if (n_t > 0)
{
    ncount_t = 1;
}

double y = b;
double n = n_t;
double s = s_t;
double rem = rem_t;
double up = u;
double ncount = ncount_t;

store[0] = y;
store[1] = s;
store[2] = n;
store[3] = up;
store[4] = rem;
store[5] = ncount;
return n;
}

