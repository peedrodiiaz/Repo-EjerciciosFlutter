import 'package:flutter/material.dart';

class Calculadora extends StatelessWidget {
  const Calculadora({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            FloatingActionButton(
              onPressed: () {},
              backgroundColor: Colors.black,
              child: Padding(
                padding: const EdgeInsets.only(top: 30.0, left: 30),
                child: CircleAvatar(
                  backgroundColor: Colors.black,
                  child: Icon(Icons.format_list_bulleted, color: Colors.white),
                ),
              ),
            ),
            Spacer(),
            FloatingActionButton(
              onPressed: () {},
              backgroundColor: Colors.black,
              child: Padding(
                padding: const EdgeInsets.only(top: 30.0, right: 50),
                child: CircleAvatar(
                  backgroundColor: Colors.black,
                  child: Icon(Icons.calculate, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
        Container(
          alignment: Alignment.centerRight,
          padding: EdgeInsets.only(top: 200, right: 20),
          child: Text(
            '38,670/50000',
            style: TextStyle(color: Colors.grey, fontSize: 30),
          ),
        ),
        
        Container(
          alignment: Alignment.centerRight,
          padding: EdgeInsets.only(top: 0, right: 20),
          child: Text(
            '0.7734',
            style: TextStyle(color: Colors.white, fontSize: 70),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                alignment: Alignment.center,
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  color: Colors.grey,
                  
                ),
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.backspace, color: Colors.white, size: 40,),
                  
                ),
              ),
              Container(
                alignment: Alignment.center,
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  color: Colors.grey,
                  
                ),
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.ac_unit, color: Colors.white, size: 40,),
                  
                ),
              ),
              Container(
                alignment: Alignment.center,
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  color: Colors.grey,
                  
                ),
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.percent, color: Colors.white, size: 40,),
                  
                ),
              ),
              Container(
                alignment: Alignment.center,
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  color: Colors.orange,
                  
                ),
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.safety_divider, color: Colors.white, size: 40,),
                
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                alignment: Alignment.center,
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  color: const Color.fromARGB(255, 61, 61, 61),
                  
                ),
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.numbers, color: Colors.white, size: 40,),
                  
                ),
              ),
              Container(
                alignment: Alignment.center,
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  color: Colors.grey,
                  
                ),
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.ac_unit, color: Colors.white, size: 40,),
                  
                ),
              ),
              Container(
                alignment: Alignment.center,
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  color: Colors.grey,
                  
                ),
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.percent, color: Colors.white, size: 40,),
                  
                ),
              ),
              Container(
                alignment: Alignment.center,
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  color: Colors.orange,
                  
                ),
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.safety_divider, color: Colors.white, size: 40,),
                
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                alignment: Alignment.center,
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  color: Colors.grey,
                  
                ),
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.backspace, color: Colors.white, size: 40,),
                  
                ),
              ),
              Container(
                alignment: Alignment.center,
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  color: Colors.grey,
                  
                ),
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.ac_unit, color: Colors.white, size: 40,),
                  
                ),
              ),
              Container(
                alignment: Alignment.center,
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  color: Colors.grey,
                  
                ),
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.percent, color: Colors.white, size: 40,),
                  
                ),
              ),
              Container(
                alignment: Alignment.center,
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  color: Colors.orange,
                  
                ),
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.safety_divider, color: Colors.white, size: 40,),
                
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                alignment: Alignment.center,
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  color: Colors.grey,
                  
                ),
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.backspace, color: Colors.white, size: 40,),
                  
                ),
              ),
              Container(
                alignment: Alignment.center,
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  color: Colors.grey,
                  
                ),
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.ac_unit, color: Colors.white, size: 40,),
                  
                ),
              ),
              Container(
                alignment: Alignment.center,
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  color: Colors.grey,
                  
                ),
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.percent, color: Colors.white, size: 40,),
                  
                ),
              ),
              Container(
                alignment: Alignment.center,
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  color: Colors.orange,
                  
                ),
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.safety_divider, color: Colors.white, size: 40,),
                
                ),
              ),
            ],
          ),
        ),Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                alignment: Alignment.center,
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  color: Colors.grey,
                  
                ),
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.backspace, color: Colors.white, size: 40,),
                  
                ),
              ),
              Container(
                alignment: Alignment.center,
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  color: Colors.grey,
                  
                ),
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.ac_unit, color: Colors.white, size: 40,),
                  
                ),
              ),
              Container(
                alignment: Alignment.center,
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  color: Colors.grey,
                  
                ),
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.percent, color: Colors.white, size: 40,),
                  
                ),
              ),
              Container(
                alignment: Alignment.center,
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  color: Colors.orange,
                  
                ),
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.safety_divider, color: Colors.white, size: 40,),
                
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
