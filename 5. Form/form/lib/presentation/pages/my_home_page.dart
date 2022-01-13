
import 'package:flutter/material.dart';
import 'package:form/data/user_model.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  List<User> users = [
    User('vasy', '200', 100),
    User('lera', '200', 100),
    User('seva', '200', 100),
  ];

  List<TextEditingController> controllers = [];  //the controllers list

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Title"),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.add),
              onPressed: (){})
        ],
      ),
      body: ListView.builder(itemCount: users.length, itemExtent: 50,itemBuilder: (BuildContext context, int index) {
        TextEditingController controller = TextEditingController();
        controllers.add(controller);
        return Center(
          child: Container(
            alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    child: Text('${users[index].name}'),
                  ),
                  Container(
                    child: Text('${users[index].phone}'),
                  ),
                  Container(
                    child: Text('${users[index].age}'),
                  ),
                  Container(
                    width: 50,
                    child: TextFormField(
                      controller: controller,
                      keyboardType: TextInputType.number,
                      onChanged: (data) => print('${users[index].name} - $data'),
                      decoration: InputDecoration(
                        hintText: "input",
                        hintStyle: TextStyle(fontSize: 12,),
                      ),
                    ),
                  ),
                ],
              )
          ),
        );
      },),
    );
  }


  void _addMyAge(int phone, int age){


  }
  @override
  void dispose() {
    controllers.clear();
    super.dispose();
  }

}