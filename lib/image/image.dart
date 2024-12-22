


import 'package:flutter/material.dart';


class MyImagePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('图片')),
      ),
      body: SingleChildScrollView(

        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            MyImageContainer(),
            SizedBox(height: 20), // 添加间距

            // 使用 Row 组件将两个图像容器并排显示
            // 使用 Row 组件将两个图像容器并排显示
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween, // 在主轴上均匀分布
              children: [
                // 使用MyImageWithShadow组件，显示图像b.png，宽度为150像素
                Expanded(child: MyImageWithShadow(imagePath: 'assets/images/b.png', width: 150)),
                SizedBox(width: 10), // 添加间距
                Expanded(child: MyImageWithShadow(imagePath: 'assets/images/b.png', width: 150)),
              ],
            ),
            SizedBox(height: 20), // 添加间
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween, // 在主轴上均匀分布
              children: [
                Expanded(child: MyImage2WithShadow(imagePath: 'assets/images/f.png', width: 100)),
                SizedBox(width: 10), // 添加间距
                Expanded(child: MyImage2WithShadow(imagePath: 'assets/images/h.png', width: 100)),
                SizedBox(width: 10), // 添加间距
                Expanded(child: MyImage2WithShadow(imagePath: 'assets/images/i.png', width: 100)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

// 自定义组件
class MyImageContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return // 使用Container部件，创建一个带有阴影效果的图像容器
      Container(
        width: double.infinity, // 使容器宽度适应父组件
        height: 200,
        // 使用BoxDecoration部件，设置容器的背景颜色、圆角半径和阴影效果
        decoration: BoxDecoration(
          color: Colors.white, // 背景颜色
          borderRadius: BorderRadius.circular(40), // 圆角半径
          // 使用BoxShadow部件，设置容器的阴影效果
          boxShadow: [
            // 使用BoxShadow部件，设置容器的阴影效果
            BoxShadow(
              color: Colors.black.withOpacity(0.5), // 阴影颜色
              blurRadius: 8, // 模糊半径
              offset: Offset(0, 0), // 阴影偏移
            ),
          ],
        ),
        // 使用ClipRRect部件，裁剪容器的子部件为圆角矩形
        child: ClipRRect(
          borderRadius: BorderRadius.circular(40), // 裁剪圆角
          child: Image.asset(
            'assets/images/a.png', // 替换为你的图像资源
            fit: BoxFit.cover, // 填充模式
          ),
        ),
      );
  }
}

// 通用自定义组件
class MyImageWithShadow extends StatelessWidget {
  // 定义一个字符串类型的变量，用于存储图像的路径
  final String imagePath;
  // 定义一个双精度浮点类型的变量，用于存储图像的宽度
  final double width;
//是构造函数，它使用了命名参数（{}）和 required 关键字，
//表示在创建 MyImageWithShadow 实例时，必须提供 imagePath 和 width 的值。
  // 构造函数，用于初始化MyImageWithShadow组件的属性
  // 构造函数，要求传递 imagePath 和 width
  MyImageWithShadow({required this.imagePath, required this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 200,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(40),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.5),
            blurRadius: 8,
            offset: Offset(0, 0),
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(40),
        child: Image.asset(
          imagePath,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}



// 通用自定义组件
class MyImage2WithShadow extends StatelessWidget {
  final String imagePath;
  final double width;

  MyImage2WithShadow({required this.imagePath, required this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 200,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(40),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.5),
            blurRadius: 8,
            offset: Offset(0, 0),
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(40),
        child: Image.asset(
          imagePath,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

