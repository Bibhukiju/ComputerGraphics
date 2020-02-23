import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
class Examples extends StatelessWidget {
  static String _brasenhams='''
# __Brasenhams__
#include<iostream>
#include<graphics.h>
using namespace std;

void drawline(int x0, int y0, int x1, int y1)
{
    int dx, dy, p, x, y
	dx=x1-x0;
	dy=y1-y0;
	x=x0;
	y=y0;
	p=2*dy-dx;
	for(int i =x0;i<=x1;i++)
	{
		if(p>=0)
		{
			putpixel(i,y,7);
			y=y+1;
			p+=2*dy-2*dx;
		}
		else
		{
			putpixel(i,y,7);
			p+=2*dy;
		}
	}
}

int main()
{
    int x0, x1, y0,y1;
    initwindow(1000,1000);
	cout<<"Enter co-ordinates of first point: ";
	cin>>x0>>y0;
	cout<<"Enter co-ordinates of second point: ";
	cin>>x1>>y1;
	drawline(x0, y0, x1, y1);
	outtextxy(10,10,"Bishal Gautam");
    getch();
	return 0;
}

  
''';
  static String _DDA='''
# __DDA line__ 
#include<stdio.h>
#include<graphics.h>
#Function for finding absolute value
int abs (int n)
{
	return ( (n>0) ? n : ( n * (-1)));
}

void DDA(int X0, int Y0, int X1, int Y1)
{
	int dx = X1 - X0;
	int dy = Y1 - Y0;
	int steps = abs(dx) > abs(dy) ? abs(dx) : abs(dy);
	float Xinc = dx / (float) steps;
	float Yinc = dy / (float) steps;
	float X = X0;
	float Y = Y0;
	for (int i = 0; i <= steps; i++)
	{
		putpixel (X,Y,WHITE);
		X += Xinc;
		Y += Yinc;
	}
}

# Driver program
int main()
{
    initwindow(800,800);
	DDA(200,400,650,590);
	outtextxy(280,150,"Chetan");
	getch();
	return 0;
}

  
''';
  static  String _floodfill='''
# __Floodfill algorithm__
#include <iostream>
#include<graphics.h>

using namespace std;
void floodFill(int x,int y,int oldcolor,int newcolor)
{
	if(getpixel(x,y) == oldcolor)
	{
		putpixel(x,y,newcolor);
		floodFill(x+1,y,oldcolor,newcolor);
		floodFill(x,y+1,oldcolor,newcolor);
		floodFill(x-1,y,oldcolor,newcolor);
		floodFill(x,y-1,oldcolor,newcolor);
	}
}


int main()
{
    initwindow(1000,1000);
    arc(200,200,0,180,40);
    arc(280,200,0,180,40);
    line(160,200,240,300);
    line(320,200,240,300);
    floodFill(319,200,BLACK,RED);
    getch();
}

''';
  static String _mpca='''
# __Midpoint Circle Drawing Algorithm__
#include<iostream>
#include<graphics.h>

using namespace std;

void drawcircle(int x0, int y0, int radius)
{
    int x = radius;
    int y = 0;
    int err = 0;
    while (x >= y)
    {
	putpixel(x0 + x, y0 + y,7);
	putpixel(x0 + y, y0 + x, 7);
	putpixel(x0 - y, y0 + x,7);
	putpixel(x0 - x, y0 + y, 7);
	putpixel(x0 - x, y0 - y, 7);
	putpixel(x0 - y, y0 - x, 7);
	putpixel(x0 + y, y0 - x, 7);
	putpixel(x0 + x, y0 - y, 7);
	if (err <= 0)
	{
	    y += 1;
	    err += 2*y + 1;
	}
	if (err > 0)
	{
	    x -= 1;
	    err -= 2*x + 1;
	}
	delay(50);
    }
}
int main()
{
	int error, x, y, r;
	initwindow(1000,1000);
	cout<<"Enter radius of circle: ";
	cin>>r;
	cout<<"Enter co-ordinates of center(x and y): ";
	cin>>x>>y;
	drawcircle(x, y, r);
	outtextxy(x-20,y,"Bishal Gautam");
	getch();
	return 0;
![Image](https://media.geeksforgeeks.org/wp-content/uploads/c2-1.png)
}
''';

  static String _program='''
#  __Triangle using DDA line__
#include<stdio.h>
#include<graphics.h>
#Function for finding absolute value
int abs (int n)
{
	return ( (n>0) ? n : ( n * (-1)));
}
void DDA(int X0, int Y0, int X1, int Y1)
{
	int dx = X1 - X0;
	int dy = Y1 - Y0;
	int steps = abs(dx) > abs(dy) ? abs(dx) : abs(dy);
	float Xinc = dx / (float) steps;
	float Yinc = dy / (float) steps;
	float X = X0;
	float Y = Y0;
	for (int i = 0; i <= steps; i++)
	{
		putpixel (X,Y,WHITE);
		X += Xinc;
		Y += Yinc;
	}
}
Driver program
int main()
{
    initwindow(800,800);
	DDA(200,200,350,190);
	DDA(350,190,340,70);
	DDA(340, 70,200,200);
	outtextxy(280,150,"Chetan");
	getch();
	return 0;
} 
# _Output_
![Image](https://media.geeksforgeeks.org/wp-content/uploads/Screenshot-from-2017-05-04-102133.png)
''';

  @override
  final _Pages=<Widget>[
    Center(
      child: Markdown(
        data: _brasenhams,
      ),
    ),
    Center(
      child: Markdown(
        data: _DDA,
      ),
    ),
    Center(
      child: Markdown(
        data: _floodfill,
      ),
    ),
    Center(
      child: Markdown(
        data: _mpca,
      ),
    ),
    Center(
      child: Markdown(
        data: _program,
      ),
    ),
  ];
  final _ktabs=<Tab>[
    Tab(text: "Brasenhams",),
    Tab(text: "DDA",),
    Tab(text: "FloodFill",),
    Tab(text: "Midpoint Circle Drawing Algorithm",),
    Tab(text: "Triangle with DDA",)
  ];
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Programs"),
          bottom: TabBar(
            tabs: _ktabs,
            isScrollable: true,
            indicatorColor: Colors.green.shade800,
            indicatorWeight: 5,
          ),
        ),
        body: TabBarView(
          children: _Pages,
        ),
      ),
    );
  }
}
