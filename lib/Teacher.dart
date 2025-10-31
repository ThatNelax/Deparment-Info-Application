class Teacher{
  late String name;
  late String mail;
  late String phoneNumber;
  late String imagePath;
  
  Teacher({required this.name, required this.mail, required this.phoneNumber, required this.imagePath});
 
  static final List<Teacher> teachers = <Teacher>[
    Teacher(
      name: "Prof.Dr. Aziz SANCAR",
      mail: "azizsancar@eskisehir.edu.tr",
      phoneNumber: "+90 (216) 541 23 53",
      imagePath: "images/azizsancar.jpg",
    ),
    Teacher(
      name: "Prof. Neil deGrasse TYSON",
      mail: "neildegrassetyson@eskisehir.edu.tr",
      phoneNumber: "+90 (312) 234 54 23",
      imagePath: "images/neildegrassetyson.jpg",
    ),
    Teacher(
      name: "Dr. Richard FEYNMAN",
      mail: "richardfeynman@eskisehir.edu.tr",
      phoneNumber: "+90 (123) 874 98 42",
      imagePath: "images/richardfeynman.png",
    ),
    Teacher(
      name: "Ord. Leonardo da VINCI",
      mail: "leonardodavinci@floransa.edu.tr",
      phoneNumber: "+90 (839) 273 98 12",
      imagePath: "images/leonardodavinci.png",
    )
  ];
}