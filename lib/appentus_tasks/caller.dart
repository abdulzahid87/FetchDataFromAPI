import 'package:appentus/appentus_tasks/api/api_task.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'getter.dart';
import 'api/image_author.dart';
import 'overflow.dart';


class Caller extends StatefulWidget {

  @override
  _CallerState createState() => _CallerState();
}

class _CallerState extends State<Caller> {
  Recipe recipe = Recipe(40, 54);


  void getData() {
    print(recipe.milkShake);

  }




  @override
  void initState() {
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return  ListView(
      children: [
        Wrap(
            direction: Axis.vertical,
            children: [
              Padding(
                padding: EdgeInsets.all(10),
                child: Text('${recipe.milkShake}'),
              ),
              OverflowProblem(),

            ],
          ),
      ],
    );
  }
}
