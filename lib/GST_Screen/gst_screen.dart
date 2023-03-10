import 'package:flutter/material.dart';

class GST_Calculator extends StatefulWidget {
  const GST_Calculator({Key? key}) : super(key: key);

  @override
  State<GST_Calculator> createState() => _GST_CalculatorState();
}

dynamic amount = "" ;
dynamic final_amount = "" ;

//bool per = false;

bool per1 = false;
bool per2 = false;
bool per3 = false;
bool per4 = false;
bool per5 = false;
dynamic per = "";

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
          height: 60,
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
                      per1 = true;
                      per2 = false;
                      per3 = false;
                      per4 = false;
                      per5 = false;
                      per = 0.03;

                      final_amount = ( double.parse(amount) *  0.03 ) + double.parse(amount) ;
                      });
                    },
                      child: Button_Per(3,per1)),
                  InkWell(onTap: (){
                    setState(() {
                      per1 = false;
                      per2 = true;
                      per3 = false;
                      per4 = false;
                      per5 = false;
                      per = 0.05;

                      final_amount = ( double.parse(amount) *  0.05 ) + double.parse(amount);
                    });
                  },
                      child: Button_Per(5,per2)),
                    InkWell(onTap: (){
                      setState(() {
                        per1 = false;
                        per2 = false;
                        per3 = true;
                        per4 = false;
                        per5 = false;
                        per = 0.12;

                        final_amount = ( double.parse(amount) *  0.12 ) + double.parse(amount) ;
                      });
                    },
                        child: Button_Per(12,per3)),
                    InkWell(onTap: (){
                      setState(() {
                        per1 = false;
                        per2 = false;
                        per3 = false;
                        per4 = true;
                        per5 = false;
                        per = 0.18;

                        final_amount = ( double.parse(amount) *  0.18 ) + double.parse(amount) ;
                      });
                    },
                        child: Button_Per(18,per4)),
                    InkWell(onTap: (){
                      setState(() {
                        per1 = false;
                        per2 = false;
                        per3 = false;
                        per4 = false;
                        per5 = true;
                        per = 0.28;

                        final_amount = ( double.parse(amount) *  0.28 ) + double.parse(amount) ;
                      });
                    },
                        child: Button_Per(28,per5)),


                ],),
              )
            ],
          ),
        ), //   GST Percentage BAR
        SizedBox(height: 10,),

        Name_Price("FINAL PRICE", "$final_amount" ),
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
                                  setState(() { amount = amount + "7"; }); },
                                  child: Number("7"))),
                                Expanded(child: InkWell(onTap: (){
                                  setState(() { amount = amount + "8"; }); },
                                    child: Number("8"))),
                                Expanded(child: InkWell(onTap: (){
                                  setState(() { amount = amount + "9"; }); },
                                    child: Number("9"))),
                            ],),
                          ),
                          Expanded(
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Expanded(child: InkWell(onTap: (){
                                  setState(() { amount = amount + "4"; }); },
                                    child: Number("4"))),
                                Expanded(child: InkWell(onTap: (){
                                  setState(() { amount = amount + "5"; }); },
                                    child: Number("5"))),
                                Expanded(child: InkWell(onTap: (){
                                  setState(() { amount = amount + "6"; }); },
                                    child: Number("6"))),
                              ],),
                          ),
                          Expanded(
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Expanded(child: InkWell(onTap: (){
                                  setState(() { amount = amount + "1"; }); },
                                    child: Number("1"))),
                                Expanded(child: InkWell(onTap: (){
                                  setState(() { amount = amount + "2"; }); },
                                    child: Number("2"))),
                                Expanded(child: InkWell(onTap: (){
                                  setState(() { amount = amount + "3"; }); },
                                    child: Number("3"))),
                              ],),
                          ),
                          Expanded(
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Expanded(child: InkWell(onTap: (){
                                  setState(() { amount = amount + "00";; }); },
                                    child: Number("00"))),
                                Expanded(child: InkWell(onTap: (){
                                  setState(() { amount = amount + "0"; }); },
                                    child: Number("0"))),
                                Expanded(child: InkWell(onTap: (){
                                  setState(() { amount = amount + "."; }); },
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
                    child: Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          InkWell( onTap: (){
                            setState(() {
                              amount = "";
                              final_amount = "";
                            });
                          },
                              child: Button_Color(Text("AC",style: TextStyle(color: Colors.white,fontSize: 20),),)),
                          InkWell(onTap: (){
                            setState(() {


                                  int press = 1 ;
                                  String temp = amount ;
                                  amount = "";
                                  for(int i = 0 ; i < temp.length - press ; i++)
                                  {
                                     amount = amount +  temp[i] ;
                                  }
                                  temp = amount ;
                                  final_amount = ( double.parse(temp) *  per ) + double.parse(temp) ;;

                            });
                          },
                              child: Button_Color(Icon(Icons.backspace_outlined,size: 20,color: Colors.white,)))
                          // Button  <<-
                        ],
                      ),
                    ) ,
                  ),
                ),  //   Buttons
              ],
            ),
          ),
        ),
        //SizedBox(height: 10,),

        
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
      
      Widget Button_Per(int num,bool click)
      {
        return Container(
          height: 30,
          width: 50,
          alignment: Alignment.center,
          child: Text("${num}%",style: TextStyle(fontSize: 20),),
          decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(5)),
              color: click ? Color(0xffFF6B00) : Colors.white),
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
