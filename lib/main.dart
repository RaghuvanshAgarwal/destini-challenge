import 'package:destini_challenge_starting/story_brain.dart';
import 'package:flutter/material.dart';

void main() => runApp(Destini());

class Destini extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(theme: ThemeData.dark(), home: StoryPage());
  }
}

StoryBrain storyBrain = StoryBrain();

class StoryPage extends StatefulWidget {
  _StoryPageState createState() => _StoryPageState();
}

class _StoryPageState extends State<StoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/background.png'),
            fit: BoxFit.fill,
          ),
        ),
        padding: EdgeInsets.symmetric(vertical: 50.0, horizontal: 15.0),
        constraints: BoxConstraints.expand(),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Expanded(
                flex: 12,
                child: Center(
                  child: Container(
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(150, 0, 0, 0),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Text(
                      storyBrain.getStory(),
                      textAlign: TextAlign.justify,
                      style: TextStyle(fontSize: 25.0),
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      storyBrain.nextStory(choiceNumber: 1);
                    });
                  },
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.red,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadiusGeometry.all(Radius.zero),
                    ),
                  ),
                  child: Text(
                    storyBrain.getChoice1(),
                    style: TextStyle(fontSize: 20.0, color: Colors.white),
                  ),
                ),
              ),
              SizedBox(height: 20.0),
              Expanded(
                flex: 2,
                child: Visibility(
                  visible: storyBrain.buttonShouldBeVisible(),
                  child: TextButton(
                    onPressed: () {
                      setState(() {
                        storyBrain.nextStory(choiceNumber: 2);
                      });
                    },
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.blue,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadiusGeometry.all(Radius.zero),
                      ),
                    ),
                    child: Text(
                      storyBrain.getChoice2(),
                      style: TextStyle(fontSize: 20.0, color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
