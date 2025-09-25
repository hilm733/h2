import 'package:flutter/material.dart';
import 'information_cor.dart';
import 'drawer.dart';
class Course {
  final int id;
  final String title;
  final String description;
  final String assetImagePath; // تغير من imageUrl إلى assetImagePath
  final String instructor;
  final String duration;
  final Color primaryColor;
  const Course({
    required this.id,
    required this.title,
    required this.description,
    required this.assetImagePath,
    required this.instructor,
    required this.duration,
    required this.primaryColor,
  });
}

// بيانات وهمية للدورات (مع مسارات الصور المحلية)
const List<Course> courses = [
  Course(
    id: 1,
    title: 'Flutter للمبتدئين',
    description:
    "تعلم كل انواع التقيم التقسيم وادارة الحالة وتعرف على انواع buttons والتنقل بين الواجهات وطرق انشائها ..",
    assetImagePath: 'PHOTO/C++.jpg',
    instructor: 'أ/ ياسين ',
    duration: '12 hours',
    primaryColor: Color(0xFF02569B),
  ),
  Course(
    id: 2,
    title: 'Advanced Dart',
    description:
    'Deep dive into Dart language features like mixins, isolates, async/await, and advanced concurrency patterns.',
    assetImagePath: 'PHOTO/dart.jpg',
    instructor: 'John Smith',
    duration: '8 hours',
    primaryColor: Color(0xFF0175C2),
  ),
  Course(
    id: 3,
    title: 'Python for Data Science',
    description:
    'Master data analysis using Python with popular libraries like Pandas, NumPy, Matplotlib, and scikit-learn.',
    assetImagePath: 'PHOTO/JAVA.jpg',
    instructor: 'Ali Hassan',
    duration: '15 hours',
    primaryColor: Color(0xFF306998),
  ),
  Course(
    id: 4,
    title: 'C# Masterclass',
    description:
    'Become proficient in C# and .NET development. Covers advanced topics like LINQ, async programming, and ASP.NET Core.',
    assetImagePath: 'PHOTO/python2.jpg',
    instructor: 'Mosh Hamedani',
    duration: '20 hours',
    primaryColor: Color(0xFF67217B),
  ),
];
class home extends StatelessWidget {
   home({super.key,required this.all});
   dynamic all;
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          // backgroundColor: Colors.white,
          title: Text("home"),
        ),
        drawer: drawerr(all: all),
        body: Container(
          ///
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListView.builder(
              itemCount: courses.length,
              itemBuilder: (context, index) {
                final course = courses[index];
                return GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>infor_Course(course: course)));

                  },
                  child: CourseCard(course: course),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
class CourseCard extends StatelessWidget {
  final Course course;
  const CourseCard({Key? key, required this.course}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final cu = Theme.of(context);

    return Card(
      color: cu.scaffoldBackgroundColor,
      margin: const EdgeInsets.symmetric(vertical: 10),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
      // elevation: 5,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            Container(
              width: 70,
              height: 70,
              decoration: BoxDecoration(
                // color: course.primaryColor,
                borderRadius: BorderRadius.circular(10),
              ),
              padding: const EdgeInsets.all(8),
              child: Image.asset(
                // استخدام Image.asset
                course.assetImagePath,
              ),
            ),
            SizedBox(width: 15),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    course.title,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                    // maxLines: 60,
                    // overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 5),
                  Text(course.instructor, style: const TextStyle(fontSize: 20)),
                  const SizedBox(height: 5),
                  Text(course.duration, style: const TextStyle(fontSize: 15)),
                ],
              ),
            ),
            const Icon(
              Icons.arrow_forward_ios,
              color: Colors.white54,
              size: 18,
            ),
          ],
        ),
      ),
    );
  }
}

