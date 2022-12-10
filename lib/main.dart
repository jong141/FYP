import 'package:flutter/material.dart';
import 'package:extended_math/extended_math.dart';
import 'pages/rcRoute.dart';




main()
{
  runApp(MaterialApp (
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  double alpha = 0;
  double beta = 0;
  double omega = 0;
  double mu = 0;
  double real_epsilon = 0;
  double im_epsilon = 0;
  Complex infoText = Complex(re: 0 , im: 0);
  Complex x = Complex(re: 0 , im: 0);
  TextEditingController controller1 = TextEditingController();
  TextEditingController controller2 = TextEditingController();
  TextEditingController controller3 = TextEditingController();
  TextEditingController controller4 = TextEditingController();
  TextEditingController controller5 = TextEditingController();
  TextEditingController controller6 = TextEditingController();

  docomplex() {
    setState(() {
      alpha = double.parse(controller1.text);
      beta = double.parse(controller2.text);
      final a = Complex(re: alpha , im: 0);
      final b = Complex(re: 0 , im: beta);
      final propagration_constant = a + b;
      x = propagration_constant;
      print(propagration_constant);
    });
    return x;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Math v14'),
        centerTitle: true,
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.only(left: 10.0 , top:50.0),
          child: Column(
            children: [

              Row(
                children: [
                  Expanded(
                    child:SizedBox(
                      height: 100,
                      width: 170,
                      child: TextField(
                        controller: controller1,
                        decoration: InputDecoration(
                            labelText: "Alpha",
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20))
                        ),
                        keyboardType: TextInputType.number,
                      ),
                    ),
                  ),
                  Expanded(child:
                  SizedBox(

                    height: 100,
                    width: 170,
                    child: TextField(
                      controller: controller2,
                      decoration: InputDecoration(
                          labelText: "Beta",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20))
                      ),
                      keyboardType: TextInputType.number,
                    ),
                  ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child:SizedBox(
                      height: 100,
                      width: 170,
                      child: TextField(
                        controller: controller3,
                        decoration: InputDecoration(
                            labelText: "w",
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20))
                        ),
                        keyboardType: TextInputType.number,
                      ),
                    ),
                  ),
                  Expanded(child:
                  SizedBox(

                    height: 100,
                    width: 170,
                    child: TextField(
                      controller: controller4,
                      decoration: InputDecoration(
                          labelText: "u",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20))
                      ),
                      keyboardType: TextInputType.number,
                    ),
                  ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child:SizedBox(
                      height: 100,
                      width: 170,
                      child: TextField(
                        controller: controller5,
                        decoration: InputDecoration(
                            labelText: "Real Ec",
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20))
                        ),
                        keyboardType: TextInputType.number,
                      ),
                    ),
                  ),
                  Expanded(child:
                  SizedBox(

                    height: 100,
                    width: 170,
                    child: TextField(
                      controller: controller6,
                      decoration: InputDecoration(
                          labelText: "Im Ec",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20))
                      ),
                      keyboardType: TextInputType.number,
                    ),
                  ),
                  ),
                ],
              ),

              Row(
                children: [
                  Expanded(
                    child: SizedBox(
                      height: 50,
                      child: ElevatedButton(
                          onPressed: () {
                            _vaildateUserinput(controller1.text) && _vaildateUserinput(controller2.text) && _vaildateUserinput(controller3.text) && _vaildateUserinput(controller4.text) && _vaildateUserinput(controller5.text);
                            },

                          child: Text('Complex Propagration Constant', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),)
                      ),
                    ),
                  ),
                ],
              ),
              Card(
                color: Colors.purple,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20.0, 35, 15.0, 40.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween ,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Text(
                        'X1 = $infoText',
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );

  }
  _vaildateUserinput(String input){

    if(controller1.text != '' && controller2.text != '')
    {
      setState(() {
        alpha = double.parse(controller1.text);
        beta = double.parse(controller2.text);
        final a = alpha;
        final b = beta;
        final propagration_constant = Complex(re: a, im: b);
        infoText = propagration_constant;
        Navigator.push(context,
            MaterialPageRoute(
                builder: (context) => complex_propagation_constant(
                  a : a,
                  b : b,
                  propagration_constant : propagration_constant,
                )
            )
        );
      });
    }

    else if (controller3.text != '' && controller4.text != '' && controller5.text != '' && controller6.text != '')
      {
        setState(() {
          omega = double.parse(controller3.text);
          mu = double.parse(controller4.text);
          real_epsilon = double.parse(controller5.text);
          im_epsilon = double.parse(controller6.text);
          //calculation
          final m = Complex(re: mu , im: 0);
          final E = Complex(re: real_epsilon , im: im_epsilon);
          final w = Complex(re: 0 , im: omega);
          final z = m*E;
          final r = sqrt(z.module);
          final angle = z.argument/2;
          final root = Complex(re: r*cos(angle), im: r*sin(angle));
          final propagration_constant1 = w*root;
          //display value
          final omega1 = omega;
          final mu1 = mu;
          final Ec_real = real_epsilon;
          final Ec_im = im_epsilon;
          final root_real = r*cos(angle);
          final root_im =  r*sin(angle) ;
          infoText = propagration_constant1;
         // Navigator.push(context,
            //  MaterialPageRoute(
             //     builder: (context) => complex_propagation_constant(
             //       m : m,
             //       E : E,
             //       w : w,
             //       z : z,
              //      r : r,
               //     angle : angle,
               //     root : root,
                //    propagration_constant1 : propagration_constant1,
           //       )
           //   )
          //);
        });

      }

    else
    {
      infoText = infoText;
    }

  }
}













