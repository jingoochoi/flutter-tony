import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shop/const.dart';

class Mage extends StatefulWidget {
  const Mage({Key? key}) : super(key: key);

  @override
  State<Mage> createState() => _MageState();
}

class _MageState extends State<Mage> {
  int nb = 0;
  // 이미지 리스트
  List<String> selectedPic = [
    "assets/p1.jpeg",
    "assets/p2.jpeg",
    "assets/p3.jpeg",
    "assets/p4.jpeg",
  ];

  // 상품명 리스트
  List<String> selectedTit = [
    "Living bicycle",
    "Honda motorcycle",
    "Tesla Model3",
    "Cessna 150",
  ];
  // 상품가격 리스트
  Map<String, List> selectedPrice = {
    "Living bicycle": [
      699,
      26,
      5,
    ],
    "Honda motorcycle": [
      1700,
      35,
      4,
    ],
    "Tesla Model3": [
      7800,
      98,
      3,
    ],
    "Cessna 150": [
      12400,
      75,
      5,
    ],
  };
  Map<String, List> cols = {
    "Living bicycle": [
      Colors.black,
      Colors.white,
      Colors.red,
      Colors.orange,
      Colors.blue,
    ],
    "Honda motorcycle": [
      Colors.black,
      Colors.grey,
      Colors.red,
      Colors.orange,
      Colors.blue,
    ],
    "Tesla Model3": [
      Colors.black,
      Colors.blueGrey,
      Colors.red,
      Colors.blue,
    ],
    "Cessna 150": [
      Colors.black,
      Colors.white,
      Colors.red,
    ],
  };
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [_widgetP(), _widgetS(), _widgetI()],
    );
  }

  Widget _widgetP() {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: AspectRatio(
        aspectRatio: 3 / 2,
        child: Image.asset(
          selectedPic[nb],
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget _widgetS() {
    return Padding(
      padding: const EdgeInsets.only(
        left: 30,
        right: 30,
        top: 10,
        bottom: 30,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _widgetB(0, Icons.directions_bike),
          _widgetB(1, Icons.motorcycle),
          _widgetB(2, CupertinoIcons.car_detailed),
          _widgetB(3, Icons.airplanemode_active),
        ],
      ),
    );
  }

  Widget _widgetB(int q, IconData iconData) {
    return Container(
      width: 30 * 2,
      height: 30 * 2,
      decoration: BoxDecoration(
        color: q == nb ? kAccentColor : kSecondaryColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: IconButton(
        icon: Icon(
          iconData,
          color: Colors.black,
        ),
        onPressed: () {
          setState(() {
            nb = q;
          });
        },
      ),
    );
  }

  Widget _widgetI() {
    return Padding(
      padding: const EdgeInsets.all(30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _widgetN(),
          _widgetR(),
          _widgetO(),
          _widgetBT(),
        ],
      ),
    );
  }

  Widget _widgetN() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            selectedTit[nb],
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Text(
            '\$${selectedPrice[selectedTit[nb]]?[0]}',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }

  Widget _widgetR() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          for (int i = 0; i < selectedPrice[selectedTit[nb]]?[2]; i++)
            Icon(
              Icons.star,
              color: Colors.blue,
            ),
          Spacer(),
          Text(
            'review(${selectedPrice[selectedTit[nb]]?[1]})',
            style: TextStyle(
              fontSize: 20,
              color: Colors.green,
            ),
          ),
        ],
      ),
    );
  }

  Widget _widgetO() {
    dynamic sels = cols[selectedTit[nb]];
    return Padding(
      padding: const EdgeInsets.only(
        bottom: 10,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('COLOR OPTIONS'),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              for (int i = 0; i < sels.length; i++) _buildDetailIcon(sels[i]),
            ],
          )
        ],
      ),
    );
  }

  Widget _buildDetailIcon(Color mColor) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      // 5. Stack의 첫 번째 Container 위젯위에 Positioned 위젯이 올라가는 형태
      child: Stack(
        children: [
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(),
              shape: BoxShape.circle,
            ),
          ),
          Positioned(
            left: 5,
            top: 5,
            child: ClipOval(
              child: Container(
                color: mColor,
                width: 40,
                height: 40,
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _widgetBT() {
    return Align(
      child: TextButton(
        onPressed: () {
          showCupertinoDialog(
            context: context,
            builder: (context) => CupertinoAlertDialog(
              title: Text('added in cart'),
              actions: [
                CupertinoDialogAction(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('close',style: TextStyle(color: Colors.blue),),
                )
              ],
            ),
          );
        },
        style: TextButton.styleFrom(
          backgroundColor: kAccentColor,
          minimumSize: Size(300, 30 * 2),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        child: Text(
          'add',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
