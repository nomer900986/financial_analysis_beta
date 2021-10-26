import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart' show debugPaintSizeEnabled;

num balance = revenue - expenses;
num revenue = 3000;
num expenses = 1000;
num remains = forecast - expenses;
num forecast = 3000;


class Box1 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container( padding: const EdgeInsets.fromLTRB(0,0,0,50), child: Container(
      width: MediaQuery.of(context).size.width,
      height: 150,
      padding: const EdgeInsets.all(10.0),
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            bottomLeft:Radius.circular(30),
            bottomRight:Radius.circular(30),
          ),
      ),
      child: Column(
        children: <Widget> [
          const Text(
            'Баланс счетов',
            textAlign: TextAlign.center,
          ),
          Text(
            balance.toString()+ ' ₽',
            textAlign: TextAlign.center,
          ),
          Row(
            verticalDirection: VerticalDirection.up,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget> [
              Row(
                children: const [
                  Icon(Icons.expand_less, color: Colors.green),
                    Padding(
                    padding: EdgeInsets.all(15.0),
                    child: Text('Доходы'),
                  ),
                ],
              ),
              Row(
                children: const [
                  Icon(Icons.expand_more,color: Colors.red),
                  Padding(
                    padding: EdgeInsets.all(15.0),
                    child: Text('Затраты'),
                  ),
                ],
              ),
            ],
          ),
          Row(
            verticalDirection: VerticalDirection.up,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget> [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(0),
                    child: Text(
                      revenue.toString() + ' ₽',
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        color: Colors.green,
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(0),
                    child: Text(
                      expenses.toString() + ' ₽',
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        color: Colors.red,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    ),
    );
  }
}

class Box2 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container( padding: const EdgeInsets.fromLTRB(0,0,0,50), child: Container(
      width: MediaQuery.of(context).size.width,
      height: 150,
      padding: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30)
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              const ElevatedButton(
                onPressed: null,
                child: Text('Открыть новый счет'),
              ),
              const SizedBox(height: 30),

              ElevatedButton(
                  onPressed: () {},
                  child: const Text('Закрыть счет'),
                ),

            ],

    ),
          Row(

            children:<Widget> [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: const Icon(
                  Icons.credit_card,
                ),
              ),
              Column(
                children: <Widget> [
                  Text('Моя карта - Закрывается 01/окт.'),
                  Text('0.0 rub'),

                ],

              ),
              FloatingActionButton(
                onPressed: () {
                  // Add your onPressed code here!
                },
                child: const Icon(Icons.add_circle_outline),

              ),
            ],
          ),

        ],
      ),
    ),
    );
  }
}

class Box3 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container( padding: const EdgeInsets.fromLTRB(0,0,0,50), child: Container(
      width: MediaQuery.of(context).size.width,
      height: 150,
      padding: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(

          color: Colors.white,
          borderRadius: BorderRadius.circular(30)
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
       children: [
         Row(
           children: [
             const Icon(Icons.home,),
             Text(' Всего осталось: ' + remains.toString() + ' ₽',)
           ],
         ),
         Row(
           children:  const [
             Text('fdsfs')
           ],
         ),
         Row(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children:  [
             Text('Прогноз в этом месяце: ' + forecast.toString() + ' ₽'),
             Text(expenses.toString() + ' ₽ из ' + forecast.toString() + ' ₽')
           ],
         ),
       ],
      ),
    ),
    );
  }
}

class Box4 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container( padding: const EdgeInsets.fromLTRB(0,0,0,50), child: Container(
      width: MediaQuery.of(context).size.width,
      height: 150,
      padding: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(

          color: Colors.white,
          borderRadius: BorderRadius.circular(30)
      ),
      child: Column(
        children: <Widget> [
          const Text(
            'Баланс счетов',
            textAlign: TextAlign.center,
          ),
          const Text(
            '0.0 ₽',
            textAlign: TextAlign.center,

          ),
          Row(
            verticalDirection: VerticalDirection.up,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget> [
              Row(
                children:  [
                  const Icon(Icons.expand_less, color: Colors.green),
                  Column(
                    children:  const [
                      Padding(
                        padding: EdgeInsets.all(15.0),
                        child:
                        Text('Доходы'),
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                children: const [
                  Icon(Icons.expand_more,color: Colors.red),
                  Padding(
                    padding: EdgeInsets.all(15.0),
                    child: Text('Затраты'),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    ),
    );
  }
}

class Box5 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 150,
      padding: const EdgeInsets.all(10.0),
      decoration: const BoxDecoration(

          color: Colors.white,
          borderRadius: BorderRadius.only(
          topLeft:Radius.circular(30),
          topRight:Radius.circular(30),
        ),
      ),
      child: Column(
        children: <Widget> [
          const Text(
            'Баланс счетов',
            textAlign: TextAlign.center,
          ),
          const Text(
            '0.0 ₽',
            textAlign: TextAlign.center,

          ),
          Row(
            verticalDirection: VerticalDirection.up,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget> [
              Row(
                children:  [
                  const Icon(Icons.expand_less, color: Colors.green),
                  Column(
                    children:  const [
                      Padding(
                        padding: EdgeInsets.all(15.0),
                        child:
                        Text('Доходы'),
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                children: const [
                  Icon(Icons.expand_more,color: Colors.red),
                  Padding(
                    padding: EdgeInsets.all(15.0),
                    child: Text('Затраты'),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}







