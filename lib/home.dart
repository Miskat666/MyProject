import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Home ",
        ),
      ),
      body: Column(
        children: [
          Flexible(
            fit: FlexFit.tight,
            child: Container(
              height: 100,
              color: Colors.green,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        color: Colors.black,
                        // height: 90,
                      ),
                    ),
                    Expanded(
                      child: Container(
                        color: Colors.pink,
                        // height: 90,
                      ),
                    ),
                    Expanded(
                      child: Container(
                        color: Colors.yellow,
                        //  height: 90,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Flexible(
            fit: FlexFit.tight,
            child: Container(
              height: 100,
              color: Colors.yellowAccent,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        color: Colors.black,
                        // height: 90,
                      ),
                    ),
                    Expanded(
                      child: Container(
                        color: Colors.pink,
                        //  height: 90,
                      ),
                    ),
                    Expanded(
                      child: Container(
                        color: Colors.blue,
                        // height: 90,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Flexible(
            fit: FlexFit.tight,
            child: Container(
              height: 100,
              color: Colors.blueGrey,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        color: Colors.black,
                        // height: 90,
                      ),
                    ),
                    Expanded(
                      child: Container(
                        color: Colors.pink,
                        // height: 90,
                      ),
                    ),
                    Expanded(
                      child: Container(
                        color: Colors.yellow,
                        // height: 90,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton.extended(
              onPressed: () {
                showDialog(
                    barrierDismissible: false,
                    barrierColor: Colors.transparent,
                    context: context,
                    builder: (contex) {
                      return AlertDialog(
                        shadowColor: Colors.grey,
                        title: const Text("Message"),
                        content: const Text("Welcome to our app"),
                        actions: [
                          TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: const Text("Cancel"))
                        ],
                      );
                    });
              },
              label: const Text("Dialog")),
          const Padding(padding: EdgeInsets.all(8)),
          FloatingActionButton.extended(
              onPressed: () {
                showModalBottomSheet(
                    context: context,
                    backgroundColor: Colors.grey,
                    isScrollControlled: true,
                    useSafeArea: true,
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(8),
                            topRight: Radius.circular(8))),


                    builder: (context) {
                      return Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                "Title",
                                style: const TextStyle(
                                    fontSize: 24, fontWeight: FontWeight.bold),
                              ),
                              IconButton(
                                icon: Icon(Icons.close),
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                              )
                            ],
                          ),
                          Divider(
                            color: Colors.purple,
                          ),
                        ],
                      );
                    });
              },
              label: const Text("Bottem Sheet")),
        ],
      ),
    );
  }
}
