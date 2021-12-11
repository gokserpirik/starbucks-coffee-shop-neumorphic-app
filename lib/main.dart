import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutterikisekiz/classes.dart';
import 'package:get/get.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:percent_indicator/percent_indicator.dart';




void main() => runApp(GetMaterialApp(home: NeumorphicApp(
  debugShowCheckedModeBanner: false,
      title: 'Neumorphic App',
      theme: NeumorphicThemeData(buttonStyle: NeumorphicStyle(color: Colors.transparent)),
  home:Home() ,) ,));

class Controller extends GetxController{
  var count = 0.obs;
  var money = "\$100";
  int indexmoneyadd = 1 ;
  increment() => count++;
}

class Home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
      final Controller c = Get.put(Controller());

    return Scaffold(
      backgroundColor:Color(0xFFF0F0F3) ,
      
      body: 
      SafeArea(
        child: Column(
          children: [
             starbucksBar(),

             SizedBox(height: 8,),            

             
                 //* Percentage
                
              InkWell(
                onTap: ()=>Get.to(CoffeeCheck()),
                child: CircularPercentIndicator(
                  radius: 240.0,
                  lineWidth: 5.0,
                  animation: true,
                  percent: 0.7,
                  center: 
                   NeuHome(child: Column(
                children: [
                  NeumorphicIcon(Icons.coffee, style: NeumorphicStyle(color:Color(0xFF00754A), depth:4  ),size: 80 , ),
                  NeumorphicText("7/10", textStyle: NeumorphicTextStyle(fontSize: 20, fontWeight: FontWeight.w800), style: NeumorphicStyle(depth: 2,color: Colors.black),),
                ],
                          ), paddingsize: 60)
                           ,
                  
                   
                  
                  circularStrokeCap: CircularStrokeCap.round,
                  progressColor: Color(0xFF00754A),
                ),
              ),

             

            SizedBox(height: 32,),
            Divider(thickness: 2,height: 2,),
            SizedBox(height: 32,),
            //*Cards
            textNeum(text: "Cards", depth: 2, size: 20),
SizedBox(height: 16,),

            Padding(
              padding: const EdgeInsets.only(left:10.0,right: 10,top: 4,bottom: 12),
              child: InkWell(
                onTap: ()=> Get.to(Naber()),
                child: CardN(child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  //* Card
                  CardN(child: Image(image: NetworkImage("https://cdn.pixabay.com/photo/2016/04/01/11/00/bank-1300155_1280.png"),fit: BoxFit.contain,height: 50,), paddingsize: 0),
                  //* Money
                  textNeum(text: "${c.money}", depth: 2, size: 35),
                  //* See more
                  NeumorphicIcon(Icons.navigate_next, style: NeumorphicStyle(color: Colors.black), size: 30,)
                ],), paddingsize: 30),
              ),
            ),

SizedBox(height: 16,),
            //*Favorites
            textNeum(text: "Favourites", depth: 2, size: 20),
SizedBox(height: 16,),
            
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(children: List.generate(10, (index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal:10.0),
                  child: CardN(child: Column(children: [
              NeuCircle(icon: Icons.shopping_bag, iconsize: 25, paddingsize: 10),
              SizedBox(height: 10,),
              textNeum(text: "Starbucks \n Merch", depth: 2, size: 15)
            ],), paddingsize: 20),
                );
              }),))

          ],
        ),
      )     
      
    );
  }
}


//! 2nd Page

class Naber extends StatelessWidget {
  final Controller c = Get.put(Controller());



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: 
      Center(
        child: Column(
          children: [
          starbucksBar(),
          CardN(child: Image(image: NetworkImage("https://cdn.pixabay.com/photo/2016/04/01/11/00/bank-1300155_1280.png"),
          fit: BoxFit.contain,width: 250,), paddingsize: 20),
SizedBox(height:20),
          textNeum(text: "${c.money}", depth: 2, size: 44),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Divider(thickness: 3,),
          ),
          textNeum(text: "Add money", depth: 1, size: 30),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(moneyaddlist.length, (indexmoneyadd) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal:8.0),
                  child: InkWell(
                    onTap: ()=> Get.to(SuccessAdd()),
                    child: CardN(child: SizedBox(width: 100,height: 150,child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                NeuCircle(icon: Icons.add, iconsize: 30, paddingsize: 10),
                                Padding(
                    padding: const EdgeInsets.symmetric(vertical:20.0),
                    child: textNeum(text: moneyaddlist[indexmoneyadd], depth: 2, size: 20),
                                ),
                                NeumorphicIcon(Icons.navigate_next, style: NeumorphicStyle(color: Colors.black,),size: 30,)
                              ],),), paddingsize: 15),
                  ),
                );
              }),
            ),
          )
        ],),
      )
      
      ),
    );
  }
}
class SuccessAdd extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Text("a"),),
    );
  }
}

class CoffeeCheck extends StatelessWidget {
  dynamic onalti =  SizedBox(height: 16,);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Column(children: [
        starbucksBar(),
         NeuHome(child: Column(
                children: [
                  NeumorphicIcon(Icons.coffee, style: NeumorphicStyle(color:Color(0xFF00754A), depth:4  ),size: 80 , ),
                ],
                          ), paddingsize: 60),
        onalti,
        textNeum(text: "Coffee Details", depth: 1, size: 30),
        onalti,
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: List.generate(5, (index) {
              return Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Cups of Coffee(Week): ", style: TextStyle(fontSize: 16),),
              NeumorphicText("8", style: NeumorphicStyle(color: Color(0xFF231F20)),textStyle: NeumorphicTextStyle(fontWeight: FontWeight.w700, fontSize: 18),)
            ],
          );
            }),
          ),
        ),
        
        onalti,
        Divider(thickness: 2,),
        onalti,
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: InkWell(
            onTap: ()=> Get.to(BuyLastOrder()),
            child: CardN(child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                      //* Card
                      CardN(child: Image(image: NetworkImage("https://cdn.pixabay.com/photo/2017/05/26/15/02/starbucks-2346226_1280.jpg"),fit: BoxFit.contain,height: 50, ), paddingsize: 0),
                      //* Money
                      textNeum(text: "Last Order", depth: 2, size: 30),
                      //* See more
                      NeumorphicIcon(Icons.navigate_next, style: NeumorphicStyle(color: Colors.black), size: 30,)
                    ],), paddingsize: 30),
          ),
        ),
        onalti,
      
      
      ],),),
    );
  }
}

class BuyLastOrder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Column(
        
        children: [
        starbucksBar(),
        NeuHome(child:Image(image:NetworkImage("https://cdn.pixabay.com/photo/2014/04/03/00/31/cup-308528_1280.png"),
        width: 150,fit: BoxFit.fitWidth,) , paddingsize: 1),
          SizedBox(height: 10,),
         NeumorphicText("Americano", style: NeumorphicStyle(color: Color(0xFF231F20),depth: 2,intensity: 0.7), textStyle: NeumorphicTextStyle(fontSize: 28,fontWeight: FontWeight.bold),),
         SizedBox(height: 20,),
        NeumorphicButton(style: NeumorphicStyle(color: Color(0xFF00754A),boxShape: NeumorphicBoxShape.stadium()),child: NeumorphicText("Buy Again", style: NeumorphicStyle(color: Colors.white,depth: 2,intensity: 0.7), textStyle: NeumorphicTextStyle(fontSize: 20),),
        )
      ],),),

      
    );
  }
}

List<String> moneyaddlist = ["\$5", "\$25", "\$50"];


