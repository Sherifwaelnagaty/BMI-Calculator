import 'dart:math';

import 'package:flutter/material.dart';

import '../bmi_results/bmi_result_screen.dart';

class BMIScreen extends StatefulWidget {
  const BMIScreen({Key? key}) : super(key: key);

  @override
  State<BMIScreen> createState() => _BMIScreenState();
}

class _BMIScreenState extends State<BMIScreen> {
  bool isMale= true;
  double height = 140.0;
  int weight=40;
  int age=20;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            "BMI Calculator"
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap:(){
                        setState((){
                          isMale=true;
                        });
                      } ,
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.male,
                              size: 100,
                                color: Colors.white,
                            ),
                            Text(
                                "Male",
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: isMale ? Colors.blue :Colors.black,
                        ) ,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap:(){
                      setState((){
                      isMale=false;
                      });
                      },
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.female,
                              size: 100,
                              color: Colors.white,
                            ),
                            Text(
                              "Female",
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: !isMale ? Colors.blue :Colors.black,
                        ) ,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(
                horizontal:20
            ),
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "HEIGHT",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight:FontWeight.bold,
                    ),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "${height.round()}",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 40,
                          fontWeight:FontWeight.bold,
                        ),
                      ),
                      Text(
                        "cm",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight:FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Slider(
                      value:height,
                      max:220.0,
                      min:140.0,
                      onChanged: (value){
                        setState((){
                          height=value;
                        });
                      }
                  )
                ],
                ),
              decoration:BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.black,
              ),
            ),
          ),

          ),
          Expanded(
           child: Padding(
             padding: const EdgeInsets.all(20.0),
             child: Row(
               mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Weight",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 40,
                            fontWeight:FontWeight.bold,
                          ),
                        ),
                        Text(
                          "$weight",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 40,
                            fontWeight:FontWeight.bold,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FloatingActionButton(
                              onPressed: (){
                                setState((){
                                  weight--;
                                });
                              },
                              heroTag: 'weight-',
                              mini: true,
                              child: Icon(
                                Icons.remove,
                              ),
                            ),
                            FloatingActionButton(
                              onPressed: (){
                                setState((){
                                  weight++;
                                });
                              },
                              heroTag: 'weight+',
                              mini: true,
                              child: Icon(
                                Icons.add,
                              ),
                            )

                          ],
                        ),
                      ],
                    ),
                    decoration:BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.black,
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "AGE",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 40,
                            fontWeight:FontWeight.bold,
                          ),
                        ),
                        Text(
                          "${age}",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 40,
                            fontWeight:FontWeight.bold,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FloatingActionButton(
                              onPressed: (){
                                setState((){
                                  age--;
                                });
                              },
                              heroTag: 'age-',
                              mini: true,
                              child: Icon(
                                Icons.remove,
                              ),
                            ),
                            FloatingActionButton(
                              onPressed: (){
                                setState((){
                                  age++;
                                });
                              },
                              heroTag: 'age+',
                              mini: true,
                              child: Icon(
                                Icons.add,
                              ),
                            )

                          ],
                        ),
                      ],
                    ),
                    decoration:BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
              ),
           ),
          ),
          Container(
            color: Colors.red,
            width: double.infinity,
            child: MaterialButton(
                onPressed: (){
                  double result = weight/pow(height/100, 2);
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context)=>BMIResultScreen(
                            age: age,
                            result: result.round(),
                            isMale: isMale,
                          ),
                      ),
                  );
                },
              height: 50,
              child: Text(
                "CALCULATE",
              ),
            ),
          ),
        ],
      ),
    );
  }
}
