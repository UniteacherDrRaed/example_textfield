import 'package:flutter/material.dart';

class PageOne extends StatefulWidget {
  const PageOne({super.key});

  @override
  State<PageOne> createState() => _PageOneState();
}
String contentOfTextfield2="";
TextEditingController tc2=TextEditingController();
String contentItemInGridView="iitem";
TextEditingController textEditingController =TextEditingController();
class _PageOneState extends State<PageOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("writing something in GridView using Textfield"),
        backgroundColor: Colors.deepOrangeAccent,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: TextField(  
             maxLength: 5,
             maxLines: 2,
              controller: textEditingController,
             decoration:const InputDecoration(
              fillColor: Colors.greenAccent,
              filled:true,
              label: Text("name"),
              hintText: "write a word of length 5",
             ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: TextField(
              obscureText:true,
              decoration:const InputDecoration(
              
              fillColor: Colors.yellow,
              filled:true,
              
              hintText: "write password 5",
             ),
           
              controller: tc2,
              onChanged: (value) => setState(() {
                contentOfTextfield2=value;
          
              }),
            ),
          )
          ,
          OutlinedButton(
            onPressed: ()
            {
              setState(() {
               contentItemInGridView=textEditingController.text;

              });
              ScaffoldMessenger.of(context).
              showSnackBar(
                SnackBar(content: Text(contentOfTextfield2,
                style: const TextStyle(color: Colors.white),),
                backgroundColor: Colors.green,));
            },
             child:const Text("adding text to Gridview"))
          ,
          Container(
            padding: const EdgeInsets.all(4),
            height: 200,
            child: GridView.builder(
            itemCount: 12,
            gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10) , 
            itemBuilder: ( (context, index) => 
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(21),
                boxShadow: const [
                  BoxShadow(
                    offset: Offset(4, 4),
                    color: Colors.blueGrey,
                  )
                ],
                gradient: const LinearGradient(colors: [
                  Colors.orange,
                  Colors.green
                ])
              ),
              child: Center(
                child: Text(contentItemInGridView,
                style: TextStyle(fontSize: 14,color: Colors.white),),
              ),
            ))),
          ),
        ],
        
      ),
    );
  }
}