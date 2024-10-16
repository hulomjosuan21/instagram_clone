import 'package:flutter/material.dart';

class BasicInstagramClone extends StatelessWidget {
  BasicInstagramClone({super.key});

  final List _stories = [
    "test 1",
    "test 2",
    "test 3",
    "test 4",
    "test 5",
    "test 6"
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Instagram"),
        ),
        body: Column(
          children: [
            Container(
              height: 80,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: _stories.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(4),
                      child: Container(
                        width: 80,
                        child: Center(
                          child: Text(_stories[index]),
                        ),
                        decoration: BoxDecoration(
                            color: Colors.amber, shape: BoxShape.circle),
                      ),
                    );
                  }),
            ),
            Expanded(
                child: GridView.builder(
                    itemCount: 5,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2),
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                              color: Colors.blueAccent,
                              borderRadius: BorderRadius.circular(10)),
                        ),
                      );
                    }))
          ],
        ),
      ),
    );
  }
}
