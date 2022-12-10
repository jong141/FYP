import 'package:flutter/material.dart';
import 'package:flutter_math_fork/flutter_math.dart';



class complex_propagation_constant1 extends StatefulWidget {
  final m;
  final E;
  final w;
  final z;
  final r;
  final angle;
  final root;
  final propagration_constant1;

  complex_propagation_constant1({
    this.m,
    this.E,
    this.w,
    this.z,
    this.r,
    this.angle,
    this.root,
    this.propagration_constant1,

  });

  @override
  _complex_propagation_constant1State createState() => _complex_propagation_constant1State(
    this.m,
    this.E,
    this.w,
    this.z,
    this.r,
    this.angle,
    this.root,
    this.propagration_constant1,

  );
}
class _complex_propagation_constant1State extends State<complex_propagation_constant1> {
  final m;
  final E;
  final w;
  final z;
  final r;
  final angle;
  final root;
  final propagration_constant1;


  _complex_propagation_constant1State(
      this.m,
      this.E,
      this.w,
      this.z,
      this.r,
      this.angle,
      this.root,
      this.propagration_constant1,

      );

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      color: Colors.white,
      child: AlertDialog(
        title: Text("Result: \n \n $propagration_constant1",
            textAlign: TextAlign.center,
            style:TextStyle(color: Colors.black , fontSize: 23)),
        backgroundColor: Colors.white,
        insetPadding: EdgeInsets.symmetric(horizontal: 20 ),

        actions: [
          TextButton(onPressed: (){
          },
            child : ExpansionTile(
              title: Center(
                child: Math.tex(r'\varUpsilon =' +w!.toStringAsPrecision(3) ,textStyle:const TextStyle(fontSize: 20)),
              ),

              children: [
                const SizedBox( height: 20),
                Math.tex(r'\varUpsilon =' +propagration_constant!.toString() ,textStyle:const TextStyle(fontSize: 20)),
                const SizedBox( height: 20),
              ],
            ),
          ),

          TextButton(onPressed: (){
            Navigator.pop(context);
          },child: Text("Back" ,
            style:TextStyle(color: Colors.black , fontSize: 20,),
          ),
          ),


        ],

      ),
    );
  }
}