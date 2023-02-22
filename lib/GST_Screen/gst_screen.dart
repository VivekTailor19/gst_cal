import 'package:flutter/material.dart';

class GST_Calculator extends StatefulWidget {
  const GST_Calculator({Key? key}) : super(key: key);

  @override
  State<GST_Calculator> createState() => _GST_CalculatorState();
}

dynamic amount = "";



class _GST_CalculatorState extends State<GST_Calculator> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SizedBox(height: 10,),

        Name_Price("ORIGINAL PRICE", "$amount"),
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
                  InkWell(onTap: (){
                    setState(() {

                      amount = ( double.parse(amount) *  0.03 ) ;
                    });
                  },
                      child: Button_Per(3)),
                    InkWell(onTap: (){
                      setState(() {
                        amount =  int.parse(amount) *  0.05 ;
                      });
                    },
                        child: Button_Per(5)),
                    InkWell(onTap: (){
                      setState(() {
                        amount =  int.parse(amount) *  0.12 ;
                      });
                    },
                        child: Button_Per(12)),
                    InkWell(onTap: (){
                      setState(() {
                        amount =  int.parse(amount) *  0.18 ;
                      });
                    },
                        child: Button_Per(18)),
                    InkWell(onTap: (){
                      setState(() {
                        amount =  int.parse(amount) *  0.28 ;
                      });
                    },
                        child: Button_Per(28)),
                ],),
              )
            ],
          ),
        ), //   GST Percentage BAR
        SizedBox(height: 10,),

        Name_Price("FINAL PRICE", "$amount" ),
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
          child: Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,

              children: [
                Expanded(
                  child: Container(
                    height: double.infinity,
                    width: 300,
                    child: Expanded(
                      child: Column(
                        children: [
                          Expanded(
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                              Expanded(child: InkWell(onTap: (){
                                  setState(() { amount = "7"; }); },
                                  child: Number("7"))),
                                Expanded(child: InkWell(onTap: (){
                                  setState(() { amount = "8"; }); },
                                    child: Number("8"))),
                                Expanded(child: InkWell(onTap: (){
                                  setState(() { amount = "9"; }); },
                                    child: Number("9"))),
                            ],),
                          ),
                          Expanded(
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Expanded(child: InkWell(onTap: (){
                                  setState(() { amount = "4"; }); },
                                    child: Number("4"))),
                                Expanded(child: InkWell(onTap: (){
                                  setState(() { amount = "5"; }); },
                                    child: Number("5"))),
                                Expanded(child: InkWell(onTap: (){
                                  setState(() { amount = "6"; }); },
                                    child: Number("6"))),
                              ],),
                          ),
                          Expanded(
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Expanded(child: InkWell(onTap: (){
                                  setState(() { amount = "1"; }); },
                                    child: Number("1"))),
                                Expanded(child: InkWell(onTap: (){
                                  setState(() { amount = "2"; }); },
                                    child: Number("2"))),
                                Expanded(child: InkWell(onTap: (){
                                  setState(() { amount = "3"; }); },
                                    child: Number("3"))),
                              ],),
                          ),
                          Expanded(
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Expanded(child: InkWell(onTap: (){
                                  setState(() { amount = "00"; }); },
                                    child: Number("00"))),
                                Expanded(child: InkWell(onTap: (){
                                  setState(() { amount = "0"; }); },
                                    child: Number("0"))),
                                Expanded(child: InkWell(onTap: (){
                                  setState(() { amount = "."; }); },
                                    child: Number("."))),
                              ],),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),  //   Numbers
                Expanded(
                  child: Container(
                    height: double.infinity,
                    width: 100,
                    alignment: Alignment.center,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Button_Color(Text("AC",style: TextStyle(color: Colors.white,fontSize: 20),),),
                        Button_Color(Icon(Icons.backspace_outlined,size: 20,color: Colors.white,))
                        // Button  <<-
                      ],
                    ) ,
                  ),
                ),  //   Buttons
              ],
            ),
          ),
        ),
        SizedBox(height: 10,),

        
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
                      Text("${rupess} Rs. ", style: TextStyle(fontSize: 20),),
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
            height:150,
            width: 90,
            alignment: Alignment.center,
            child:  w1 ,
            decoration: BoxDecoration(color: Color(0xffFF6B00),borderRadius: BorderRadius.circular(40)),
          );
      }

      Widget Number(String num)
      {
          return Container(
            height: 100,
            width: 100,
            alignment: Alignment.center,
            child:  Text("$num",style: TextStyle(fontSize: 15),),
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