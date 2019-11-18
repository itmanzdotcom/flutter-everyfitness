import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:fitness/card_item.dart';
import 'package:fitness/start_work_out.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

var cardsList = [
  CardItemModel(
      "1. Lunges",
      "res/images/ic_bbc.png",
      "Challenging your balance is an essential part of a well-rounded "
          "exercise routine. Lunges do just that, promoting functional "
          "movement, while also increasing strength in your legs and glutes.",
      "1.Start by standing with your feet shoulder-width apart and arms down "
          "at your sides. \n2.Take a step forward with your right leg and "
          "bend your right knee as you do so, stopping when your thigh is "
          "parallel to the ground. Ensure that your right knee doesn’t extend"
          " past your right foot.\n3.Push up off your right foot and return to the starting position. Repeat with your left leg. This is one rep.\n4.Complete 10 reps for 3 sets."),
  CardItemModel(
      "2. Pushups",
      "res/images/ic_lesson.png",
      "Drop and give me 20! Pushups are one of the most basic yet effective "
          "bodyweight moves you can perform because of the number of muscles "
          "that are recruited to perform them.",
      "1.tart in a plank position."
          " Your core should be tight, shoulders pulled down and back, and "
          "your neck neutral. \n2.nd your elbows and begin to lower your body"
          " down to the floor. When your chest grazes it, extend your elbows "
          "and return to the start. Focus on keeping your elbows close to "
          "your body during the movement. \n3.Complete 3 sets of as many reps as possible."),
  CardItemModel(
      "3. Squats",
      "res/images/ic_lesson.png",
      "Squats increase lower body and core strength, as well as flexibility "
          "in your lower back and hips. Because they engage some of the "
          "largest muscles in the body, they also pack a major punch in terms"
          " of calories burned.",
      "1.Start by standing straight, with your "
          "feet slightly wider than shoulder-width apart, and your arms at "
          "your sides.\n2.Brace your core and, keeping your chest and chin "
          "up, push your hips back and bend your knees as if you’re going to "
          "sit in a chair.\n3.Ensuring your knees don’t bow inward or "
          "outward, drop down until your thighs are parallel to the ground, "
          "bringing your arms out in front of you in a comfortable position. "
          "Pause for one second, then extend your legs and return to the "
          "starting position.\n4.Complete 3 sets of 20 reps."),
  CardItemModel(
      "4. Standing overhead dumbbell presses",
      "res/images/ic_lesson.png",
      "Compound exercises, which utilize multiple joints and muscles, are "
          "perfect for busy bees as they work several parts of your body at "
          "once. A standing overhead press isn’t only one of the best "
          "exercises you can do for your shoulders, it also engages your "
          "upper back and core.",
      "1.Pick a light set of dumbbells — we "
          "recommend 10 pounds to start — and start by standing, either with your"
          " feet shoulder-width apart or staggered. Move the weights overhead so "
          "your upper arms are parallel to the floor.\n2.Bracing your core, begin"
          " to push up until your arms are fully extended above your head. Keep "
          "your head and neck stationary.\n3.After a brief pause, bend your "
          "elbows and lower the weight back down until your tricep is parallel to"
          " the floor again.\n4.Complete 3 sets of 12 reps."),
  CardItemModel(
      "5. Dumbbell rows",
      "res/images/ic_lesson.png",
      "Not only will these make your back look killer in that dress, dumbbell"
          " rows are another compound exercise that strengthens multiple "
          "muscles in your upper body. Choose a moderate-weight dumbbell and "
          "ensure that you’re squeezing at the top of the movement.",
      "1.art "
          "with a dumbbell in each hand. We recommend no more than 10 pounds "
          "for beginners.\n2.Bend forward at the waist so your back is at a "
          "45-degree angle to the ground. Be certain not to arch your back. "
          "Let your arms hang straight down. Ensure your neck is in line with"
          " your back and your core is engaged.\n3.Starting with your right "
          "arm, bend your elbow and pull the weight straight up toward your "
          "chest, making sure to engage your lat, and stopping just below "
          "your chest.\n4.Return to the starting position and repeat with the left arm. This is one rep. Repeat 10 times for 3 sets."),
  CardItemModel(
      "6. Single-leg deadlifts",
      "res/images/ic_lesson.png",
      "This is another exercise that challenges your balance. Single-leg "
          "deadlifts require stability and leg strength. Grab a light to "
          "moderate dumbbell to complete this move.",
      "1.Begin standing with a"
          " dumbbell in your right hand and your knees slightly bent.\n2"
          ".Hinging at the hips, begin to kick your left leg straight back "
          "behind you, lowering the dumbbell down toward the ground.\n3.When "
          "you reach a comfortable height with your left leg, slowly return "
          "to the starting position in a controlled motion, squeezing your "
          "right glute. Ensure that your pelvis stays square to the ground "
          "during the movement.\n4.Repeat 10 to 12 reps before moving the weight to your left hand and repeating the same steps on the left leg."),
  CardItemModel(
      '7. Burpees',
      "res/images/ic_history.png",
      "An exercise we love to hate, burpees are a super effective whole-body "
          "move that provides great bang for your buck for cardiovascular "
          "endurance and muscle strength.",
      "1.Start by standing upright with "
          "your feet shoulder-width apart and your arms down at your sides."
          "\n2.With your hands out in front of you, start to squat down. When"
          " your hands reach the ground, pop your legs straight back into a "
          "pushup position.\n3.Do a pushup.\n4.Come back up to the starting "
          "pushup position and jump your feet up to your palms by hinging at "
          "the waist. Get your feet as close to your hands as you can get, "
          "landing them outside your hands if necessary.\n5.Stand up "
          "straight, bringing your arms above your head and jump.\n6.This is one rep. Complete 3 sets of 10 reps as a beginner."),
  CardItemModel(
      '8. Side planks',
      "res/images/ic_favorites.png",
      "A healthy body requires a strong core at its foundation, so don’t "
          "neglect core-specific moves like the side plank. Focus on the "
          "mind-muscle connection and controlled movements to ensure you’re "
          "completing this move effectively.",
      "1.Lie on your right side with "
          "your left leg and foot stacked on top of your right leg and foot. "
          "Prop your upper body up by placing your right forearm on the "
          "ground, elbow directly under your shoulder.\n2.Contract your core "
          "to stiffen your spine and lift your hips and knees off the ground,"
          " forming a straight line with your body.\n3.Return to start in a controlled manner. Repeat 3 sets of 10-15 reps on one side, then switch."),
  CardItemModel(
      '9. Situps',
      "res/images/ic_rate_app.png",
      "Although they get a bad rap as being too basic, situps are an "
          "effective way to target your abdominal muscles. If you have lower "
          "back problems, stick with a crunch, which requires just your upper"
          " back and shoulders to lift off the ground.",
      "1.Start by lying on "
          "the ground on your back with your knees bent, feet flat, and your "
          "hands behind your head.\n2.Keeping your feet glued to the ground, "
          "begin to roll up from your head, engaging your core throughout. "
          "Don’t strain your neck during the upward motion.\n3.When your "
          "chest reaches your legs, begin the controlled phase back down to "
          "the starting position.\n4.Complete 3 sets of 15 reps as a beginner."),
  CardItemModel(
      '10. Glute bridge',
      "res/images/ic_rate_app.png",
      "The glute bridge effectively works your entire posterior chain, which "
          "isn’t only good for you, but will make your booty look perkier as well.",
      "1.Start by lying on "
          "the floor with your knees bent, feet flat on the ground, and arms "
          "straight at your sides with your palms facing down.\n2.Pushing "
          "through your heels, raise your hips off the ground by squeezing "
          "your core, glutes, and hamstrings. Your upper back and shoulders "
          "should still be in contact with the ground, and your core down to "
          "your knees should form a straight line.\n3.Pause 1-2 seconds at "
          "the top and return to the starting position.\n4.Complete 10-12 reps for 3 sets."),
];

