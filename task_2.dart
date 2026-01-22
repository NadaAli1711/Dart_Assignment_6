class Person {
  String name;
  String address;
  Person({required this.name, required this.address});
  @override
  String toString(){
    return '$name($address)';
  }
}

class Student extends Person {
  int numCourses = 0;
  List<String> courses = [];
  List<int> grades = [];
  Student({required super.name, required super.address});
  @override
  String toString() {
    return 'Student: ${super.toString()}';
  }

  void addCourseGrade({required String course, required int grade}) {
    courses.add(course);
    grades.add(grade);
    numCourses++;
  }

  void printGrades() {
    if(courses.isEmpty) {
      print('No grades available');
      return;
    }
    for (int i = 0; i <grades.length;i++) {
      print('${courses[i]} : ${grades[i]}');
    }
  }

  double getAverageGrades() {
    if(grades.isEmpty)return 0;
    int total = 0;
    for (int grade in grades) {
      total += grade;
    }
    return total / grades.length ;
  }
}

class Teacher extends Person {
  int numCourses = 0;
  List<String> courses = [];

  Teacher({required super.name, required super.address});

  @override
  String toString() {
    return 'Teacher: ${super.toString()}';
  }

  bool addCourse({required String course}) {
    if (course.contains(course)) {
      return false;
    } else {
      numCourses++;
      courses.add(course);
      return true;
    }
  }

  bool removeCourse({required String course}) {
    if (course.contains(course)) {
      numCourses--;
      courses.remove(course);
      return true;
    } else {
      return false;
    }
  }

}
void main() {
  Student s1 = Student(name: 'nada', address: 'alex');
  print(s1.toString());
  s1.printGrades();
  print('Average of grades is ${s1.getAverageGrades()}');
  s1.addCourseGrade(course: 'math', grade: 100);
  s1.addCourseGrade(course: 'statistics', grade: 80);
  s1.printGrades();
  print('Average of grades is ${s1.getAverageGrades()}');
  print('====================================================');
  Teacher t1 = Teacher(name: 'mohamed', address: 'alex');
  print(t1.toString());
  print('course added: ${t1.addCourse(course: 'math')}');
  print('course removed : ${t1.removeCourse(course: 'math')}');
}
