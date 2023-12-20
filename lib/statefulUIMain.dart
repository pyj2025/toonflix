import 'package:flutter/material.dart';
import 'package:toonflix/widgets/button.dart';
import 'package:toonflix/widgets/card.dart';

void main() {
  // var human = Player("human");
  // var human = Player(name: "human");

  // human.name;
  // runApp(const App());
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

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: const Color(0xFF181818),
      body: SingleChildScrollView(
        child: Padding(
          // padding: EdgeInsets.all(8),
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 40,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "Hi, User",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "Welcome back",
                        style: TextStyle(
                          color: Color.fromRGBO(255, 255, 255, 0.8),
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 80,
              ),
              Text(
                "Total balance",
                style: TextStyle(
                  color: Colors.white.withOpacity(0.8),
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                "\$ 9,999",
                style: TextStyle(
                  color: Colors.white.withOpacity(0.8),
                  fontSize: 48,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Button(
                    text: "Transfer",
                    textColor: Colors.black,
                    bgColor: Colors.amber,
                  ),
                  Button(
                    text: "Request",
                    textColor: Colors.white,
                    bgColor: Color(0xFF1F2123),
                  ),
                ],
              ),
              const SizedBox(
                height: 120,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Wallets",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 36,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    "View All",
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.8),
                      fontSize: 24,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const CurrencyCard(
                name: "Euro",
                code: "EUR",
                amount: "\$ 1,111",
                icon: Icons.euro_rounded,
                isInverted: false,
                index: 1,
              ),
              const CurrencyCard(
                name: "Dollar",
                code: "USD",
                amount: "\$ 3,111",
                icon: Icons.attach_money_rounded,
                isInverted: true,
                index: 2,
              ),
              const CurrencyCard(
                name: "Bitcoin",
                code: "BTC",
                amount: "\$ 2,111",
                icon: Icons.currency_bitcoin_rounded,
                isInverted: false,
                index: 3,
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
