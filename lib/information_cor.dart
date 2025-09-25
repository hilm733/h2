import 'package:flutter/material.dart';
import 'home.dart';
class infor_Course extends StatelessWidget {
  final Course course;
  const infor_Course({super.key, required this.course});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios,),
            onPressed: () {},
          ),
        ),
        body:Container(

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  // الصورة
                  Container(
                    height: 300,
                    child: Center(
                      child: Image.asset(
                        // استخدام Image.asset
                        course.assetImagePath,
                        height: 100,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    left: 20,
                    right: 16,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          course.title,
                          style: const TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 5),
                        Text(
                          'المعلم: ${course.instructor} • المدة: ${course.duration}',
                          style: const TextStyle(
                            fontSize: 18,
                          ),
                        ),

                      ],
                    ),
                  ),
                ],
              ),

              Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Column(

                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'نبذة عن الدورة:',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      course.description,
                      style: const TextStyle(
                        fontSize: 20,
                        height: 1.5,
                      ),
                    ),
                    const SizedBox(height: 30),
                    ElevatedButton(
                      onPressed: () {
                      },
                      child: const Text('ابدأ الدورة'),
                    ),
                  ],
                ),
              ),

            ],
          ),
        )
    );
  }
}