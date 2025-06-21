import 'package:currency_converter/functions/fetchrates.dart';
import 'package:currency_converter/models/ratesmodel.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget{
  const Home ({Key?key}):super(key:key);

  @override
  State<Home> createState()=>_HomeState();
}

class _HomeState extends State<Home>{
  late Future<RatesModel> result;

final formkey=GlobalKey<FormState>();


  @override

  void initState(){
    super.initState();
    result=fetchrates();
  }
  Widget build(BuildContext context){
    var h=MediaQuery.of(context).size.height;
    var w=MediaQuery.of(context).size.width;
    return Scaffold(appBar: AppBar(backgroundColor: const Color.fromARGB(255, 50, 174, 56),
    title:const Text('Currency Convertor'),
    centerTitle: true,
    
    ),
    body: Container(
      height:h,
      width:w,
      padding:EdgeInsets.only(top:65,left:15,right:15),
      decoration:BoxDecoration(
        image: DecorationImage(
        image:AssetImage('assets/demo.jpg'),
        fit :BoxFit.cover,
        ),
                                                                                                              
      ),
      child:SingleChildScrollView(
        child:Form(key:formkey,
        child:FutureBuilder<RatesModel>(
          
          future:result,
           builder:(context,snapshot){
            if(
                snapshot.connectionState==ConnectionState.waiting
            ){
              return const Center(child: CircularProgressIndicator(),);
            }
            return Center(child: Text(snapshot.data!.rates.toString(),style:const TextStyle(fontSize:20,color:Colors.white),),
            
            );
           },
        
        ),),
       )
    ),
    
    );
  }
}
