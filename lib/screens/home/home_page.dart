import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var value1 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 50.0,
                height: 50.0,
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/images/Remove.jpg'),
                ),
              ),
             ],
          ),
        ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  Text(
                  'Premium',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
               ],
                ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                       Text(
                          'The Secrets to be Flutter in English',
                          style: TextStyle(
                            color: Colors.grey[500],
                          ),
                        ),
                    ],
                  ),

        Expanded(
          child: Container(
            color: Color.fromARGB(255, 222, 250, 255),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16.0,
                    vertical: 8.0,
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: buildCategoryButton(
                          'Full Access to Pattern Lessons',
                          Icons.group_add_outlined,
                          Colors.lightBlue,
                          value1,
                        ),
                      ),
                      SizedBox(width: 16.0),
                      Expanded(
                        child: buildCategoryButton(
                          'Unlock All Limitations',
                          Icons.key_off,
                          Colors.pink,
                          false,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16.0,
                    vertical: 8.0,
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: buildCategoryButton(
                          'All Topics Available',
                          Icons.all_inbox_outlined,
                          Colors.orange,
                          false,
                        ),
                      ),
                      SizedBox(width: 16.0),
                      Expanded(
                        child: buildCategoryButton(
                          'Personalized Coaching',
                          Icons.account_circle_outlined,
                          Colors.green,
                          false,
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: <Widget>[
                    Center(),
                    SizedBox(
                      width: 245.0,
                      height: 30,
                    ),
                    Text(
                      '2023 Special Early Brids offer',
                      style: TextStyle(
                        color: Colors.pink.shade500,
                        fontWeight: FontWeight.w200,
                        decoration: TextDecoration.underline,
                      ),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'IDR50.000/',
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          value1 = !value1;
                        });
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text('Start 300 Days Free Trail'),
                      ),
                    ),
                  ),
                ),
                Row(
                  children: <Widget>[
                    Center(),
                    SizedBox(
                      width: 300,
                      height: 30,
                    ),
                    Text(
                      'View all Plan',
                      style: TextStyle(
                        color: Colors.black87,
                        fontWeight: FontWeight.w200,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
       ],
    ));
  }

  Container buildCategoryButton(
      String text, IconData icon, Color color, bool isSelected) {
    return Container(
      decoration: BoxDecoration(
        color: isSelected ? color : Colors.white,
        borderRadius: BorderRadius.circular(50.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 7,
            blurRadius: 12,
            offset: Offset(0, 10), // changes position of shadow
          ),
        ],
      ),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(8.0),
            margin: const EdgeInsets.all(12.0),
            decoration: BoxDecoration(
              color: isSelected ? Colors.white : color,
              shape: BoxShape.circle,
            ),
            child: Icon(
              icon,
              color: isSelected ? color : Colors.white,
            ),
          ),
          Text(
            text,
            style: TextStyle(color: isSelected ? Colors.white : Colors.black87),
          ),
        ],
      ),
    );
  }
}
