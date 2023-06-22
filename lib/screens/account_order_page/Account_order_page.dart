import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class accountOrderPage extends StatelessWidget {
  const accountOrderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text('My Orders'),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 20),
          child: Icon(Icons.search),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 20),
          child: Icon(Icons.shopping_cart),
        ),

      ],
       ),
    
       body: SafeArea(
        child:ListView(
          children: [
                 SizedBox(height: 15,),
           
       Row(
              children: [
                SizedBox(width: 10,),
                Expanded(
                  child: TextField(decoration:InputDecoration(
                    contentPadding: const EdgeInsets.only(top: 10,bottom: 10),
                    border: OutlineInputBorder(),
                    hintText: 'Search for products',
                    prefixIcon: Icon(Icons.search),
                    
                    ),
                    ),
                ),
                SizedBox(width: 10,),
                Icon(Icons.filter_list_sharp),
                 SizedBox(width: 10,),
                Text('Filters'),
                 SizedBox(width: 15,),


                
              ],
      ),

      Padding(
        padding: const EdgeInsets.only(top: 5),
        child: Divider(thickness: .3,color: Colors.black,),
      ),

      Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 15,left: 15),
            child: Image(image: AssetImage('assets/my oders images/my oders image1.png'),width: 70,height: 100,),
          ),

          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 30,),
                child: Text('Delivery on Dec 26,2022',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 15),),
                
              ),
              Padding(
                padding: const EdgeInsets.only(left: 37,),
                child: Text('realmi C30 (Denim Black ,32 GB)'),
              )
              
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25),
            child: Icon(Icons.arrow_forward_ios_sharp),
          )
        ],
      ),


      
      Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 15,left: 15),
            child: Image(image: AssetImage('assets/my oders images/discovryimage.png'),width: 70,height: 100,),
          ),

          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 30,),
                child: Text('Delivered on Dec 26,2022',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 15),),
                
              ),
              Padding(
                padding: const EdgeInsets.only(left: 37,),
                // child: Text('Free Discovery+25% Off on annual..'),
                    child: RichText(
          text: TextSpan(
            text: 'Free ',
            style: TextStyle(color: Colors.green),
            children: [
              TextSpan(
                text: 'Discovery+25% Off on annual..',
                style: TextStyle(color: Colors.black),
              ),
            ],
          ),
        ),
              )
              
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Icon(Icons.arrow_forward_ios_sharp),
          )
        ],
      ),

      Divider(thickness: .3,color: Colors.black,),








            Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 15,),
            child: Image(image: AssetImage('assets/my oders images/my oders image2.png'),width: 70,height: 100,),
          ),

          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 30,left: 50),
                child: Text('Cancelled on Dec 22,2022',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 15),),
                
              ),
              Padding(
                padding: const EdgeInsets.only(left: 37,),
                child: Text('realmi C30 (Lake Blue,32)'),
              )
              
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 55),
            child: Icon(Icons.arrow_forward_ios_sharp),
          )
        ],
      ),


      
      Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 15,left: 15),
            child: Image(image: AssetImage('assets/my oders images/discovryimage.png'),width: 70,height: 100,),
          ),

          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 30),
                child: Text('Cancelled on Dec 22,2022',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 15),),
                
              ),
              Padding(
                padding: const EdgeInsets.only(left: 40,),
                child: Text('Free Discovery+25% Off on annual..'),
             
              )
              
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Icon(Icons.arrow_forward_ios_sharp),
          )
        ],
      ),

      Divider(thickness: .3,color: Colors.black,),







      
            Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 15,),
            child: Image(image: AssetImage('assets/my oders images/my oders image3.png'),width: 70,height: 100,),
          ),

          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 50),
                child: Text('Delivered on Dec 16,2022',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 15),),
                
              ),
              Padding(
                padding: const EdgeInsets.only(top: 50,left: 40),
                child: Text('OppO F19 Pro+(Space Silver,128 GB)',style: TextStyle(fontSize: 14),),
              )
              
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left:20),
            child: Icon(Icons.arrow_forward_ios_sharp),
          )
        ],
      ),


      
      Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 15,left: 15),
            child: Image(image: AssetImage('assets/my oders images/discovryimage.png'),width: 70,height: 100,),
          ),

          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 30),
                child: Text('Delivered on Dec 16,2022',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 15),),
                
              ),
              Padding(
                padding: const EdgeInsets.only(left: 40,),
                child: Text('Free Discovery+25% Off on annual..'),
             
              )
              
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Icon(Icons.arrow_forward_ios_sharp),
          )
        ],
      ),

      Divider(thickness: .3,color: Colors.black,),
            
          ],
        )
       ),
    );
  }
}