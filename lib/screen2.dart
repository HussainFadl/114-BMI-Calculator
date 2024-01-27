import 'package:flutter/material.dart';
import 'package:project1_bmi_claculator/app_colors.dart';

// ignore: camel_case_types
class screen2 extends StatelessWidget {
  const  screen2({super.key, required this.res});

  
   final double res ;

    String getClassification(){

      if (res< 16 ){
        return 'Severe Thinness';
        }else if (res >16 && res <17){
          return 'Moderate Thinness';
        }else if(res >17 && res <18.5){
          return 'Normal';
        }else if (res >25 && res < 30){
          return 'Overweight';
        }else if(res > 30 && res < 35){
          return 'Obese Class I';
        }else if(res >35 && res <40){
          return 'Obese Class II';
        }else{
          return 'Obese Class III';
        }
   }
     void  getColor(){
       switch (res) {
        case '16':
           AppColors.redColor;
          break;
        default:
      }
     }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text('Result Screen'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Your Result',
            style: TextStyle(color: AppColors.whiteColor),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Expanded(
                
                child: Container(
                  height: 500,
                  width: 400,
                  decoration: BoxDecoration(color: AppColors.containerColor),
                  child: Center(
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 60,
                        ),
                         Text(
                          getClassification(),
                          style: TextStyle(color: Colors.green,
                          fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 100,
                        ),
                        Text(
                           res.toStringAsFixed(3),
                          style:const  TextStyle(
                            color: Colors.white,
                            fontSize: 20),
                        ),
                        const Center(
                          child: Text(
                            'your body weight is absolutely normal, \n Good Job 💪🏻',
                            style: TextStyle(color: Colors.white,
                            fontSize: 15),
                            
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 70,
            width: double.infinity,
            child: ElevatedButton(
              
              onPressed: () {
                Navigator.of(context).pop();
              },
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.all(20),
                  backgroundColor: AppColors.redColor,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15))),
              child:  Text(
                'Recalculate',
                style: TextStyle(color: AppColors.whiteColor),
              ),
            ),
          )
        ],
      ),
    );
  }
}
