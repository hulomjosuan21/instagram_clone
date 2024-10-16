import 'package:flutter/material.dart';

class InstagramClone extends StatelessWidget {
  const InstagramClone({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

PreferredSizeWidget _appBar() {
  return AppBar(
    title: Text(
      "Instagram",
      style: TextStyle(fontSize: 24, fontFamily: 'Fontspring'),
    ),
  );
}

class Stories {
  String name;

  Stories(this.name);
}

class HomePage extends StatelessWidget {
  final List<Stories> _stories = [
    Stories("__jos.one"),
    Stories("__jos.two"),
    Stories("__jos.three"),
    Stories("__jos.four"),
    Stories("__jos.five"),
    Stories("__jos.six"),
    Stories("__jos.seven"),
    Stories("__jos.one"),
    Stories("__jos.two"),
    Stories("__jos.three"),
    Stories("__jos.four"),
    Stories("__jos.five"),
    Stories("__jos.six"),
    Stories("__jos.seven")
  ];

  HomePage({super.key});

  Widget _storiesCircle(Stories s) {
    return Container(
      width: 80,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
              child: Container(
            decoration:
                BoxDecoration(color: Colors.blueAccent, shape: BoxShape.circle),
          )),
          Container(
            child: Text(
              s.name,
              style: TextStyle(fontSize: 14),
            ),
          )
        ],
      ),
    );
  }

  Widget _storiesSection() {
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: _stories.length,
            itemBuilder: (context, index) {
              return _storiesCircle(_stories[index]);
            }));
  }

  Widget _postBox() {
    return Padding(
      padding: EdgeInsets.all(8),
      child: Container(
        width: 50,
        height: 50,
        child: Center(
          child: Text("Posts"),
        ),
        decoration: BoxDecoration(
            color: Colors.amberAccent, borderRadius: BorderRadius.circular(20)),
      ),
    );
    ;
  }

  Widget _postSection() {
    return GridView.builder(
        itemCount: 8,
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (context, index) {
          return _postBox();
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: Column(
        children: [
          Container(
            height: 100,
            child: _storiesSection(),
          ),
          Expanded(child: _postSection()),
        ],
      ),
    );
  }
}
