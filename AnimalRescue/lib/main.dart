import 'package:flutter/material.dart';
import 'package:feedback/feedback.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';

import 'feedback.dart';

void main() {
  runApp(
    BetterFeedback(
      child: const MyApp(),
      theme: FeedbackThemeData(
        background: Colors.grey,
        feedbackSheetColor: Colors.grey[50]!,
        drawColors: [
          Colors.red,
          Colors.green,
          Colors.blue,
          Colors.yellow,
        ],
      ),
      localeOverride: const Locale('en'),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(),
      //home: const MyHomePage(title: 'Flutter Demo Home Page'),
      initialRoute: '/',
      routes: {
        '/': (context) => MyHomePage(title: 'Animal Rescue'),

        '/feedback': (context) => const feedback(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

void showMenuItem(offset, index) {

}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BetterFeedback(
      child: Scaffold(
        body: PageView(
          controller: _pageController,
          children: <Widget>[
            Scaffold(
              appBar: AppBar(
                backgroundColor: Colors.orange,
                centerTitle: true,
                title: Text('Animal Rescue',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              body: ListView(
                children: [
                  Column(
                    children: [
                      Padding(padding: EdgeInsets.all(10)),
                      Center(
                        child: Text('Welcome to the Animal Rescue app!',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),

                      Padding(padding: EdgeInsets.all(20)),
                      Center(
                        child: Text('There are currently many animals around the world that are near extinction. We attempt to stop such extinctions from happening.',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ),

                      Padding(padding: EdgeInsets.all(20)),
                      Center(
                        child: Text('There are currently two animals that are in our radar that we are trying to save from extiction.',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ),

                      Padding(padding: EdgeInsets.all(20)),
                      Center(
                        child: Text('\u2022 African Forest elephants\n\u2022 Sunda Tiger',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),

                      Padding(padding: EdgeInsets.all(20)),
                      Center(
                        child: Text('Explore our app using our bottom navigation bar to see how you can help.',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ),

                      Padding(padding: EdgeInsets.all(20)),
                      Center(
                        child: Text('Also, do not forget to leave your feedback by pressing the floating button on the bottom right of the screen!',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),

            Scaffold(
                appBar: AppBar(
                  backgroundColor: Colors.orange,
                  centerTitle: true,
                  title: Text('African Forest Elephant',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                body: ListView(
                  children: [
                    Column(
                      children: [
                        Padding(padding: EdgeInsets.all(20)),
                        Container(
                          height: 200,
                          width: 250,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: const DecorationImage(image: AssetImage('images/elephant.jpg'), fit: BoxFit.cover,),
                          ),
                        ),

                        Padding(padding: EdgeInsets.all(20)),
                        Text('Reasons to why they are endangered:',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                        Padding(padding: EdgeInsets.all(10)),
                        Center(
                          child: Text('\u2022 Poaching\n\u2022 High demand for ivory means more hunting\n\u2022 Slow reproduction rates',
                            style: TextStyle(
                              fontSize: 19,
                            ),
                          ),
                        ),

                        Padding(padding: EdgeInsets.all(20)),
                        Text('What you can do:',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                        Padding(padding: EdgeInsets.all(10)),
                        Center(
                          child: Text('\u2022 Donate at https://www.iapf.org/donate\n\u2022 Avoid products made from authentic ivory',
                            style: TextStyle(
                              fontSize: 19,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                )
            ),

            Scaffold(
                appBar: AppBar(
                  backgroundColor: Colors.orange,
                  centerTitle: true,
                  title: Text('Sunda Tiger',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                body: ListView(
                  children: [
                    Column(
                      children: [
                        Padding(padding: EdgeInsets.all(20)),
                        Container(
                          height: 200,
                          width: 250,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: const DecorationImage(image: AssetImage('images/tiger.jpg'), fit: BoxFit.cover,),
                          ),
                        ),

                        Padding(padding: EdgeInsets.all(20)),
                        Text('Reasons to why they are endangered:',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                        Padding(padding: EdgeInsets.all(10)),
                        Center(
                          child: Text('\u2022 Poaching\n\u2022 Deforestation\n\u2022 Not humand friendly',
                            style: TextStyle(
                              fontSize: 19,
                            ),
                          ),
                        ),

                        Padding(padding: EdgeInsets.all(20)),
                        Text('What you can do:',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                        Padding(padding: EdgeInsets.all(10)),
                        Center(
                          child: Text('\u2022 Donate at https://www.iapf.org/donate\n\u2022 Protect tigers and their habitat',
                            style: TextStyle(
                              fontSize: 19,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                )
            ),

          ],
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.feedback),

          onPressed: () async {
            BetterFeedback.of(context).show((UserFeedback feedback) {
              Future(
                  () => Navigator.pushNamed(context, '/feedback')
              );
            });
          },
        ),
        bottomNavigationBar: BottomNavyBar(
          selectedIndex: _currentIndex,
          onItemSelected: (index) {
            setState(() => _currentIndex = index);
            _pageController.jumpToPage(index);
          },
          items: <BottomNavyBarItem>[
            BottomNavyBarItem(
                title: Text('Home'),
                icon: Icon(Icons.home)
            ),
            BottomNavyBarItem(
                title: Text('Elephant'),
                icon: Icon(Icons.adb)
            ),
            BottomNavyBarItem(
                title: Text('Tiger'),
                icon: Icon(Icons.android)
            ),
          ],
        ),
      ),
    );
  }
}
