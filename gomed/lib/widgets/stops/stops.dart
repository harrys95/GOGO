 import 'package:flutter/material.dart';
import 'package:gomed/widgets/schedule/schedule.dart';

void main() {
  runApp(MaterialApp(
      theme: ThemeData(
        primaryColor:   Colors.green,
      ),
      title: "Simple Material App",
      home: Slots()));
}

class Slots extends StatefulWidget {
  @override
  SlotsState createState() => SlotsState();
}

class SlotsState extends State<Slots> {
  // init the step to 0th position
  // ignore: non_constant_identifier_names
  int  current_step = 0;
  // ignore: non_constant_identifier_names
  List<Step> my_steps = [
    Step(
      // Title of the Step
        title: Text("sam"),
        content: Text("10 "),
    ),
    Step(
        title: Text("alex"),
        content: Text("8"),
    ),
    Step(
        title: Text("garry"),
        content: Text("7")
    ),
    Step(
        title: Text("harry"),
        content: Text("8")
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Body
      body: Container(
          child: Stepper(
            // Using a variable here for handling the currentStep
            currentStep: this.current_step,
            // List the steps you would like to have
            steps: my_steps,
            // Define the type of Stepper style
            // StepperType.horizontal :  Horizontal Style
            // StepperType.vertical   :  Vertical Style
            type: StepperType.vertical,
            // Know the step that is tapped
            onStepTapped: (step) {
              // On hitting step itself, change the state and jump to that step
              setState(() {
                // update the variable handling the current step value
                // jump to the tapped step
                current_step = step;
              });
              // Log function call
              print("onStepTapped : " + step.toString());
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Schedule()),
              );
            },
            onStepCancel: () {
              // On hitting cancel button, change the state
              setState(() {
                // update the variable handling the current step value
                // going back one step i.e subtracting 1, until its 0
                if (current_step > 0) {
                  current_step = current_step - 1;
                } else {
                  current_step = 0;
                }
              });
              // Log function call
              print("onStepCancel : " + current_step.toString());
            },
            // On hitting continue button, change the state
            onStepContinue: () {
              setState(() {
                // update the variable handling the current step value
                // going back one step i.e adding 1, until its the length of the step
                if (current_step < my_steps.length - 1) {
                  current_step = current_step + 1;
                } else {
                  current_step = 0;
                }
              });
              // Log function call
              print("onStepContinue : " + current_step.toString());
            },
          )),
    );
  }
}