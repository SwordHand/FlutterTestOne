import 'package:flutter/material.dart';
import 'package:untitled/fonts/myfonts.dart';
import 'package:untitled/image/imagemove.dart';
import 'package:untitled/video/video.dart';


import 'audio/audio.dart';
import 'image/image.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter UI Example',
      theme: ThemeData(
        useMaterial3: true, // 启用 Material 3
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),

    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('首页')),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(

            children: [
                MyButtonImage(),
                SizedBox(width: 10),
                MyButtonImageMove(),
              SizedBox(width: 10),
              MyButtonFonts(),
              SizedBox(width: 10),
              MyButtonVideo(),
              SizedBox(width: 10),
              MyButtonAudio(),
              SizedBox(width: 10),
              MyButtonCard(),
          ]
            )

          ],
        ),
      ),
    );
  }
}


class MyButtonImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return // 使用Container部件，创建一个带有阴影效果的图像容器
      Center(
        child: ElevatedButton(
        onPressed: () {
      // 点击按钮时导航到 SecondPage
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => MyImagePage()),
      );
    },
    child: Text('图片'),
    ),
      );
  }
}

class MyButtonImageMove extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return // 使用Container部件，创建一个带有阴影效果的图像容器
      Center(
        child: ElevatedButton(
          onPressed: () {
            // 点击按钮时导航到 SecondPage
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MyImageMovePage()),
            );
          },
          child: Text('图片切换'),
        ),
      );
  }
}


class MyButtonFonts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return // 使用Container部件，创建一个带有阴影效果的图像容器
      Center(
        child: ElevatedButton(
          onPressed: () {
            // 点击按钮时导航到 SecondPage
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MyFontsPage()),
            );
          },
          child: Text('字体'),
        ),
      );
  }
}


class MyButtonVideo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return // 使用Container部件，创建一个带有阴影效果的图像容器
      Center(
        child: ElevatedButton(
          onPressed: () {
            // 点击按钮时导航到 SecondPage
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MyVideoPage()),
            );
          },
          child: Text('视频'),
        ),
      );
  }
}

class MyButtonAudio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return // 使用Container部件，创建一个带有阴影效果的图像容器
      Center(
        child: ElevatedButton(
          onPressed: () {
            // 点击按钮时导航到 SecondPage
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MyAudioPage()),
            );
          },
          child: Text('语音'),
        ),
      );
  }
}

class MyButtonCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return // 使用Container部件，创建一个带有阴影效果的图像容器
      Center(
        child: ElevatedButton(
          onPressed: () {
            // 点击按钮时导航到 SecondPage
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MyFontsPage()),
            );
          },
          child: Text('卡片'),
        ),
      );
  }
}



