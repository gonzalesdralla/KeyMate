import 'package:flutter/material.dart';

class Generation extends StatefulWidget {
  @override
  _GenerationState createState() => _GenerationState();
}

class _GenerationState extends State<Generation> {
  bool value = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.orange,
            bottom: PreferredSize(
                child: Container(color: Colors.black, height: 3),
                preferredSize: Size.fromHeight(3.0)),
            title: Text(
              "KeyMate",
              style: TextStyle(
                  fontFamily: "Gemunu Libre",
                  fontWeight: FontWeight.bold,
                  fontSize: 25),
            )),
        body: SafeArea(
            child: Center(
          child: CheckboxWidget(),
        )));
  }
}

class CheckboxWidget extends StatefulWidget {
  @override
  CheckboxWidgetState createState() => new CheckboxWidgetState();
}

class CheckboxWidgetState extends State {
  Map<String, bool> values = {
    'Lowercases': false,
    'Uppercases': false,
    'Digits': false,
    'Special Characters': false
  };
  var included = [];

  getCheckboxItems() {
    values.forEach((key, value) {
      if (values == true) {
        included.add(key);
      }
    });
    print(included);
    included.clear();
  }

  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
            Colors.orange[100],
            Colors.orange[300],
            Colors.orange[900]
          ])),
      alignment: Alignment(0, 0.4), //for the white container
      child: Container(
          width: 318,
          height: 555,
          color: Colors.white54,
          alignment: Alignment(0, -0.29),
          child: Column(children: <Widget>[
            Expanded(
                child: ListView(
              children: values.keys.map((String key) {
                return new CheckboxListTile(
                  title: new Text(key),
                  value: values[key],
                  onChanged: (bool value) {
                    setState(() {
                      values[key] = value;
                    });
                  },
                );
              }).toList(),
            )),
            RaisedButton(
              child: Text("GENERATE"),
              onPressed: () {
                getCheckboxItems();
              },
              color: Colors.orange,
              padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
            ),
            TextField(
              enabled: false,
              readOnly: true,
              decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.green,
                  width: 50.0,
                ),
              )),
            ),
            RaisedButton(
              child: Text("ADD TO FAVORITES"),
              onPressed: () {
                getCheckboxItems();
              },
              color: Colors.orange,
              padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
            ),
          ])),
    ));
  }
}
