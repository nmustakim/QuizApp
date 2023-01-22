import 'package:flutter/material.dart';
import 'package:quiz_app/views/home.dart';
import 'package:quiz_app/controller/controller.dart';
import '../models/questionAnswer.dart';

class GkPage extends StatefulWidget {
  const GkPage({Key? key}) : super(key: key);

  @override
  State<GkPage> createState() => _GkPageState();
}

class _GkPageState extends State<GkPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  String value = "";
  QuestionAnswer questionAnswer = QuestionAnswer();
  Controller controller = Controller(
      0,
      1,
      0,
      0,
      1,
      2,
      3,
      0,
      0,
      Colors.lightGreen,
      Colors.lightGreen,
      Colors.lightGreen,
      Colors.lightGreen);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.fitHeight,
                  image: AssetImage(
                    "assets/images/bg.jpg",
                  ))),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(4, 4, 4, 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(),
                        color: Colors.orange,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(20))),
                    child: Center(
                        child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        questionAnswer.gkQuestionList[controller.questionIndex],
                        style: const TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                    )),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(),
                          color: controller.answerColor1,
                          borderRadius:
                              const BorderRadius.all(Radius.circular(20))),
                      child: TextButton(
                          onPressed: () {
                            setState(() {
                              controller.incrementIc();
                              if (controller.getIc() == 1) {
                                controller.answerColor1 = Colors.black45;
                              }
                              value = questionAnswer
                                  .gkOptionList[controller.optionIndex1];

                              if (value ==
                                  questionAnswer.gkAnswerList[
                                      controller.answerListIndex]) {
                                controller.incrementScore();
                              } else {}
                            });
                          },
                          child: Text(
                            questionAnswer
                                .gkOptionList[controller.optionIndex1],
                            style: const TextStyle(
                                color: Colors.black, fontSize: 25),
                          ))),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(),
                        color: controller.answerColor2,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(20))),
                    child: TextButton(
                        onPressed: () {
                          setState(() {
                            controller.incrementIc();
                            if (controller.getIc() == 1) {
                              controller.answerColor2 = Colors.black45;
                            }
                            value = questionAnswer
                                .gkOptionList[controller.optionIndex2];
                            if (value ==
                                questionAnswer
                                    .gkAnswerList[controller.answerListIndex]) {
                              controller.incrementScore();
                            } else {}
                          });
                        },
                        child: Text(
                          questionAnswer.gkOptionList[controller.optionIndex2],
                          style: const TextStyle(
                              color: Colors.black, fontSize: 25),
                        )),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(),
                        color: controller.answerColor3,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(20))),
                    child: TextButton(
                        onPressed: () {
                          setState(() {
                            controller.incrementIc();
                            if (controller.getIc() == 1) {
                              controller.answerColor3 = Colors.black45;
                            }
                            value = questionAnswer
                                .gkOptionList[controller.optionIndex3];
                            if (value ==
                                questionAnswer
                                    .gkAnswerList[controller.answerListIndex]) {
                              controller.incrementScore();
                            } else {}
                          });
                        },
                        child: Text(
                          questionAnswer.gkOptionList[controller.optionIndex3],
                          style: const TextStyle(
                              color: Colors.black, fontSize: 25),
                        )),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(),
                        color: controller.answerColor4,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(20))),
                    child: TextButton(
                        onPressed: () {
                          setState(() {
                            controller.incrementIc();
                            if (controller.getIc() == 1) {
                              controller.answerColor4 = Colors.black45;
                            }
                            value = questionAnswer
                                .gkOptionList[controller.optionIndex4];
                            if (value ==
                                questionAnswer
                                    .gkAnswerList[controller.answerListIndex]) {
                              controller.incrementScore();
                            } else {}
                          });
                        },
                        child: Text(
                          questionAnswer.gkOptionList[controller.optionIndex4],
                          style: const TextStyle(
                              color: Colors.black, fontSize: 25),
                        )),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(),
                          color: Colors.orange,
                          borderRadius:
                              const BorderRadius.all(Radius.circular(20))),
                      child: TextButton(
                        onPressed: () {
                          setState(() {
                            controller.answerListIndex++;
                            controller.answerColor1 = Colors.lightGreen;
                            controller.answerColor2 = Colors.lightGreen;
                            controller.answerColor3 = Colors.lightGreen;
                            controller.answerColor4 = Colors.lightGreen;
                            controller.setIc(0);

                            if (controller.questionIndex <
                                questionAnswer.gkQuestionList.length - 1) {
                              controller.questionIndex++;
                              controller.optionIndex1 += 4;
                              controller.optionIndex2 += 4;
                              controller.optionIndex3 += 4;
                              controller.optionIndex4 += 4;
                              controller.incrementCounter();
                            } else {
                              controller.questionIndex = 0;
                              controller.answerListIndex = 0;
                              controller.optionIndex1 = 0;
                              controller.optionIndex2 = 1;
                              controller.optionIndex4 = 2;
                              controller.optionIndex3 = 3;
                              controller.setCounter(0);
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (_) => SafeArea(
                                              child: Scaffold(
                                            body: Container(
                                              height: double.infinity,
                                              width: double.infinity,
                                              color: Colors.lightGreen[200],
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  Text(
                                                    "Your score is ${controller.getScore()} out of 30",
                                                    style: const TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 25),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            32.0),
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceEvenly,
                                                      children: [
                                                        ElevatedButton(
                                                          onPressed: () {
                                                            Navigator.push(
                                                                context,
                                                                MaterialPageRoute(
                                                                    builder: (_) =>
                                                                        const GkPage()));
                                                            controller
                                                                .resetScore();
                                                          },
                                                          style: ElevatedButton
                                                              .styleFrom(
                                                            primary:
                                                                Colors.black,
                                                          ),
                                                          child: const Text(
                                                            "restart",
                                                            style: TextStyle(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                fontSize: 20),
                                                          ),
                                                        ),
                                                        ElevatedButton(
                                                          onPressed: () {
                                                            controller
                                                                .resetScore();
                                                            Navigator.push(
                                                                context,
                                                                MaterialPageRoute(
                                                                    builder: (_) =>
                                                                        const HomePage()));
                                                          },
                                                          style: ElevatedButton
                                                              .styleFrom(
                                                                  primary: Colors
                                                                      .black),
                                                          child: const Text(
                                                            "cancel",
                                                            style: TextStyle(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                fontSize: 20),
                                                          ),
                                                        )
                                                      ],
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ))));
                            }
                          });
                        },
                        child: const Icon(
                          Icons.navigate_next_outlined,
                          size: 60,
                          color: Colors.black,
                        ),
                      )),
                ),
                Center(
                    child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    "${controller.getCounter()}/30",
                    style: const TextStyle(
                        fontSize: 32, fontWeight: FontWeight.bold),
                  ),
                )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
