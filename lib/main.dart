import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.red,
        primaryColor: Colors.white,

//                colorScheme: ColorScheme.: Colors.red,
//        colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Colors.white),
      ),
      title: 'ListView',
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          elevation: 0,
          title: const Text('Weather Forecast'),
          centerTitle: true,
        ),
        body: const HomePage(),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          decoration: InputDecoration(
            border: InputBorder.none,
            label: Text('Enter City Name'),
            labelStyle: TextStyle(color: Colors.white),
            prefixIcon: Icon(
              Icons.search,
//              color: Colors.white,
            ),
          ),
        ),
        SizedBox(
          height: 15,
        ),
        _cityDetail(),
        SizedBox(
          height: 45,
        ),
        _tempDetail(),
        SizedBox(
          height: 45,
        ),
        _extraDetail(),
        SizedBox(
          height: 55,
        ),
        const Text(
          '7-DAY WEATHER FORECAST',
          style: TextStyle(
            fontSize: 18,
            color: Colors.white,
          ),
        ),
        _bottomDetail(),
      ],
    );
  }
}

Container _bottomDetail() {
  return Container(
    height: 140.0,
    margin: const EdgeInsets.all(5.0),
    padding: const EdgeInsets.all(15.0),
    child: ListView(
      // shrinkWrap: true,
      itemExtent: 165,
      scrollDirection: Axis.horizontal,
      // padding: const EdgeInsets.all(7.0),
      children: [
        Container(
          padding: const EdgeInsets.all(10.0),
          decoration: BoxDecoration(color: Colors.red[200]),
          margin: const EdgeInsets.symmetric(horizontal: 4.0),
          child: Column(
            children: [
              Text(
                'Monday',
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    '6 oF',
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                    ),
                  ),
                  Icon(Icons.sunny, color: Colors.white, size: 40.0),
                ],
              ),
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.all(10.0),
          decoration: BoxDecoration(color: Colors.red[200]),
          margin: const EdgeInsets.symmetric(horizontal: 4.0),
          child: Column(
            children: [
              Text(
                'Tuesday',
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    '5 oF',
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                    ),
                  ),
                  Icon(Icons.sunny, color: Colors.white, size: 40.0),
                ],
              ),
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.all(10.0),
          decoration: BoxDecoration(color: Colors.red[200]),
          margin: const EdgeInsets.symmetric(horizontal: 4.0),
          child: Column(
            children: [
              Text(
                'Wednesday',
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    '6 oF',
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                    ),
                  ),
                  Icon(Icons.sunny, color: Colors.white, size: 40.0),
                ],
              ),
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.all(10.0),
          decoration: BoxDecoration(color: Colors.red[200]),
          margin: const EdgeInsets.symmetric(horizontal: 4.0),
          child: Column(
            children: [
              Text(
                'Thursday',
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    '6 oF',
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                    ),
                  ),
                  Icon(Icons.sunny, color: Colors.white, size: 40.0),
                ],
              ),
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.all(10.0),
          decoration: BoxDecoration(color: Colors.red[200]),
          margin: const EdgeInsets.symmetric(horizontal: 4.0),
          child: Column(
            children: [
              Text(
                'Friday',
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    '6 oF',
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                    ),
                  ),
                  Icon(Icons.sunny, color: Colors.white, size: 40.0),
                ],
              ),
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.all(10.0),
          decoration: BoxDecoration(color: Colors.red[200]),
          margin: const EdgeInsets.symmetric(horizontal: 4.0),
          child: Column(
            children: [
              Text(
                'Saturday',
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    '6 oF',
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                    ),
                  ),
                  Icon(Icons.sunny, color: Colors.white, size: 40.0),
                ],
              ),
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.all(10.0),
          decoration: BoxDecoration(color: Colors.red[200]),
          margin: const EdgeInsets.symmetric(horizontal: 4.0),
          child: Column(
            children: [
              Text(
                'Sunday',
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    '6 oF',
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                    ),
                  ),
                  Icon(Icons.sunny, color: Colors.white, size: 40.0),
                ],
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

Row _extraDetail() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      Column(
        children: [
          Icon(Icons.ac_unit_outlined, color: Colors.white, size: 30.0),
          const Text(
            '5',
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
            ),
          ),
          const Text(
            'km/hr',
            style: TextStyle(
              fontSize: 13,
              color: Colors.white,
            ),
          ),
        ],
      ),
      Column(
        children: [
          Icon(Icons.ac_unit_outlined, color: Colors.white, size: 30.0),
          const Text(
            '3',
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
            ),
          ),
          const Text(
            '%',
            style: TextStyle(
              fontSize: 13,
              color: Colors.white,
            ),
          ),
        ],
      ),
      Column(
        children: [
          Icon(Icons.ac_unit_outlined, color: Colors.white, size: 30.0),
          const Text(
            '20',
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
            ),
          ),
          const Text(
            '%',
            style: TextStyle(
              fontSize: 13,
              color: Colors.white,
            ),
          ),
        ],
      ),
    ],
  );
}

Row _tempDetail() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Icon(Icons.sunny, color: Colors.white, size: 75.0),
      Column(
        children: [
          const Text(
            '14 oF',
            style: TextStyle(
              fontSize: 55,
              color: Colors.white,
            ),
          ),
          const Text(
            'LIGHT SNOW',
            style: TextStyle(
              fontSize: 18,
              color: Colors.white,
            ),
          ),
        ],
      ),
    ],
  );
}

Column _cityDetail() {
  return Column(
    children: [
      Text(
        'Murmansk Oblast, RU',
        style: TextStyle(fontSize: 35, color: Colors.white),
      ),
      SizedBox(
        height: 15,
      ),
      Text(
        'Friday, Mar 20, 2020',
        style: TextStyle(fontSize: 18, color: Colors.white),
      ),
    ],
  );
}
/* 
Widget _my
ListView() {
  final List<ListItem> items = List<ListItem>.generate(
      10000,
      (i) => i % 6 == 0
          ? HeadingItem("Heading $i")
          : MessageItem('Sender $i', 'Message body $i'));
  return ListView.builder(
    itemCount: items.length,
    itemBuilder: (BuildContext context, int index) {
      final item = items[index];
      if (item is HeadingItem) {
        return ListTile(
          title: Text(
            item.heading,
            style: Theme.of(context).textTheme.headlineSmall,
          ),
        );
      } else if (item is MessageItem) {
        return ListTile(
          title: Text(item.sender),
          subtitle: Text(item.body),
          leading: Icon(Icons.insert_photo, color: Colors.red),
          trailing: Icon(
            Icons.keyboard_arrow_right,
          ),
        );
      }
      return null;
/*       return Card(
        child: ListTile(
          title: Text('${items[index]}'),
          leading: Icon(Icons.insert_photo, color: Colors.red),
          trailing: Icon(Icons.keyboard_arrow_right, color: Colors.red),
        ),
      );
 */
    },
  );
}

abstract class ListItem {}

class HeadingItem implements ListItem {
  final String heading;

  HeadingItem(this.heading);
}

class MessageItem implements ListItem {
  final String sender;
  final String body;

  MessageItem(this.sender, this.body);
}
 */