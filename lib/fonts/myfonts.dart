



import 'package:flutter/material.dart';

class MyFontsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('字体')),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            MyFontsContainer(),

          ],
        ),
      ),
    );
  }
}


class MyFontsContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // 第一行文本，使用不同的字体
          Text(
            '我给你时间追赶直至你遥望不见',
            style: TextStyle(
              fontFamily: '手写', // 替换为你的字体名称
              fontSize: 24,
            ),
          ),
          SizedBox(height: 10), // 添加间距
          // 第二行文本，使用不同的字体
          Text(
            '他年我若立于万古诸天上将与你们共岁月',
            style: TextStyle(
              fontFamily: '行书', // 替换为你的字体名称
              fontSize: 24,

            ),
          ),
          SizedBox(height: 10), // 添加间距
          // 第三行文本，使用不同的字体
          Text(
            '所有大道皆如水流',
            style: TextStyle(
              fontFamily: '行草', // 替换为你的字体名称
              fontSize: 24,

            ),
          ),
          SizedBox(height: 10), // 添加间距
          // 第三行文本，使用不同的字体
          Text(
            '朽木虽微风未尽因果',
            style: TextStyle(
              fontFamily: '天行体', // 替换为你的字体名称
              fontSize: 24,

            ),
          ),SizedBox(height: 10), // 添加间距
          // 第三行文本，使用不同的字体
          Text(
            '带你看遍世间璀璨',
            style: TextStyle(
              fontFamily: 'Iphone', // 替换为你的字体名称
              fontSize: 24,

            ),
          ),
        ],
      ),
    );
  }
}