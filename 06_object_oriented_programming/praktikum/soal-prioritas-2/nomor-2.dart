class Students {
  var students = {'nama': 'Joko Widada', 'kelas': 'A', 'course': 'Flutter'};
}

class Course {
  var courses = {
    'judul': ['Flutter', 'Golang', 'Node JS'],
    'deskripsi': ['Belajar Flutter', 'Belajar Golang', 'Belajar Node JS'],
  };

  void tambahCourse(String judul, String deskripsi) {
    courses['judul']?.add(judul);
    courses['deskripsi']?.add(deskripsi);
    print(courses);
  }

  void tampilCourse() {
    print(courses);
  }

  void hapusCourse() {
    courses.clear();
    print(courses);
  }
}

void main() {
  Course c = new Course();

  print(' ');
  c.tampilCourse();
  c.tambahCourse('UI/UX', 'Belajar UI/UX');
  c.hapusCourse();
  print(' ');
}
