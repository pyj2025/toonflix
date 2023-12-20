import 'package:flutter/material.dart';

void main() {
  runApp(const MyStatefulWidget());
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({super.key});

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int counter = 0;

  List<int> nums = [];

  bool showTitle = true;

  void onClick() {
    setState(() {
      counter = counter + 1;
      nums.add(nums.length);
    });
  }

  void toggleTitle() {
    showTitle = !showTitle;

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: const TextTheme(
          titleLarge: TextStyle(
            color: Colors.red,
          ),
        ),
      ),
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
            child: Column(
          children: [
            // Text(
            //   "Click",
            //   style: TextStyle(
            //     fontSize: 32,
            //   ),
            // ),
            // Text(
            //   '$counter',
            //   style: const TextStyle(
            //     fontSize: 24,
            //   ),
            // ),
            // IconButton(
            //   iconSize: 40,
            //   onPressed: onClick,
            //   icon: const Icon(Icons.add_box_rounded),
            // ),
            // for (var num in nums)
            //   Text(
            //     '$num',
            //     style: const TextStyle(
            //       fontSize: 24,
            //     ),
            //   ),
            showTitle ? const MyLargeTitle() : const Text("###"),
            IconButton(
              iconSize: 40,
              onPressed: toggleTitle,
              icon: const Icon(Icons.remove_red_eye),
            ),
          ],
        )),
      ),
    );
  }
}

// class MyLargeTitle extends StatelessWidget {
//   const MyLargeTitle({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Text(
//       "My Large Title",
//       style: TextStyle(
//         fontSize: 32,
//         color: Theme.of(context).textTheme.titleLarge?.color,
//       ),
//     );
//   }
// }

class MyLargeTitle extends StatefulWidget {
  const MyLargeTitle({
    super.key,
  });

  @override
  State<MyLargeTitle> createState() => _MyLargeTitleState();
}

class _MyLargeTitleState extends State<MyLargeTitle> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print("#### initState");
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    print("#### dispose");
  }

  @override
  Widget build(BuildContext context) {
    print("#### build");

    return Text(
      "My Large Title",
      style: TextStyle(
        fontSize: 32,
        color: Theme.of(context).textTheme.titleLarge?.color,
      ),
    );
  }
}
