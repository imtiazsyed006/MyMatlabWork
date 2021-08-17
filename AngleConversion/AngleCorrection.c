#include "stdint.h"
#include "AngleCorrection.h"
#include "math.h"

double b = 0;
double s_t = 0;
double n_t = 0;
double rem_t = 0;
double ncount_t = 0;
double error = 0;

double y;
double s;
double n;
double up;
double rem;
double ncount;

dataStory datastory;


// double u,double datastory.u1, double datastory.s1, double datastory.n1, double datastory.ncount1,double rem
void fcn(void)
{
    b = datastory.u1;
    s_t = datastory.s1;
    n_t = datastory.n1;
    rem_t = datastory.rem1;
    ncount_t = datastory.ncount1;
    error = datastory.u1 - datastory.u;
    if (error < (-250))
    {
        if (datastory.s1 == 0)
        {
            s_t = -1;
            b = datastory.u - 360;
            rem_t = 0;
        }
        else if (datastory.s1 == (-1))
        {
            n_t = datastory.n1 - 1;
            if (ncount_t > 0)
            {
                if (n_t <= 0)
                {
                    b = datastory.u;
                    rem_t = 1;
                }
                else if (n_t > 0)
                {
                    b = datastory.u;
                    rem_t = 0;
                }
            }
            else 
            {
                b = datastory.u - 360;
                rem_t = 0;
            }
        }
        else if (datastory.s1 == 1)
        {
            s_t = -1;
            if (datastory.n1 == 0)
            {
               b = datastory.u -360;
               
            }
            else if (datastory.n1 != 0)
            {
                n_t = datastory.n1 - 1;
                b = datastory.u;
                if (n_t == 0)
                {
                    rem_t = 1;
                }
                
            }
        }
    }
    else if (error > 250)
    {
        if (datastory.s1 == 0)
        {
            s_t = 1;
            n_t = datastory.n1+1;
            b = datastory.u;
            rem_t = 0;
            
        }
        else if (datastory.s1 == 1)
        {
            n_t = datastory.n1 + 1;
            b = datastory.u;
            
        }
        else if (datastory.s1 == -1)
        {
            s_t = 1;
            if (datastory.n1 == 1)
            {
              b = datastory.u;  
            }
            else if (datastory.n1 > 0)
            {
                n_t = datastory.n1 + 1;
                b = datastory.u;
            }
            else if (datastory.n1 < 0 && rem_t == 1)
            {
                n_t = datastory.n1 + 1;
                b = datastory.u;
            }
        }
    }

if (s_t == -1)
{
    if (n_t > 0 || rem_t > 0)
    {
        b = datastory.u;
    }
    else 
    {
        b = datastory.u - 360;
    }
}
else if ( s_t >= 0)
{
    b = datastory.u;
}

if (n_t > 0)
{
    ncount_t = 1;
}

y = b;
n = n_t;
s = s_t;
rem = rem_t;
up = datastory.u;
ncount = ncount_t;

}

