import 'package:flutter/material.dart';
import 'package:flutter_math_fork/flutter_math.dart';




class complex_propagation_constant extends StatefulWidget {
  final a;
  final b;
  final propagration_constant;
  final m;
  final E;
  final w;
  final z;
  final r;
  final angle;
  final root;
  final propagration_constant1;

  complex_propagation_constant({
    this.a,
    this.b,
    this.propagration_constant,
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
  _complex_propagation_constantState createState() => _complex_propagation_constantState(
    this.a,
    this.b,
    this.propagration_constant,
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
class _complex_propagation_constantState extends State<complex_propagation_constant> {
  final a;
  final b;
  final propagration_constant;
  final m;
  final E;
  final w;
  final z;
  final r;
  final angle;
  final root;
  final propagration_constant1;


  _complex_propagation_constantState(
      this.a,
      this.b,
      this.propagration_constant,
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
        title: Center(
          child: Math.tex(r'\varUpsilon =' +a!.toStringAsPrecision(3) +r'+ j'+b!.toStringAsPrecision(3),textStyle:const TextStyle(fontSize: 20)),
        ),

        actions: [
          TextButton(onPressed: (){
          },
            child : ExpansionTile(
              title: Text("Step By Step Guide " ,
                style:TextStyle(color: Colors.black , fontSize: 20,),
              ),
              children: [
                const SizedBox( height: 20),
                Math.tex(r'\varUpsilon =' +a!.toStringAsPrecision(3) +r'+ j'+b!.toStringAsPrecision(3),textStyle:const TextStyle(fontSize: 20)),
                const SizedBox( height: 20),
              ],
            ),
          ),

          TextButton(onPressed: (){
            Navigator.pop(context);
          },
            child: Text("Back" ,
            style:TextStyle(color: Colors.black , fontSize: 20,),
          ),
          ),
        ],
      ),
    );
  }
}