import 'package:flutter/material.dart';

class MyImageMovePage extends StatelessWidget {
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
            MyImageMove(),
          ],
        ),
      ),
    );
  }
}

class MyImageMove extends StatefulWidget {
  @override
  _MyImageMoveState createState() => _MyImageMoveState();
}

class _MyImageMoveState extends State<MyImageMove> {
  // 定义一个列表来存储图片路径
  final List<String> imagePaths = [
    'assets/images/a.png',
    'assets/images/c.png',
    'assets/images/d.png',
  ];

  // 当前显示的图片索引
  int currentIndex = 0;

  // 切换图片的方法
  void switchImage() {
    setState(() {
      currentIndex = (currentIndex + 1) % imagePaths.length; // 循环切换
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity, // 使容器宽度适应父组件
          height: 200,
          decoration: BoxDecoration(
            color: Colors.white, // 背景颜色
            borderRadius: BorderRadius.circular(40), // 圆角半径
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.5), // 阴影颜色
                blurRadius: 8, // 模糊半径
                offset: Offset(0, 4), // 阴影偏移
              ),
            ],
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(40), // 裁剪圆角
            child: Image.asset(
              // 显示当前图片
              imagePaths[currentIndex],
              fit: BoxFit.cover, // 填充模式
              errorBuilder: (context, error, stackTrace) {
                return Center(child: Text('Image not found'));
              },
            ),
          ),
        ),
        SizedBox(height: 20), // 添加一些间距
        Center(
          child: ElevatedButton(
            onPressed: switchImage, // 直接调用切换图片的方法
            child: Text('图片切换'),
          ),
        ),
      ],
    );
  }
}
