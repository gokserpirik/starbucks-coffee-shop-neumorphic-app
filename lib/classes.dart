import 'package:flutter/material.dart';
import 'package:flutterikisekiz/main.dart';
import 'package:get/get.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class NeuCircle extends StatefulWidget {
  final IconData icon;
  final double iconsize;
  final double paddingsize;
  const NeuCircle({ Key? key, required this.icon ,required this.iconsize,required this.paddingsize}) : super(key: key);

  @override
  _NeuCircleState createState() => _NeuCircleState();
}

class _NeuCircleState extends State<NeuCircle> {
  @override
  Widget build(BuildContext context) {
    return 
                   Neumorphic(
                     style: NeumorphicStyle(
                       depth: -2,
        shape: NeumorphicShape.concave,
                       color: Colors.transparent ,border: NeumorphicBorder(),boxShape: NeumorphicBoxShape.circle()),
                   child:Padding(
                     padding: EdgeInsets.all(widget.paddingsize),
                     child: NeumorphicIcon( widget.icon, size: widget.iconsize, style: NeumorphicStyle(color: Color(0xFFA3ADB2)),),
                   ),);
  }
}

class NeuHome extends StatefulWidget {
  final Widget child;
  final double paddingsize;
  const NeuHome({ Key? key, required this.child, required this.paddingsize }) : super(key: key);

  @override
  _NeuHomeState createState() => _NeuHomeState();
}

class _NeuHomeState extends State<NeuHome> {
  @override
  Widget build(BuildContext context) {
    return   Neumorphic(
      style: NeumorphicStyle(
        depth: -2,
        shape: NeumorphicShape.concave,
        color: Colors.transparent ,border: NeumorphicBorder(),boxShape: NeumorphicBoxShape.circle(),),
                   child:Padding(
                     padding: EdgeInsets.all(widget.paddingsize),
                     child: widget.child
                   ),);
  }
}

class textNeum extends StatefulWidget {
  final String text;
  final double depth;
  final double size;
  const textNeum({ Key? key, required this.text, required this.depth, required this.size }) : super(key: key);

  @override
  _textNeumState createState() => _textNeumState();
}

class _textNeumState extends State<textNeum> {
  @override
  Widget build(BuildContext context) {
    return  NeumorphicText(widget.text,style:NeumorphicStyle(color: Colors.black ,depth: widget.depth), textStyle: NeumorphicTextStyle(fontWeight: FontWeight.w800,fontSize: widget.size),);

  }
}

class CardN extends StatefulWidget {
  final Widget child;
  final double paddingsize;
  const CardN({ Key? key, required this.child, required this.paddingsize}) : super(key: key);

  @override
  _CardNState createState() => _CardNState();
}

class _CardNState extends State<CardN> {
  @override
  Widget build(BuildContext context) {
    return Neumorphic(
      style: NeumorphicStyle(
        depth: -2,
        shape: NeumorphicShape.concave,
        color: Colors.transparent ,border: NeumorphicBorder(),),
                   child:Padding(
                     padding: EdgeInsets.all(widget.paddingsize),
                     child: widget.child
                   ),);
  }
}


class starbucksBar extends StatelessWidget {
  const starbucksBar({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
               padding: const EdgeInsets.only(left:10.0,right: 10,top: 4,bottom: 12),
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                  
                   InkWell(onTap: ()=> Get.to(MenuPage()),
                     child: NeuCircle(icon: Icons.menu,iconsize: 24, paddingsize: 12,)),
                   
                   Text("STARBUCKS", style: TextStyle(color: Color(0xFF231F20), fontWeight: FontWeight.w800, fontSize: 25),),

                  InkWell(onTap:()=>Get.to(NotificationsN()) ,
                    child: NeuCircle(icon: Icons.notifications,iconsize: 24, paddingsize: 12,)),

                 ],
               ),
             );
  }
}


class NewNotf extends StatefulWidget {
   final String content ;
  const NewNotf({ Key? key, required this.content }) : super(key: key);

  @override
  _NewNotfState createState() => _NewNotfState();
}

class _NewNotfState extends State<NewNotf> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: CardN(child: SizedBox(
                width: 400,
                height: 50,
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 010.0),
                    child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                      NeuCircle(icon: Icons.notifications, iconsize: 20, paddingsize: 10),
                      Text(widget.content, style: TextStyle(fontSize: 14,color: Colors.black,fontWeight: FontWeight.w700),)
                      ,NeumorphicIcon(Icons.navigate_next, style: NeumorphicStyle(color: Colors.black), size: 30,)

                    ],),
                  ),
                ),
              ), paddingsize: 5),
    );
  }
}


 

 List notfs = ["New Coffee! Order NOW!", "You Have 1 Free Coffee: Claim NOW!",
 "New Year Specials On Stock"];

 List menuopt = ["My Account","Orders","Payment Options"];

 class MenuOpt extends StatefulWidget {
  final  TextStyle style;
   final String content;
   const MenuOpt({ Key? key , required this.style, required this.content}) : super(key: key);
 
   @override
   _MenuOptState createState() => _MenuOptState();
 }
 
 class _MenuOptState extends State<MenuOpt> {
   @override
   Widget build(BuildContext context) {
     return Column(children: [
              Divider(thickness: 2,),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(widget.content, style: widget.style ,),
              )]);
   }
 }