import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'home_screen_container.dart';
import 'package:flutter/rendering.dart' show debugPaintSizeEnabled;

void main(){
  //debugPaintSizeEnabled =true;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: _title,
      home: MyStatefulWidget(),
    );
  }
}

/// This is the stateful widget that the main application instantiates.
class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

/// This is the private State class that goes with MyStatefulWidget.
class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),

    Text(
      'Index 1: Business',
      style: optionStyle,
    ),

    Text(
      'gh',
      style: optionStyle,
    ),

    Text(
      'Index 2: School',
      style: optionStyle,
    ),

    Text(
      'Index 3: Больше',
      style: optionStyle,
    ),

  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  String dropdownValue = 'Сентябрь';

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: const Color.fromRGBO(235,233,233,1),  //щас мы его и примем
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon( //щас мы его и примем пидорасика ......пора подобедать....пойду полежу чутка
                  Icons.account_circle_outlined, size: 30, color: Colors.black,
              ),

              onPressed: () {
              Navigator.push(context, MaterialPageRoute<void>(
                builder: (BuildContext context) {
                  return Scaffold(

                    appBar: AppBar(
                      actions: <Widget>[

                        IconButton(
                          icon: const Icon(Icons.settings),

                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute<void>(
                              builder: (BuildContext context) {
                                return Scaffold(
                                  appBar: AppBar(
                                  ),
                                  body: const Center(
                                    child: Text(
                                      'This is the next page',
                                      style: TextStyle(fontSize: 24),
                                    ),
                                  ),
                                );
                              },
                            ));
                          },
                        ),
                      ],
                    ),

                    body: const Center(
                      child: Text(
                        'This is the next page',
                        style: TextStyle(fontSize: 24),
                      ),
                    ),
                  );
                },
               )
              );
            }
            );
         },
        ),
        actions: <Widget>[

          DropdownButton<String>(
            value: dropdownValue,
            icon: const Icon(Icons.arrow_drop_down_outlined),
            iconSize: 24,
            elevation: 16,
            style: const TextStyle(color: Colors.black),
            underline: Container(
              height: 2,
              color: Colors.white,
            ),
            onChanged: (String? newValue) {
              setState(() {
                dropdownValue = newValue!;
              });
            },
            items: <String>['Сентябрь', 'Октябрь', 'Ноябрь', 'Декабрь','Январь','Февраль','Март','Апрель','Май','Июнь','Июль','Август']
                .map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
          ),
  ],
        ),




     /* body: Container(
        child: _widgetOptions.elementAt(_selectedIndex)
        ),*/

      body: SingleChildScrollView(

        child: Container(
          color: Colors.white10,
          alignment: Alignment.center,
          child: Column(

            children: <Widget>[

              Box1(

              ),
              Box2(

              ),
              Box3(

              ),
              Box4(

              ),
              Box5(

              ),

          ],
        ),
    ),
      ),



      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined,size: 30),
            label: 'Управление',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.format_list_bulleted_outlined,size: 30),
            label: 'Операции',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_circle_outline,size: 45),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.event_note_outlined,size: 30),
            label: 'Планирование',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.more_horiz_outlined,size: 30),
            label: 'Больше',
          ),
        ],

        currentIndex: _selectedIndex,
        onTap: _onItemTapped,

        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.blue,
        showUnselectedLabels: true,
        unselectedItemColor: Colors.black,
        unselectedFontSize: 11,
        selectedFontSize: 11,

      ),
    );
  }
}





