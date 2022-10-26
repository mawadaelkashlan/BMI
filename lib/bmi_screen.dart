import 'dart:math';
import 'package:bmi_calculator/bmi_result_screen.dart';
import 'package:flutter/material.dart';

class BmiScreen extends StatefulWidget {
  const BmiScreen({Key? key}) : super(key: key);

  @override
  State<BmiScreen> createState() => _BmiScreenState();
}

class _BmiScreenState extends State<BmiScreen> {

  bool isMale= true;
  double height = 120.0;
  int age = 20;
  double weight = 60;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.amberAccent[100],
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: GestureDetector(
                          onTap: (){
                            setState(() {
                              isMale = true;
                            });
                          }
                          ,
                          child: Container(
                            decoration: BoxDecoration(
                              color: isMale? Colors.grey : Colors.white38,
                              borderRadius: BorderRadius.circular(10.0)
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image(
                                    image: AssetImage('assets/images/male.png'),
                                  width: 80.0,
                                  height: 80.0,
                                ),
                                SizedBox(height: 10.0,),
                                Text('MALE' , style: TextStyle(
                                  fontSize: 30.0,
                                  fontWeight: FontWeight.bold
                                ),)
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 20.0,),
                      Expanded(
                        child:GestureDetector(
                          onTap: (){
                            setState(() {
                              isMale = false;
                            });
                          }
                          ,
                          child: Container(
                          decoration: BoxDecoration(
                              color: isMale? Colors.white38 : Colors.grey,
                          borderRadius: BorderRadius.circular(10.0)
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image(
                                image: AssetImage('assets/images/female.png'),
                                width: 90.0,
                                height: 90.0,
                              ),
                              Text('FEMALE' , style: TextStyle(
                                  fontSize: 30.0,
                                  fontWeight: FontWeight.bold
                              ),)
                            ],
                          ),
                      ),
                        ),
                      ),
                    ],
                  ),
                )),

            Expanded(
                child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),

              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white38,
                    borderRadius: BorderRadius.circular(10.0)
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('HEIGHT' , style: TextStyle(
                        fontSize: 25.0,

                    ),),
                    SizedBox(height: 10.0,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text('${height.round()}' , style: TextStyle(
                            fontSize: 50.0,
                            fontWeight: FontWeight.bold
                        ),),
                        Text('CM' , style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold
                        ),)
                      ],
                    ),
                    Slider(
                        value: height,
                        max: 200.0,
                        min: 100.0,
                        onChanged: (value){
                          setState(() {
                          height = value;
                          print(value.round());
                          });
                        })
                  ],
                ),
              ),
            )
            ),
            Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.white38,
                              borderRadius: BorderRadius.circular(10.0)
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('WEIGHT' , style: TextStyle(
                                  fontSize: 20.0,
                              ),),
                              Text('${weight.round()}' , style: TextStyle(
                                  fontSize: 50.0,
                                  fontWeight: FontWeight.bold
                              ),),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  FloatingActionButton(onPressed: (){
                                    setState(() {
                                      weight--;
                                    });
                                  } ,
                                    backgroundColor: Colors.grey[300],
                                    mini: true,
                                    child: Icon(Icons.remove , color: Colors.black, size: 30.0,),
                                  ),
                                  SizedBox(width: 10.0,),
                                  FloatingActionButton(onPressed: (){
                                    setState(() {
                                      weight++;
                                    });
                                  } ,
                                    backgroundColor: Colors.grey[300],
                                    mini: true,
                                    child: Icon(Icons.add , color: Colors.black, size: 30.0,),
                                  ),
                                ],
                              )

                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: 20.0,),
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.white38,
                              borderRadius: BorderRadius.circular(10.0)
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('AGE' , style: TextStyle(
                                  fontSize: 25.0,
                              ),),
                              Text('$age' , style: TextStyle(
                                  fontSize: 50.0,
                                  fontWeight: FontWeight.bold
                              ),),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  FloatingActionButton(onPressed: (){
                                    setState(() {
                                      age--;
                                    });
                                  } ,
                                    backgroundColor: Colors.grey[300],
                                    mini: true,
                                    child: Icon(Icons.remove , color: Colors.black, size: 30.0,),
                                  ),
                                  SizedBox(width: 10.0,),
                                  FloatingActionButton(onPressed: (){
                                    setState(() {
                                      age++;
                                    });
                                  } ,
                                    backgroundColor: Colors.grey[300],
                                    mini: true,
                                    child: Icon(Icons.add , color: Colors.black, size: 30.0,),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                )),
            Container(
              color: Colors.black54,
              width: double.infinity,
              height: 50.0,
              child: MaterialButton(onPressed: (){
                double result = weight/ pow(height /100 ,2);
                print(result.round());
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => BMIResult(
                          result: result.round(),
                          age: age,
                          isMale: isMale,
                        ),
                    ),
                );
              },
                child: Text('CALCULATE', style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),),),
            )
          ],
        ),
      ),
    );
  }

  // var result = weight/ pow(height /100 ,2);
  // print(result.round())
}
