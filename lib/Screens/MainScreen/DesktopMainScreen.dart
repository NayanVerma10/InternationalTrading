// ignore_for_file: file_names

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import '../../Constants/Content.dart' as content;

class DesktopMainScreen extends StatelessWidget {
  const DesktopMainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(maxWidth: 1400),
      padding: EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        //pageSnapping: false,
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Padding(
              padding: const EdgeInsets.only(left: 0.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Spacer(
                    flex: 1,
                  ),
                  SizedBox(
                    width: 800,
                    child: Text(
                      content.HomePageTitle,
                      style: Theme.of(context)
                          .textTheme
                          .headline2!
                          .copyWith(height: 1.2),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  const SizedBox(height: 20),
                  SizedBox(
                    width: 800,
                    child: Text(
                      content.HomePageDescription,
                      style: Theme.of(context)
                          .textTheme
                          .headline6!
                          .copyWith(height: 1.5),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      ElevatedButton(
                        style: ButtonStyle(
                          padding: MaterialStateProperty.all(
                            const EdgeInsets.symmetric(
                                horizontal: 50, vertical: 25),
                          ),
                        ),
                        onPressed: () {},
                        child: const Text(
                          "Get Started",
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                      const SizedBox(width: 20),
                      TextButton.icon(
                        style: ButtonStyle(
                          foregroundColor:
                              MaterialStateProperty.all(Colors.black),
                          overlayColor:
                              MaterialStateProperty.all(Colors.transparent),
                          padding: MaterialStateProperty.all(
                            EdgeInsets.symmetric(horizontal: 50, vertical: 25),
                          ),
                        ),
                        onPressed: () {},
                        icon: Icon(Icons.play_circle_outline),
                        label: Text(
                          "Watch Video",
                          style: TextStyle(fontSize: 20),
                        ),
                      )
                    ],
                  ),
                  Spacer(
                    flex: 2,
                  )
                ],
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            color: Colors.green,
          ),
        ],
      ),
    );
  }
}
