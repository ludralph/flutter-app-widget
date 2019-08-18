import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    
    return Container(
        alignment: Alignment.topRight,
        padding: EdgeInsets.only(top: 30.0, left: 10.0),
        color: Colors.lightBlue,
        child: Column(
          children: <Widget>[
            Row(
          children: <Widget>[
            Expanded(
              child: Text(
              'Magherita',
              style: TextStyle(
                color: Colors.white,
                decoration: TextDecoration.none,
                fontSize: 30.0,
                fontFamily: 'Oxygen',
                fontWeight: FontWeight.normal
              ),
            ),
            ),
            Expanded(child: Text(
              'Tomatoa, Mozarella, Basil',
              style: TextStyle(
                color: Colors.white,
                decoration: TextDecoration.none,
                fontSize: 30.0,
                fontFamily: 'Oxygen',
                fontWeight: FontWeight.normal
              )
            ),
            ),
            
          ],
        ),
            Row(
             children: <Widget>[
              Expanded(
              child: Text(
              'Marinera',
              style: TextStyle(
                color: Colors.white,
                decoration: TextDecoration.none,
                fontSize: 30.0,
                fontFamily: 'Oxygen',
                fontWeight: FontWeight.normal
              ),
            ),
            ),
            Expanded(child: Text(
              'Tomatoa, Garlic',
              style: TextStyle(
                color: Colors.white,
                decoration: TextDecoration.none,
                fontSize: 30.0,
                fontFamily: 'Oxygen',
                fontWeight: FontWeight.normal
              )
            ),
            ),
            
          ],
        ),
            PizzaImageWidget(),
            OrderButton(),
          ],
        )
      );
  }

}

class PizzaImageWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final String assetName = 'https://www.svgrepo.com/show/2046/dog.svg';
    final Widget svg = new SvgPicture.network(
      assetName,
      semanticsLabel: 'Dog loves Pizza',
      placeholderBuilder: (context) => CircularProgressIndicator(),
      height: 128.0,
    );
    return Container(child: svg);
  }

}

class OrderButton extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    
    var button = Container(
      margin: EdgeInsets.only(top: 50.0),
      child: RaisedButton(
        child: Text('Order your Pizza!'),
        color: Colors.lightGreen,
        elevation: 5.0, 
        onPressed: () {
          order(context);
        },
      ),
    );
    return button;
  }

  void order(BuildContext context){
    var alert = AlertDialog(
      title: Text('Order Completed'),
      content: Text('Thanks for your order')
    );

    showDialog(
      context: context,
      builder: (BuildContext context) => alert,
    );
  }

}