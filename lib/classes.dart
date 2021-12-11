import 'package:flutter/material.dart';
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
                  
                   NeuCircle(icon: Icons.menu,iconsize: 24, paddingsize: 12,),
                   
                   Text("STARBUCKS", style: TextStyle(color: Color(0xFF231F20), fontWeight: FontWeight.w800, fontSize: 25),),

                  NeuCircle(icon: Icons.notifications,iconsize: 24, paddingsize: 12,),

                 ],
               ),
             );
  }
}

