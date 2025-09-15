import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    const String title = "Simple UI in Flutter";
    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(title: const Text(title)),
        body: const Padding(
          padding: EdgeInsets.all(8),
          child: Column(
            children: [
              Column(
                children: [
                  ImageNetwork(
                    alt: "network owl image",
                    img:
                        "https://media.istockphoto.com/id/1726264350/de/foto/vogelbeobachtung-von-waldohreulen-von-einem-kiefernzweig-in-einem-geheimnisvollen-wald-aus.webp?s=1024x1024&w=is&k=20&c=yCJn99tlasrzQ2HjP5HwQa7AR8kt7cx_jde16gs_eLo=",
                  ),
                  TitleSection(
                    topic: "Owl Photo",
                    description: "Taken in the US forest",
                  ),
                  TitleSection(topic: "Date", description: "2025-09-15"),
                ],
              ),
              Column(
                children: [
                  ImageSection(image: 'images/forest.jpeg'),
                  TitleSection(
                    topic: "Forest Photo",
                    description: "Taken in the Russian forest",
                  ),
                  TitleSection(topic: "Date", description: "2025-08-15"),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TitleSection extends StatelessWidget {
  const TitleSection({
    super.key,
    required this.topic,
    required this.description,
  });
  final String topic;
  final String description;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(topic, style: TextStyle(color: Colors.red[500])),
        Padding(padding: EdgeInsets.all(16.0)),
        Text(description, style: TextStyle(color: Colors.black)),
      ],
    );
  }
}

class ImageNetwork extends StatelessWidget {
  const ImageNetwork({super.key, required this.alt, required this.img});
  final String alt;
  final String img;
  @override
  Widget build(BuildContext context) {
    return Image(image: NetworkImage(img));
  }
}

class ImageSection extends StatelessWidget {
  const ImageSection({super.key, required this.image});

  final String image;

  @override
  Widget build(BuildContext context) {
    return Image.asset(image, width: 600, height: 240, fit: BoxFit.cover);
  }
}
