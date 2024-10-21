import 'package:flutter/material.dart';

class BasicInstagramClone extends StatefulWidget {
  @override
  State<BasicInstagramClone> createState() => _BasicInstagramCloneState();
}

class _BasicInstagramCloneState extends State<BasicInstagramClone> {
  List<String> _stories = ["", ""];

  List<bool> mausabangcolor = [false, false];

  List<String> _posts = [
    "Tusloka para na remove",
    "Tusloka para na remove",
    "Tusloka para na remove",
    "Tusloka para na remove",
    "Tusloka para na remove"
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: Text("Instagram ni"),
          ),
          body: Column(
            children: [
              Container(
                height: 80,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: _stories.length,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            mausabangcolor[index] = !mausabangcolor[index];
                          });
                        },
                        onDoubleTap: () {
                          setState(() {
                            _stories.removeAt(index);
                          });
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(4),
                          child: Container(
                            width: 80,
                            child: Center(
                              child: Text(
                                mausabangcolor[index]
                                    ? "Oh dba blue"
                                    : "Tusloka para ma lahi color",
                                style: TextStyle(fontSize: 10),
                              ),
                            ),
                            decoration: BoxDecoration(
                                color: mausabangcolor[index]
                                    ? Colors.blue
                                    : Colors.amber,
                                shape: BoxShape.circle),
                          ),
                        ),
                      );
                    }),
              ),
              Expanded(
                  child: ListView.builder(
                      itemCount: _posts.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(top: 2, bottom: 4),
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                _posts.removeAt(index);
                              });
                            },
                            child: Container(
                              height: 200,
                              color: Colors.red,
                              child: Center(
                                child: Text(_posts[index]),
                              ),
                            ),
                          ),
                        );
                      }))
            ],
          ),
        ));
  }
}
