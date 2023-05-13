import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:need_moto/controller/DateController.dart';
import 'package:need_moto/views/Home.dart';
import 'package:need_moto/views/Car_Screen.dart';
import 'package:need_moto/controller/Dropdown.dart';


class SelfDrive extends StatelessWidget {
 //Dropdown Controller
  DropdownController controller = DropdownController();
  DateController Controller = DateController();
  //Options display
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(backgroundColor:Colors.white,
      iconTheme: IconThemeData(color: Colors.black),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [Spacer(flex:2,),
          Container(padding: EdgeInsets.all(15),width:150,height:50,child: Text('Need Moto',style: TextStyle(fontSize: 18,fontWeight:FontWeight.w600,color: Colors.black),)),Spacer(),
          IconButton(onPressed: (){}, icon: Icon(Icons.search)),
          IconButton(onPressed: (){}, icon: Icon(Icons.person))

        ],
      ),),
      drawer: Drawer(child: Text('drawer'),),
      body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(padding: EdgeInsets.all(10)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(padding: EdgeInsets.all(0)),
                      Column(
                        children: [Container(
                            width:70,
                            height: 70,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40),
                              border: Border.all(color: Colors.blue,width: 2.0),
                              color: Colors.white,

                            ),
                            child: GestureDetector(
                              onTap: (){},

                              child: Container(
                                width: 50,
                                height: 50,
                                padding: EdgeInsets.all(5),
                                child: Image.asset('assets/images/wheel.png'),
                              ),
                            )
                        ),
                          SizedBox(height: 5,),
                          Text('Self Drive')
                      ],),
                      Column(
                        children: [Container(
                            width:70,
                            height: 70,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40),
                              border: Border.all(color: Colors.blue,width: 2.0),
                              color: Colors.white,

                            ),
                            child: GestureDetector(
                              onTap: (){},
                              child: Container(
                                width: 50,
                                height: 50,
                                padding: EdgeInsets.all(15),
                                child: Image.asset('assets/images/arrow.png'),
                              ),
                            )
                        ),
                          SizedBox(height: 5,),
                          Text('Tax vehicle')
                        ],),
                      Column(
                        children: [
                          SizedBox(height: 15,),
                          Container(
                            width:70,
                            height: 70,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40),
                              border: Border.all(color: Colors.blue,width: 2.0),
                              color: Colors.white,

                            ),
                            child: GestureDetector(
                              onTap: (){},
                              child: Container(
                                width: 50,
                                height: 50,
                                padding: EdgeInsets.all(10),
                                child: Image.asset('assets/images/opp.png'),
                              ),
                            )
                        ),
                          SizedBox(height: 5,),
                          Text('Round trip \n with driver')
                        ],),
                      Column(
                        children: [Container(
                            width:70,
                            height: 70,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40),
                              border: Border.all(color: Colors.blue,width: 2.0),
                              color: Colors.white,

                            ),
                            child: GestureDetector(
                              onTap: (){},
                              child: Container(
                                width: 50,
                                height: 50,
                                padding: EdgeInsets.all(10),
                                child: Image.asset('assets/images/truck.png'),
                              ),
                            )
                        ),
                          SizedBox(height: 5,),
                          Text('Commercial')
                        ],),
                      SizedBox(width: 6,)
                    ],
                  ),
                SizedBox(height: 15,),

                //Customer details
                Container(width: double.infinity,
                height: 1,
                color: Colors.grey,),
                SizedBox(height: 15,),
                Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
                  //Controller usage
                  child: DropdownSearch(
                    popupProps: PopupProps.menu(constraints: BoxConstraints(maxHeight: 200),),
                    items: controller.options,

                    dropdownDecoratorProps: DropDownDecoratorProps(
                      dropdownSearchDecoration: InputDecoration(
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
                        labelText: 'Seats',
                      )
                    ),
                    onChanged: (value){
                      controller.setValue(value!);
                    },
                    selectedItem: controller.selectedItem,

                  ),
                ),
                SizedBox(height: 5,),
                Container(
                  width: 350,
                  height: 60,
                  child: TextField(decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),labelText: 'Vehicle need from Location'),),
                ),
                SizedBox(height: 25,),
                Container(
                  width: 350,
                  height: 60,
                  child: TextField(decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),labelText: 'Destination'),),
                ),
                SizedBox(height: 25,),
                Container(
                  width: 350,
                  height: 60,
                  child: TextField( controller: Controller.textEditingController,
                    readOnly: true,
                    onTap: () => Controller.chooseDate(context),
                    decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),labelText: 'Pickup date & Time'),),
                ),
                SizedBox(height: 25,),
                Container(
                  width: 350,
                  height: 60,
                  child: TextField( controller: Controller.textEditingController2,
                    readOnly: true,
                    onTap: () => Controller.selectDate(context),decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),labelText: 'Return date and Time'),),
                ),
                SizedBox(height: 25,),
                Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
                  //Controller usage
                  child: DropdownSearch(
                    popupProps: PopupProps.menu(constraints: BoxConstraints(maxHeight: 200),searchDelay: Duration(milliseconds: 500)),
                    items: controller.option,
                    dropdownDecoratorProps: DropDownDecoratorProps(
                        dropdownSearchDecoration: InputDecoration(
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
                          labelText: 'Delivery',
                        )
                    ),
                    onChanged: (value){
                      controller.setvalue(value!);
                    },
                    selectedItem: controller.selectType,

                  ),
                ),
                SizedBox(height: 25,),
                Container(
                  width: 350,
                  height: 60,
                  child: TextField(decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(30),),labelText: 'Purpose'),),
                ),
                SizedBox(height: 25,),
                //car details display button
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    width: 250,
                    height: 50,
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(gradient: LinearGradient(colors: [Colors.orange,Colors.orangeAccent],stops: [0.1,0.7]),borderRadius: BorderRadius.circular(25)),
                  child:Text('Find Vehicle',style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.w600),textAlign: TextAlign.center,),
                  )
                ),
                SizedBox(height: 25,),
              ],
            ),
          ),
        ),

    );
  }
}
