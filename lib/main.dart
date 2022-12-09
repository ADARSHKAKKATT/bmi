import 'package:bmii/bmi%20Result.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Bmi());
}

class Bmi extends StatefulWidget {
  const Bmi({Key? key}) : super(key: key);

  @override
  State<Bmi> createState() => _BmiState();
}

class _BmiState extends State<Bmi> {

  double slider=50;
  double weight=0;
  double age=1;
  double calc=1;





  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text("BMI CALCULATOR"
          ),centerTitle: true,
          backgroundColor: Colors.black,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                SizedBox(height: 20,),
                Row(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(25),
                        color: Colors.blueGrey,
                        ),
                        height: 300,

                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.male,
                              size: 150,
                              color: Colors.white,),
                            Text("MALE",
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white
                            ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 20,),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration( borderRadius: BorderRadius.circular(25),
                        color: Colors.blueGrey,
                        ),
                        height: 300,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.female,
                              size: 150,
                            color: Colors.white,),
                            Text("FEMALE",
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.white
                            ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(25),
                        color: Colors.grey,
                        ),
                        height: 400,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("HEIGHT",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                            ),
                            ),
                            Text("$slider cm",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 60,
                              ),
                            ),
                            Slider(
                                max: 300,
                                min: 50,
                                inactiveColor: Colors.black,
                                activeColor: Colors.white,
                                divisions: 250,
                                value: slider, onChanged: (value){
                              setState(() {
                                slider=value;
                              });
                            })
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(height: 20,),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 300,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: Colors.blueGrey
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("WEIGHT",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 50
                            ),
                            ),
                            Text("$weight",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 50
                              ),
                            ),
                            
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FloatingActionButton(onPressed: (){
                                  setState(() {
                                    if(weight==0){
                                      weight=0;
                                    }
                                    else{
                                      weight--;
                                    }
                                  });
                                },
                                  backgroundColor: Colors.black,
                                child: Icon(
                                  Icons.remove
                                ),),
                                SizedBox(width: 20,),
                                FloatingActionButton(onPressed: (){
                                  setState(() {
                                    weight++;
                                  });
                                },
                                backgroundColor: Colors.black,
                                child: Icon(
                                  Icons.add
                                ),
                                ),
                              ],
                            )

                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 20,),
                    Expanded(
                      child: Container(
                        height: 300,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(25),
                        color: Colors.blueGrey,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("AGE",
                            style: TextStyle(fontSize: 50,
                            color: Colors.white),
                            ),
                            Text("$age",
                              style: TextStyle(fontSize: 50,
                              color: Colors.white),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FloatingActionButton(onPressed: (){
                                  setState(() {
                                    if(age==1){
                                      age=1;
                                    }
                                    else{
                                      age--;
                                    }
                                  });
                                },
                                backgroundColor: Colors.black,
                                child: Icon(
                                  Icons.remove
                                ),),
                                SizedBox(width: 20,),
                                FloatingActionButton(onPressed: (){
                                  setState(() {
                                    age++;
                                  });
                                },
                                backgroundColor: Colors.black,
                                child: Icon(
                                  Icons.add
                                ),),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20,),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 60,
                        color: Colors.pinkAccent,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context, MaterialPageRoute(builder: (context) =>  Result(slider:slider,age: age,weight: weight,calc: calc,)));
                          },
                          child: Text("CALCULATE",
                          style: TextStyle(
                            fontSize: 30,
                            color: Colors.white
                          ),
                          ),
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),

        ),
      ),
    );
  }
}

