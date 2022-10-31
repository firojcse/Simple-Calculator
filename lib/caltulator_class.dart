import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {
  const Calculator({Key? key}) : super(key: key);

  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  TextEditingController number01=TextEditingController();
  TextEditingController number02=TextEditingController();
   var number1=0,number2=0, result=0;
   Addition(){
     setState(() {
       number1=int.parse(number01.text);
       number2=int.parse(number02.text);
       result=number1+number2;
     });
   }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Calculator App"),
        leading: const Icon(Icons.backspace_rounded),
        actions: const [
          Icon(Icons.menu)
        ],
      ),
      body: Column(
        children: [
          const Divider(
            color: Colors.white,
          ),
          Text("Result = $result"),
          const Divider(
            color: Colors.white,
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                cursorColor: Colors.red,
                controller: number01,
                decoration: InputDecoration(
                  hintText: "Enter your First Number",
                  labelText: "First Number",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30)
                  )
                ),
              ),
            ),
          ),
          const Divider(
            color: Colors.white,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              cursorColor: Colors.red,
              controller: number02,
              decoration: InputDecoration(
                hintText: "Enter your Second Number",
                labelText: "Second Number",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30)
                )
              ),
            ),
          ),
          const Divider(
            color: Colors.white,
          ),
          Center(
            child: Row(
              children: [
                //addition
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    child: Container(
                      height: 60,
                      width: 70,
                      color: Colors.greenAccent,
                      child: TextButton(
                        onPressed: (){
                          Addition();
                        },
                        child: const Icon(Icons.add),
                      ),
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    child: Container(
                      height: 60,
                      width: 70,
                      color: Colors.greenAccent,
                      child: TextButton(
                        onPressed: (){
                          setState(() {
                            number1=int.parse(number01.text);
                            number2=int.parse(number02.text);
                            result=number1-number2;
                          });
                        },
                        child: const Text("−",style: TextStyle(fontSize: 50),),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    child: Container(
                      height: 60,
                      width: 70,
                      color: Colors.greenAccent,
                      child: TextButton(
                        onPressed: (){
                          setState(() {
                            number1=int.parse(number01.text);
                            number2=int.parse(number02.text);
                            result=number1*number2;
                          });
                        },
                        child: const Text("×",style: TextStyle(fontSize: 50),),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    child: Container(
                      height: 60,
                      width: 70,
                      color: Colors.greenAccent,
                      child: TextButton(
                        onPressed: (){
                          setState(() {
                            number1=int.parse(number01.text);
                            number2=int.parse(number02.text);
                            result=number1~/number2;
                          });
                        },
                        child: const Text("÷",style: TextStyle(fontSize: 50),),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    child: Container(
                      height: 60,
                      width: 70,
                      color: Colors.greenAccent,
                      child: TextButton(
                        onPressed: (){
                          setState(() {
                            number01.clear();
                            number02.clear();
                          });
                        },
                        child: const Icon(Icons.backspace_rounded, size: 50,),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],

      ),
    );
  }
}
