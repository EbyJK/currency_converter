// import 'package:currency_converter/functions/fetchrates.dart';
// import 'package:flutter/material.dart';

// class AnyToAny extends StatefulWidget{
  

//   final rates;
//   final Map currencies;
//   const AnyToAny({Key?key,required this.rates,required this.currencies}):super(key:key);




//   @override
//   _AnyToAnyState createState()=>_AnyToAnyState();

// }

// class _AnyToAnyState extends State<AnyToAny>{
//    TextEditingController amountController =TextEditingController();
//    String dropdownValue1='INR';
//     String dropdownValue2='AUD';
//    String answer='Converted Currency will be shown here:)';


//   @override
//   Widget build (BuildContext context){
//     var w=MediaQuery.of(context).size.width;
//     return Card(color:Colors.transparent,
//     child:Container(
      
//       padding: const EdgeInsets.all(20),
//       child:Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
        
//         children: [
//           Container(alignment: Alignment.center,

          
//           child:const Text('Convert Any currency',textAlign:TextAlign.right,style:TextStyle(fontSize:20,fontWeight:FontWeight.bold,color:Colors.white),
//           ),
//           ),
//         SizedBox(height: 20,
        
//         ),

//         //Text('USD to Any Currency'),
//         TextFormField(key:const Key('amount'),
//         controller:amountController,
//         cursorColor:Colors.white,
//         style:const TextStyle(color:Colors.white),
//         decoration:const InputDecoration(
//           hintText:'Enter Amount',hintStyle:TextStyle(color:Colors.grey),

//         ),
//         keyboardType:TextInputType.number,

//         ),
//         const SizedBox(
//           height:10,
         
//         ),
//           Row(

//             children:[
//              Expanded(child:DropdownButton<String>(
//               dropdownColor:Colors.grey.shade900,
//               value:dropdownValue1,
//               style:const TextStyle(color:Colors.white),
//               icon: const Icon(Icons.arrow_drop_down_rounded,color:Colors.white,),
//               iconSize:24,
//               elevation:16,
//               isExpanded: true,
//               underline: Container(
//                 height:2,
//                 color:Colors.grey.shade400,

                
//               ),
//                 onChanged:(String? newValue){
//                   setState((){
//                       dropdownValue1=newValue!;

//                   });
//                 },
//                 items: widget.currencies.keys.toSet().toList().map<DropdownMenuItem<String>>((value){
//                     return DropdownMenuItem<String>(
//                       value:value,
//                       child:Text(value),
//                       //style:TextStyle(color:Colors.white),
//                     );

//                 }).toList(),

  
//              ),),

//               const SizedBox(
//                 width:10,

//               ),

//               //convert button
//               Container(
//                   child:ElevatedButton(

//                     onPressed:(){
//                       setState((){
//                         answer =usdController.text +'USD          =              '+convertusd(widget.rates,usdController.text,dropdownValue)+ '  ' +  dropdownValue; 

//                       });
//                     },
//                     child: const Text('Convert'),
//                     style:ButtonStyle(
//                       backgroundColor:MaterialStateColor.resolveWith((states)=> Colors.blue.shade400),
//                       ),
//                   ),
//                     ),

                  
    

//             ],
//           ),
//         const SizedBox(
//           height:15,

//         ),
//         Container(

//           child:Text(answer,style:const TextStyle(color:Colors.white),),
//         )
 
 
 
//       ],
      
//       )
//     ),
//     );

//   }
// }




import 'package:flutter/material.dart';
import 'package:currency_converter/functions/fetchrates.dart'; // Make sure this contains convertany()

class AnyToAny extends StatefulWidget {
  final Map rates;
  final Map currencies;

  const AnyToAny({
    Key? key,
    required this.rates,
    required this.currencies,
  }) : super(key: key);

  @override
  _AnyToAnyState createState() => _AnyToAnyState();
}

class _AnyToAnyState extends State<AnyToAny> {
  TextEditingController amountController = TextEditingController();
  String dropdownValue1 = 'INR'; // From currency
  String dropdownValue2 = 'AUD'; // To currency
  String answer = 'Converted currency will be shown here :)';

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.transparent,
      child: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Text(
                'Convert Any Currency',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(height: 20),
            TextFormField(
              key: const Key('amount'),
              controller: amountController,
              cursorColor: Colors.white,
              style: const TextStyle(color: Colors.white),
              decoration: const InputDecoration(
                hintText: 'Enter Amount',
                hintStyle: TextStyle(color: Colors.grey),
              ),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 10),

            /// Dropdowns for From and To currencies
            Row(
              children: [
                Expanded(
                  child: DropdownButton<String>(
                    dropdownColor: Colors.grey.shade900,
                    value: dropdownValue1,
                    style: const TextStyle(color: Colors.white),
                    icon: const Icon(Icons.arrow_drop_down_rounded, color: Colors.white),
                    isExpanded: true,
                    underline: Container(height: 2, color: Colors.grey.shade400),
                    onChanged: (String? newValue) {
                      setState(() {
                        dropdownValue1 = newValue!;
                      });
                    },
                    items: widget.currencies.keys.map<DropdownMenuItem<String>>((value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: DropdownButton<String>(
                    dropdownColor: Colors.grey.shade900,
                    value: dropdownValue2,
                    style: const TextStyle(color: Colors.white),
                    icon: const Icon(Icons.arrow_drop_down_rounded, color: Colors.white),
                    isExpanded: true,
                    underline: Container(height: 2, color: Colors.grey.shade400),
                    onChanged: (String? newValue) {
                      setState(() {
                        dropdownValue2 = newValue!;
                      });
                    },
                    items: widget.currencies.keys.map<DropdownMenuItem<String>>((value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 15),

            /// Convert Button
            Center(
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    final input = amountController.text.trim();
                    if (input.isEmpty) {
                      answer = 'Please enter an amount.';
                      return;
                    }

                    try {
                      answer = '$input $dropdownValue1 = ${convertany(widget.rates, input, dropdownValue1, dropdownValue2)} $dropdownValue2';
                    } catch (e) {
                      answer = 'Error: ${e.toString()}';
                    }
                  });
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.blue.shade400),
                ),
                child: const Text('Convert'),
              ),
            ),

            const SizedBox(height: 15),

            /// Answer
            Text(
              answer,
              style: const TextStyle(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
