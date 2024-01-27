import 'package:flutter/material.dart';
import 'package:project1_bmi_claculator/app_colors.dart';
import 'package:project1_bmi_claculator/screen2.dart';

// ignore: camel_case_types
class screen1 extends StatefulWidget {
  const screen1({super.key});

  @override
  State<screen1> createState() => _screen1State();
}

// ignore: camel_case_types
class _screen1State extends State<screen1> {
  int age = 19;
  int wieght = 60;
  int height = 150;
  bool isMale = true;
  Color getColor( bool isMale){
     Color color =(isMale)?AppColors.redColor : AppColors.containerColor;
     return color;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      appBar: AppBar(
          title: Text('BMI Calculator',
              style: TextStyle(color: AppColors.whiteColor)),
          centerTitle: true,
          backgroundColor: AppColors.btnColor),
      body: Column(
        children: [
          // Row container for male & female
          Expanded(
            flex: 1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {

                      setState(() {
                        isMale = true;
                      });
                      
                    },
                    child: Container(
                      height: 300,
                      margin: const EdgeInsets.all(10),
                      width: 150,
                      decoration: BoxDecoration(
                          color: (isMale)
                          ?AppColors.redColor
                          : AppColors.containerColor,
                          borderRadius: BorderRadius.circular(20)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.male,
                            color: AppColors.whiteColor,
                            size: 100,
                          ),
                          Text(
                            'Male',
                            style: TextStyle(color: AppColors.whiteColor),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: (){
                      setState(() {
                        isMale = false;
                      });

                    },
                    child: Container(
                      height: 300,
                      margin: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 10),
                      width: 150,
                      decoration: BoxDecoration(
                          color: (isMale)?
                               AppColors.containerColor
                               :AppColors.redColor,
                          borderRadius: BorderRadius.circular(20)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.female,
                              color: AppColors.whiteColor, size: 100),
                          Text('Female',
                              style: TextStyle(color: AppColors.whiteColor)),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          // Height
          Expanded(
            flex: 1,
            child: Container(
              height: 300,
              margin: const EdgeInsets.all(10),
              width: 400,
              decoration: BoxDecoration(
                  color: AppColors.containerColor,
                  borderRadius: BorderRadius.circular(20)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Height',
                    style: TextStyle(color: AppColors.whiteColor),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('$height',
                          style: TextStyle(
                              color: AppColors.whiteColor,
                              fontSize: 25,
                              fontWeight: FontWeight.bold)),
                      Text('  cm',
                          style: TextStyle(
                            color: AppColors.whiteColor,
                          ))
                    ],
                  ),
                  Slider(
                    value: height.toDouble(),
                    min: 90,
                    max: 220,
                    activeColor: AppColors.redColor,
                    thumbColor: AppColors.redColor,
                    inactiveColor: AppColors.btnColor,
                    onChanged: (value) {
                      setState(() {
                        height = value.toInt();
                      });
                    },
                  )
                ],
              ),
            ),
          ),
          // Row container for Weight & age
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    height: 300,
                    margin: const EdgeInsets.all(10),
                    width: 150,
                    decoration: BoxDecoration(
                        color: AppColors.containerColor,
                        borderRadius: BorderRadius.circular(20)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // wieght button ===============
                        Text('Weight',
                            style: TextStyle(color: AppColors.whiteColor)),
                        Text(
                          '$wieght kg',
                          style: TextStyle(
                              color: AppColors.whiteColor,
                              fontSize: 30,
                              fontWeight: FontWeight.bold),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            IconButton(
                                onPressed: () {
                                  setState(() {
                                    wieght = --wieght;
                                  });
                                },
                                icon: const Icon(Icons.remove),
                                style: IconButton.styleFrom(
                                    backgroundColor: AppColors.btnColor,
                                    foregroundColor: AppColors.whiteColor,
                                    iconSize: 30)),
                            const SizedBox(
                              width: 15,
                            ),
                            IconButton(
                                onPressed: () {
                                  setState(() {
                                    wieght = ++wieght;
                                  });
                                },
                                icon: const Icon(Icons.add),
                                style: IconButton.styleFrom(
                                    backgroundColor: AppColors.btnColor,
                                    foregroundColor: AppColors.whiteColor,
                                    iconSize: 30))
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  //age button ===================
                  child: Container(
                    height: 300,
                    margin: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 10),
                    width: 150,
                    decoration: BoxDecoration(
                        color: AppColors.containerColor,
                        borderRadius: BorderRadius.circular(20)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Age',
                            style: TextStyle(color: AppColors.whiteColor)),
                        Text(
                          age.toString(),
                          style: TextStyle(
                              color: AppColors.whiteColor,
                              fontSize: 30,
                              fontWeight: FontWeight.bold),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            IconButton(
                                onPressed: () {
                                  setState(() {
                                    age = --age;
                                  });
                                },
                                icon: const Icon(Icons.remove),
                                style: IconButton.styleFrom(
                                    backgroundColor: AppColors.btnColor,
                                    foregroundColor: AppColors.whiteColor,
                                    iconSize: 30)),
                            const SizedBox(
                              width: 15,
                            ),
                            IconButton(
                                onPressed: () {
                                  setState(() {
                                    age = ++age;
                                  });
                                },
                                icon: const Icon(Icons.add),
                                style: IconButton.styleFrom(
                                    backgroundColor: AppColors.btnColor,
                                    foregroundColor: AppColors.whiteColor,
                                    iconSize: 30))
                          ],
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),

          // Calculate button
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  
                    double res = wieght / (height * 0.1  * height * 0.1 );
                    print('$res');
                    // navigate to a neww screen (screen2)
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => screen2(res: res),
                        ));
                  
                },
                style: ElevatedButton.styleFrom(
                  
                    backgroundColor: AppColors.redColor,
                    foregroundColor: AppColors.whiteColor,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
                child: Text(
                  'Calculate',
                  style: TextStyle(
                    color: AppColors.whiteColor,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
