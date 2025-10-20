import 'package:flutter/material.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;
import 'package:step_progress_indicator/step_progress_indicator.dart';

class Ava extends StatelessWidget {
  const Ava({
    super.key,
    required this.stories,
    required this.ava,
    required this.status,
    // this.onPressed,
  });

  final List stories;
  final String status;
  final String ava;

  // final VoidCallback? onPressed;
  @override
  Widget build(BuildContext context) {
    var counter = 0;
    return stories.isEmpty
        ? status != ""
            ? Stack(children: [
                Positioned(
                  bottom: 2,
                  right: 2,
                  child: Container(
                    width: 100,
                    height: 100,
                    color: Colors.white,
                  ),
                ),
                CircleAvatar(
                  backgroundImage: NetworkImage(ava),
                  maxRadius: 30,
                ),
              ])
            : CircleAvatar(
                backgroundImage: NetworkImage(ava),
                maxRadius: 30,
              )
        : status == ""
            ? CircularStepProgressIndicator(
                totalSteps: stories.length,
                stepSize: 4,
                currentStep: stories.where((story) => story[1]).length,
                selectedColor: Colors.blue,
                unselectedColor: Colors.grey,
                roundedCap: (_, __) => true,
                width: 60,
                height: 60,
                gradientColor: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [Colors.greenAccent, Colors.blueAccent],
                ),
                child: CircleAvatar(
                  backgroundImage: NetworkImage(ava),
                  maxRadius: 15,
                ))
            : Stack(
                children: [
                  CircularStepProgressIndicator(
                      totalSteps: stories.length,
                      stepSize: 4,
                      currentStep: stories.where((story) => story[1]).length,
                      selectedColor: Colors.blue,
                      unselectedColor: Colors.grey,
                      roundedCap: (_, __) => true,
                      width: 60,
                      height: 60,
                      gradientColor: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [Colors.greenAccent, Colors.blueAccent],
                      ),
                      child: CircleAvatar(
                        backgroundImage: NetworkImage(ava),
                        maxRadius: 15,
                      )),
                  Positioned(
                    bottom: 2,
                    right: 2,
                    child: Container(
                      width: 20,
                      height: 20,
                      color: Colors.white,
                    ),
                  )
                ],
              );
  }
}

@widgetbook.UseCase(
  name: 'With stories',
  type: Ava,
)
Ava withStories(BuildContext context) {
  return Ava(
    stories: [
      [
        Icons.tag_faces,
        false,
      ],
      [
        Icons.tag_faces,
        false,
      ],
      [
        Icons.tag_faces,
        false,
      ]
    ],
    ava: "https://picsum.photos/250?image=9",
    status: "voice",
    // onPressed: () {},
  );
}

@widgetbook.UseCase(
  name: 'No stories',
  type: Ava,
)
Ava noStories(BuildContext context) {
  return const Ava(
    stories: [],
    ava: "https://picsum.photos/250?image=9",
    status: "",
  );
}

@widgetbook.UseCase(
  name: 'withStatus',
  type: Ava,
)
Ava withStatus(BuildContext context) {
  return const Ava(
    stories: [],
    ava: "https://picsum.photos/250?image=9",
    status: "voice",
  );
}
