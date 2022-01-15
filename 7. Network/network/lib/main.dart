import 'package:flutter/material.dart';
import 'package:network/offices.dart';

void main() {
  runApp(const MyApp());
}
// https://about.google/static/data/locations.json
class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(),
      title: 'Flutter Demo',
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Future <OfficesList> officesList;
  @override
  void initState() {
    super.initState();
    officesList = getOfficesList();
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Manual JSON Serialization'),
        centerTitle: true,
      ),
      body: FutureBuilder<OfficesList>(
        future: officesList,
        builder: (context, snapshot){
          if(snapshot.hasData){
            return ListView.builder(
                itemCount: snapshot.data.offices.length,
                itemBuilder: (context, index){
                  return Card(
                    child: ListTile(
                      title: Text('${snapshot.data.offices[index].name}'),
                      subtitle: Text('${snapshot.data.offices[index].address}'),
                      leading: Image.network('${snapshot.data.offices[index].image}'),
                      isThreeLine: true,
                    ),
                  );
                }
            );
          }else if(snapshot.hasError){
            return Text('Error');
          }
          return Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}
