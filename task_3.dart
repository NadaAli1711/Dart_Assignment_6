abstract class Shape {
  String color;
  Shape({required this.color});
  double getArea();
  // we may not write toString here as it inherit from Object class and has no meaning to write it without change it
  @override
  String toString() {
    return 'Shape color is $color';
  }
}

class Rectangle extends Shape {
  int length;
  int width;
  Rectangle({required super.color, required this.length, required this.width});
  @override
  double getArea() {
    return (length * width).toDouble();
  }

  @override
  String toString() {
    return 'Rectangle color is $color , the width is $width and the length is $length';
  }
}

class Triangle extends Shape {
  int base;
  int height;
  Triangle({required super.color, required this.base, required this.height});
  @override
  double getArea() {
    return 0.5 * base * height;
  }

  @override
  String toString() {
    return 'Rectangle color is $color , the base is $base and the height is $height';
  }
}

void main(){
  Rectangle r1 = Rectangle(color: 'red', length: 5, width: 5);
  print('Area of Rectangle is ${r1.getArea()}');
  print(r1.toString());
  print('======================================');
  Triangle t1 = Triangle(color: 'red', base: 5, height: 5);
  print('Area of Triangle is ${t1.getArea()}');
  print(t1.toString());
}
