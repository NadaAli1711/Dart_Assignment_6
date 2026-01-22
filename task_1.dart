import 'dart:math';

class GeometricObject {
  late String color;
  late bool filled;
  GeometricObject({required this.color, required this.filled});
  GeometricObject.init() {
    color = 'white';
    filled = false;
  }
  @override
  String toString() {
    return 'Object color is $color and ${filled ? 'is filled' : 'is not filled'} with the color';
  }
}

class Triangle extends GeometricObject {
  late double side1;
  late double side2;
  late double side3;
  Triangle({required this.side1, required this.side2, required this.side3})
    : super.init();
  Triangle.init() : super.init() {
    side1 = 1.0;
    side2 = 1.0;
    side3 = 1.0;
  }
  double getPerimeter() {
    return side1 + side2 + side3;
  }

  double getArea() {
    double halfPerimeter = 0.5 * getPerimeter();
    return sqrt(
      halfPerimeter *
          (halfPerimeter - side1) *
          (halfPerimeter - side2) *
          (halfPerimeter - side3),
    );
  }

  @override
  String toString() {
    return 'Triangle : Side1 = $side1, Side2 = $side2, Side3 = $side3';
  }
}

class Rectangle extends GeometricObject {
  late double height;
  late double width;
  Rectangle.init() : super.init() {
    width = 1.0;
    height = 1.0;
  }
  Rectangle({
    required super.color,
    required super.filled,
    required this.width,
    required this.height,
  });
  double getPerimeter() {
    return 2 * (width + height);
  }

  double getArea() {
    return width * height;
  }

  @override
  String toString() {
    return 'Rectangle : height = $height, width = $width';
  }
}

void main() {
  Triangle t1 = Triangle(side1: 5, side2: 5, side3: 5);
  print(t1.toString());
  print('Area of Triangle is ${t1.getArea()}');
  print('Perimeter of Triangle is ${t1.getPerimeter()}');
  print('==============================================');
  Rectangle r1 = Rectangle(width: 5, height: 5, color: 'red', filled: true);
  print(r1.toString());
  print('Area of Rectangle is ${r1.getArea()}');
  print('Perimeter of Rectangle is ${r1.getPerimeter()}');
}
