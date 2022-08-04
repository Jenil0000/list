import 'package:flutter/material.dart';

void main()
{
  runApp(MaterialApp(home: list()));
}
class list extends StatefulWidget {
  const list({Key? key}) : super(key: key);

  @override
  State<list> createState() => _listState();
}

class _listState extends State<list> {

  List<String> name = ["AAA","BBB","CCC"];
  List<String> contact = ["11111","22222","33333"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("List"),),

      body: ListView.builder(
        itemCount: name.length,
        itemBuilder: (context, index)
          {
            return Container(
              height: 50,
              color: Colors.black,
              margin: EdgeInsets.all(10),
              child: Text("${name[index]}",style: TextStyle(fontSize: 50,color: Colors.white),),
            );
          }),
    );
  }
}
