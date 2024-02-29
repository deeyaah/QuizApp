import 'package:facts_1/quiz.dart';
import 'package:flutter/material.dart';

class Ques extends StatefulWidget {
  const Ques({Key? key}) : super(key: key);

  @override
  State<Ques> createState() => _QuesState();
}

class _QuesState extends State<Ques> {
  List questiolist = [
    Quiz(qus: 'sky is green', ans: false),
    Quiz(qus: 'dogs are cute', ans: true),
    Quiz(qus: 'cat are blue ', ans: false),
    Quiz(qus: 'humans have 3 legs ', ans: false),
    Quiz(qus: 'roses are red', ans: true),
    Quiz(qus: 'dragons are alive', ans: false),
    Quiz(qus: 'Harry styles is the best singer', ans: true),
    Quiz(qus: 'sayooj is a donkey', ans: true),
    Quiz(qus: 'rahul is gay', ans: true),
    Quiz(qus: 'am i alive', ans: false),
  ];
  int questionnum = 0;
  String result="";
  void nextqus() {
    if (questionnum < questiolist.length) {
      questionnum++;
    }
  }

  void check(bool answer) {
    if(answer==questiolist[questionnum].ans){
      result='correct';
    }
    else{
      result='wrong';
    }

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellowAccent,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              questiolist[questionnum].qus,
              style: TextStyle(fontSize: 40, color: Colors.indigo),
            ),

            SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    check(true);
                    nextqus();
                  });
                },
                child: Text('true'),
                style: ElevatedButton.styleFrom(
                    minimumSize: const Size.fromHeight(40),
                    textStyle: const TextStyle(fontSize: 25),
                    primary: Colors.indigo)),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    check(false);
                    nextqus();
                  });
                },
                child: Text('false'),
                style: ElevatedButton.styleFrom(
                    minimumSize: const Size.fromHeight(40),
                    textStyle: const TextStyle(fontSize: 25),
                    primary: Colors.indigo)),

            Text(result)
          ],
        ),
      ),
    );
  }
}
