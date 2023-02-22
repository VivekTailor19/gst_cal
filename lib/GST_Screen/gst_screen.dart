import 'package:flutter/material.dart';

class GST_Calculator extends StatefulWidget {
  const GST_Calculator({Key? key}) : super(key: key);

  @override
  State<GST_Calculator> createState() => _GST_CalculatorState();
}

class _GST_CalculatorState extends State<GST_Calculator> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: Column(
      children: [
        SizedBox(height: 10,),

        Name_Price("ORIGINAL PRICE", "1000"),
        SizedBox(height: 10,),
        
        Container(
          height: 50,
          width: double.infinity,
          color: Color(0xffEEEEEE),
          alignment: Alignment.center,
          child: Column(
            children: [
              Text("GST",style: TextStyle(fontSize: 20),),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  Button_Per(3),
                  Button_Per(5),
                  Button_Per(12),
                  Button_Per(18),
                  Button_Per(28),
                ],),
              )
            ],
          ),
        ), //   GST Percentage BAR
        SizedBox(height: 10,),

        Name_Price("FINAL PRICE", "10500"),
        SizedBox(height: 10,),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Container(
            height: 50,
            width: 250,
            alignment: Alignment.center,
            decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10)),color: Color(0xffEEEEEE),),

            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text("CGST/SGST",style: TextStyle(fontSize: 20),),
                Text("25",style: TextStyle(fontSize: 15),),


              ],
            ),
          ),
        ), //    CGST/SGST
        SizedBox(height: 10,),

        Container(
          height: 400,
          width: double.infinity,
          alignment: Alignment.center,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 400,
               width: 300,
              ),  //   Numbers
              Container(
                height: 400,
                width: 100,
                alignment: Alignment.center,
                child: Column(
                  children: [
                    Button_Color(Text("AC",style: TextStyle(color: Colors.white,fontSize: 20),),),
                    Button_Color(Icon(Icons.backspace_outlined,size: 20,color: Colors.white,))
                    // Button  <<-
                  ],
                ) ,
              ),  //   Buttons
            ],
          ),
        )


        
      ],
    ),

    );

  

  }

      Widget Name_Price(String name, String rupess)
      {
        return Container(
            height: 20,
            width: double.infinity,
           color: Color(0xffEEEEEE),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 35.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     Text("$name", style: TextStyle(fontSize: 16),),
                      Text("${rupess}.00 Rs. ", style: TextStyle(fontSize: 20),),
                             ],
                    ),
              ),
        );
      }
      
      Widget Button_Per(int num)
      {
        return Container(
          height: 20,
          width: 30,
          child: Text("${num}%",style: TextStyle(fontSize: 15),),
          decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(5))),
        );
      }
      Widget Button_Color(Widget w1)
      {
        return Container(
            height: double.infinity,
            width: 90,
            alignment: Alignment.center,
            child:  w1 ,
            decoration: BoxDecoration(color: Color(0xffFF6B00),borderRadius: BorderRadius.circular(40)),
          );
      }




}
/*

Row(

          children: [
            Text("$name", style: TextStyle(color: Color(0xffEEEEEE),fontSize: 14),),
            Text("$rs", style: TextStyle(color: Color(0xffEEEEEE),fontSize: 16),),

          ],
        ),

        Widget Price_Rs("ORIGINAL PRICE", "1000.00 Rs."),
        Widget Price_Rs("FINAL PRICE", "1000.00 Rs."),


Widget Name_Price(String name, String rs)
  {
    return Container(
      height: 20,
      width: double.infinity,
      color: Color(0xff252427),
      child:
    );

* */