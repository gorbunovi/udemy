
import 'package:flutter/material.dart';
import 'package:form/data/user_model.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  late double _coefficient;

  List<User> users = [
    User('vasy', 200, 100),
    User('lera', 200, 100),
    User('seva', 200, 100),
  ];


  List<TextEditingController> controllers = [];




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

        TextEditingController controller = TextEditingController(text: users[index].newAge != null? '${users[index].newAge}': '');
        controller.selection = TextSelection.fromPosition(TextPosition(offset: controller.text.length));//курсор в конец строки
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
                      onChanged: (data) {
                        if (data==''){
                          _addMyAge(users[index].phone, null, users[index].name);
                        }else _addMyAge(users[index].phone, int.parse(data), users[index].name);

                      },
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


  void _addMyAge(int phone,int? myAge, String name){
    if(myAge==null){
      setState(() {
        users.forEach((user) {
          user.newAge = null;
        });
      });
    }else{
      _coefficient = phone/myAge;

      setState(() {
        users.forEach((user) {
          user.newAge = (user.phone / _coefficient).round();
          print('name - ${user.name}, neAge = ${user.newAge}');
        });
      });
    }
  }

  @override
  void dispose() {
    controllers.clear();
    super.dispose();
  }

}