class HomeComponent extends StatefulWidget {
  @override
  _HomeComponentState createState() {
    return _HomeComponentState();
  }
}

class _HomeComponentState extends State<HomeComponent> {
  @override
  Widget build(BuildContext context) {
    // TODO setup fire base config
    setupRemoteConfig();

    return HomeScreen();
  }
}


class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("EveryFitness"),
        backgroundColor: Colors.green,
        centerTitle: true,
      ),
      body: Container(
        color: Colors.green,
        constraints: BoxConstraints.expand(),
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 30,
            ),
            Container(
              padding: EdgeInsets.all(20.0),
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  "10 Exercises to Tone Every Inch of Your Body",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
                child: ListView.builder(
                    itemCount: cardsList.length,
                    itemBuilder: (context, position) {
                      return InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => StartWorkout(
                                    cardsList[position])),
                          );
                        },
                        child: Padding(
                          padding:
                              const EdgeInsets.fromLTRB(10.0, 4.0, 10.0, 4.0),
                          child: Card(
                            color: Colors.white,
                            child: Container(
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 20.0, vertical: 12.0),
                                    child: Text(
                                      cardsList[position].cardTitle,
                                      style: TextStyle(
                                          fontSize: 20.0,
                                          color: Colors.green[700],
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 20.0, vertical: 14.0),
                                    child: Text(
                                      cardsList[position].description,
                                      style: TextStyle(color: Colors.grey[800]),
                                      softWrap: true,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0)),
                          ),
                        ),
                      );
                    }))
          ],
        ),
      ),
    );
  }
}

Future<RemoteConfig> setupRemoteConfig() async {
  print('RemoteConfig: starting...');
  final RemoteConfig remoteConfig = await RemoteConfig.instance;
  // Enable developer mode to relax fetch throttling
  remoteConfig.setConfigSettings(RemoteConfigSettings(debugMode: true));
  remoteConfig.setDefaults(<String, dynamic>{
    KEY_VISIBLE_LINK: 1,
  });
  print('RemoteConfig: setup default...');

  try {
    // Using default duration to force fetching from remote server.
    print('RemoteConfig: fetching...');
    await remoteConfig.fetch(expiration: const Duration(seconds: 0));

    print('RemoteConfig: activated...');
    await remoteConfig.activateFetched();
  } on FetchThrottledException catch (exception) {
    // Fetch throttled.
    print('RemoteConfig: fetch failed...$exception');
  } catch (exception) {
    print('Unable to fetch remote config. Cached or default values will be '
        'used');
  }

  print('RemoteConfig: value >> ' + remoteConfig.getString(KEY_VISIBLE_LINK));
  setAppLink(int.parse(remoteConfig.getString(KEY_VISIBLE_LINK)));

  ///----------- Get value back----------
  getAppLink().then((duration) {
    print('RemoteConfig: saved config...$duration');
  });

  return remoteConfig;
}


const KEY_VISIBLE_LINK = 'KEY_VISIBLE_LINK';
const APP_LINK = 'APP_LINK';

Future<void> setAppLink(int duration) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  await prefs.setInt(KEY_VISIBLE_LINK, duration);
  print('Saved app link....$duration');
}

Future<int> getAppLink() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  return prefs.getInt(KEY_VISIBLE_LINK) != null
      ? prefs.getInt(KEY_VISIBLE_LINK)
      : 200;
}
