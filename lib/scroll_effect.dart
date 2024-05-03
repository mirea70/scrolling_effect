import 'package:flutter/material.dart';

import 'image_widget.dart';

class ScrollEffect extends StatelessWidget {
  const ScrollEffect({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: Text('Sliver appBar'),
            backgroundColor: Colors.blueGrey,
            expandedHeight: 200,
            leading: Icon(Icons.arrow_back),
            actions: [
              Icon(Icons.settings),
              SizedBox(
                width: 12,
              ),
            ],
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                'assets/fruit.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Sliver 관련 위젯이 아닌 일반 위젯 사용하고 싶을때 사용
          SliverToBoxAdapter(
            child: GridView.builder(
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
              itemCount: 20,
              primary: false,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return ImageWidget(
                  index: index,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
