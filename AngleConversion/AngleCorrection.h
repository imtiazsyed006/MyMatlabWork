// Algorithm developed by Masroor Khan. Originally written in Matlab
// For LaunchXl F28379D I had to replace double with float
#ifndef ANGLECORRECTION_H_
#define ANGLECORRECTION_H_

typedef struct 
{
    double u;
    double ncount1;
    double rem1;
    double s1;
    double u1;
    double n1;
}dataStory;

extern double y;
extern double s;
extern double n;
extern double up;
extern double rem;
extern double ncount;

extern dataStory datastory;
extern void fcn(void);

#endif
//=====================================================================================================
// End of file
//=====================================================================================================
