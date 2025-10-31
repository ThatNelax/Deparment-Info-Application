class Classroom{
  late String name;
  late String capacity;
  late String imagePath;

  Classroom({required this.name, required this.imagePath, required this.capacity});
  static final List<Classroom> classrooms = <Classroom>[
    Classroom(name: "Classroom 1", imagePath: "images/class1.jpg", capacity: "56"),
    Classroom(name: "Classroom 2", imagePath: "images/class2.jpg", capacity: "150"),
    Classroom(name: "Classroom 3", imagePath: "images/class3.jpg", capacity: "129"),
    Classroom(name: "Classroom 4", imagePath: "images/class4.jpg", capacity: "92"),
    Classroom(name: "Classroom 5", imagePath: "images/class5.jpg", capacity: "122"),
  ];
}