import 'package:flutter/material.dart';

import 'SelfDrive.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor:Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [Spacer(),
          Container(width:50,height:50,child: Image.asset('assets/car1.jpg'),),Spacer(),
          IconButton(onPressed: (){}, icon: Icon(Icons.search)),
          IconButton(onPressed: (){}, icon: Icon(Icons.person))

        ],
      ),),
      drawer: Drawer(child: Text('drawer'),),
      body: SingleChildScrollView(
        child: Column(mainAxisAlignment: MainAxisAlignment.start,
                      children: [Padding(padding: EdgeInsets.all(20)),Align(alignment: Alignment.center,),
                        Text('Welcome to Rush Wheels',style: TextStyle(fontSize: 32,fontWeight: FontWeight.bold),),
                        SizedBox(height: 10,),
                        Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(25),color: Colors.blue.shade100,),
                          width: 370,
                        height: 170,
                        child: Column(
                          children: [
                            Text('You can book vehicle for local long drive \n with driver or without driver and commercial \n purpose also you can book',textAlign:TextAlign.center,style: TextStyle(height:1.5,fontSize: 15,fontWeight: FontWeight.w500),),
                            SizedBox(height: 20,),
                            SizedBox(width: 250,
                            height: 50,
                            child: ElevatedButton(style:ElevatedButton.styleFrom(backgroundColor: Colors.orange,shape: StadiumBorder()),onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context)=> SelfDrive()));}, child: Text('Find Vehicle',style: TextStyle(color: Colors.white,fontSize: 30),)),)
                          ],
                        ),),
                        SizedBox(height: 20,),
                        Text('Rent your Vehicle',style: TextStyle(fontSize: 32,fontWeight: FontWeight.bold)),
                        SizedBox(height: 10,),
                        Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(25),color: Colors.lightGreenAccent.shade100,),
                          width: 370,
                          height: 170,
                          child: Column(
                            children: [
                              Text('Get money by adding your vehicle to \n rush wheels and give for rent 1 day \n to so many days',textAlign:TextAlign.center,style: TextStyle(height:1.5,fontSize: 15,fontWeight: FontWeight.w500),),
                              SizedBox(height: 20,),
                              SizedBox(width: 250,
                                height: 50,
                                child: ElevatedButton(style:ElevatedButton.styleFrom(backgroundColor: Colors.orange,shape: StadiumBorder()),onPressed: () {}, child: Text('Add Vehicle',style: TextStyle(color: Colors.white,fontSize: 30),)),)
                            ],
                          ),),
                        SizedBox(height: 20,),
                        Container(width: 370,
                        height: 200,
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(25),color: Colors.grey.shade300,),
                        )
                      ],
        ),
      ),
    );
  }
}
