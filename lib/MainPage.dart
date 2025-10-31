import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'Classroom.dart';
import 'Teacher.dart';

class Mainpage extends StatefulWidget {
  const Mainpage({super.key});

  @override
  State<Mainpage> createState() => _MainpageState();
}

class _MainpageState extends State<Mainpage> {
  void makePhoneCall(String number) async {
    final Uri url = Uri.parse("tel:$number");
    if (!await launchUrl(url, mode: LaunchMode.externalApplication)) {
      throw Exception('Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Theme.of(context).colorScheme.primary,
            bottom: const TabBar(
              tabs: [
                Tab(icon: Icon(Icons.info_outline_rounded)),
                Tab(icon: Icon(Icons.people_alt_rounded)),
                Tab(icon: Icon(Icons.class_rounded)),
              ],
            ),
            title: Text(
              'Department Application',
              style: TextStyle(color: Theme.of(context).colorScheme.onPrimary),
            ),
            centerTitle: true,
          ),
          body: TabBarView(
            children: [
              SingleChildScrollView(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 20),
                    Text(
                      "About the Department",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Theme.of(context).colorScheme.onSurface,
                      ),
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      "The Department of Computer Engineering at Eskişehir Technical University (ESTU) "
                          "was established in 2018 within the Faculty of Engineering. Despite being a young department, "
                          "it builds upon the strong academic foundation of Eskişehir’s long-standing engineering education tradition. "
                          "The program aims to train engineers who can design, develop, and manage modern computing systems "
                          "by combining solid theoretical knowledge with hands-on experience.",
                      style: TextStyle(fontSize: 15, height: 1.4),
                    ),
                    const SizedBox(height: 16),
                    Text(
                      "Academic Staff",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Theme.of(context).colorScheme.onBackground,
                      ),
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      "• 3 Professors\n"
                          "• 2 Associate Professors\n"
                          "• 5 Assistant Professors\n"
                          "• 6 Research Assistants\n\n"
                          "The department’s academic staff actively conduct research in fields such as artificial intelligence, "
                          "machine learning, computer vision, embedded systems, and software engineering.",
                      style: TextStyle(fontSize: 15, height: 1.5),
                    ),
                    const SizedBox(height: 16),
                    Text(
                      "Facilities & Laboratories",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Theme.of(context).colorScheme.onBackground,
                      ),
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      "The department offers access to modern computer laboratories, project development rooms, "
                          "and specialized research facilities. Students can also participate in applied projects through "
                          "the ESTU Technology Transfer Office and the Computer Engineering Student Society.",
                      style: TextStyle(fontSize: 15, height: 1.4),
                    ),
                    const SizedBox(height: 16),
                    Text(
                      "Education & Curriculum",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Theme.of(context).colorScheme.onBackground,
                      ),
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      "The undergraduate program lasts four years and includes core courses such as programming, "
                          "data structures, algorithms, database systems, computer networks, and artificial intelligence. "
                          "Students also gain experience through internships and senior design projects in collaboration with industry partners.",
                      style: TextStyle(fontSize: 15, height: 1.4),
                    ),
                    const SizedBox(height: 16),
                    Text(
                      "Vision & Mission",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Theme.of(context).colorScheme.onBackground,
                      ),
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      "The vision of the Computer Engineering Department is to become a nationally and internationally "
                          "recognized center for education and research in computing technologies. Its mission is to train "
                          "creative, ethical, and competent engineers who contribute to technological development and society.",
                      style: TextStyle(fontSize: 15, height: 1.4),
                    ),
                    const SizedBox(height: 20),
                    Text(
                      "Contact Information",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Theme.of(context).colorScheme.onBackground,
                      ),
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      "Department of Computer Engineering\n"
                          "Faculty of Engineering, Eskişehir Technical University\n"
                          "26555 Eskişehir, Turkey\n"
                          "Phone: +90 (222) 321 35 50 (Ext: 7600)\n"
                          "E-mail: bilgisayar@eskisehir.edu.tr\n"
                          "Website: https://mf.eskisehir.edu.tr/tr/Icerik/Detay/bilgisayar-muhendisligi",
                      style: TextStyle(fontSize: 15, height: 1.4),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 8,
                  vertical: 10,
                ),
                child: ListView.builder(
                  itemCount: Teacher.teachers.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Card(
                      margin: const EdgeInsets.symmetric(
                        vertical: 8,
                        horizontal: 4,
                      ),
                      elevation: 4,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                      color: Theme.of(context).colorScheme.secondaryContainer,
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(12),
                              child: Image.asset(
                                Teacher.teachers[index].imagePath,
                                height: 90,
                                width: 90,
                                fit: BoxFit.cover,
                              ),
                            ),
                            const SizedBox(width: 12),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    Teacher.teachers[index].name,
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Theme.of(
                                        context,
                                      ).colorScheme.onSecondaryContainer,
                                    ),
                                  ),
                                  const SizedBox(height: 4),
                                  Text(
                                    Teacher.teachers[index].mail,
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onSecondaryContainer
                                          .withOpacity(0.8),
                                    ),
                                  ),
                                  const SizedBox(height: 4),
                                  Text(
                                    Teacher.teachers[index].phoneNumber,
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onSecondaryContainer
                                          .withOpacity(0.8),
                                    ),
                                  ),
                                  const SizedBox(height: 8),
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: FilledButton.icon(
                                      onPressed: () => makePhoneCall(
                                        Teacher.teachers[index].phoneNumber,
                                      ),
                                      icon: const Icon(Icons.phone, size: 18),
                                      label: const Text(
                                        "CALL",
                                        style: TextStyle(fontSize: 16),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 8,
                  vertical: 10,
                ),
                child: ListView.builder(
                  itemCount: Classroom.classrooms.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Card(
                      margin: const EdgeInsets.symmetric(
                        vertical: 8,
                        horizontal: 4,
                      ),
                      elevation: 4,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                      color: Theme.of(context).colorScheme.secondaryContainer,
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(12),
                              child: Image.asset(
                                Classroom.classrooms[index].imagePath,
                                height: 90,
                                width: 90,
                                fit: BoxFit.cover,
                              ),
                            ),
                            const SizedBox(width: 12),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    Classroom.classrooms[index].name,
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Theme.of(
                                        context,
                                      ).colorScheme.onSecondaryContainer,
                                    ),
                                  ),
                                  const SizedBox(height: 4),
                                  Text(
                                    "Capacity : ${Classroom.classrooms[index].capacity}",
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onSecondaryContainer
                                          .withOpacity(0.8),
                                    ),
                                  ),
                                  const SizedBox(height: 4),
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: FilledButton.icon(
                                      onPressed: () => showDialog(
                                        context: context,
                                        builder: (context) => AlertDialog(
                                          content: Image.asset(
                                            Classroom
                                                .classrooms[index]
                                                .imagePath,
                                            width: MediaQuery.maybeWidthOf(
                                              context,
                                            ),
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      icon: const Icon(Icons.photo, size: 18),
                                      label: const Text(
                                        "Open",
                                        style: TextStyle(fontSize: 16),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
