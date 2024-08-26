import 'package:flutter/material.dart';
void main()
{
  runApp(const WhatsApp());
}

class WhatsApp extends StatefulWidget {
  const WhatsApp({super.key});

  @override
  State<WhatsApp> createState() => _WhatsAppState();
}

class _WhatsAppState extends State<WhatsApp> {

  var userTimes = ["12:30 pm", "1:00 pm", "12:10 pm", "12:00 am", "11:30 pm", "10:30 pm", "2:30 pm", "9:30 pm", "8:30 pm", "7:30 pm", "10:10 pm", "1:20"];

  var userMessages = ["Done", "By", "Allah Hafiz", "Ok ho gya", "Hi", "we'll do that ", "Kab ana hai?", "its my pleasure", "Yup", "wow", "??", "han Arslan"];
  var userNames = ["Arslan Tariq", "Mannan Tariq", "Adnan", "Zohaib", "Zubair", "Kiran", "Khubaib", "Umair", "Khadija Hashmi", "Zain", "Zaib", "Fahad"];
  var userImages = ["https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS4khmVDWlXp-FR6Mx24u8dzZiWBBMDNJRedA&usqp=CAU", "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ3JR4__jPbKb_YD75rTU5X4Gw3YSgs4bYxUg&usqp=CAU", "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS3bHrrU56ZRAXx3GYUn7NtigvYeXZIwUCQ_w&usqp=CAU", "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT283mHflL05nZUM-rX31iKsZV4UclYu17QyA&usqp=CAU", "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT-y-5SfOSwfQYRAcOtyDhw3HODnEip7ZlAWw&usqp=CAU", "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS3pGIDzLdH4F2poV7sMa_yT_CPBApoWjKe1g&usqp=CAU", "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTaVsz5XxXumgiQEBHiIP-BmYZUDYLKDnH16A&usqp=CAU", "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSvvrDxgDFYlDPtNEI34COIRMKxApdJeQ1zJw&usqp=CAU", "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQITsPyv1aBAiIQY_Ss8eZWhjCK-3zMK2eiag&usqp=CAU", "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRtl7ljJYLGkCY5YLeNSoJgRQQZLmgtwdyPoA&usqp=CAU", "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRGK3O_HaP3XtdZ5RiWPrn0ZdkjpKLJthxlZA&usqp=CAU", "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTmZwoWBE9mAFNOAmiWX--mNPcHjty-EhVRvIRDduc1gEZHNtvWTuXZdlB1TQRVwhJ0WAQ&usqp=CAU"];
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.teal,
            title: const Text("WhatsApp",style: TextStyle(
              color: Colors.white
            ),),
            actions: [
              IconButton(
                onPressed: (){},
                icon: const Icon(Icons.camera_alt_outlined, color: Colors.white,),
              ),

              IconButton(
                onPressed: (){},
                icon: const Icon(Icons.search, color: Colors.white,),
              ),

              IconButton(
                onPressed: (){},
                icon: const Icon(Icons.more_vert, color: Colors.white,),
              ),
            ],
            bottom: const TabBar(
              unselectedLabelColor: Colors.white,
              indicatorColor: Colors.white,
                indicatorSize: TabBarIndicatorSize.tab,
                indicatorWeight: 2,
                tabs: [
                  Tab(
                    icon: Icon(Icons.group),
                  ),
                  Tab(
                 text: "Chats",
                  ),
                  Tab(
                    text: "Status",
                  ),
                  Tab(
                    text: "Calls",
                  ),
                ]
            ),
          ),
          body: TabBarView(

              children: [
                Container(),
                Column(
                  children: [
                    Expanded(
                      child: ListView.builder(
                        itemCount: userNames.length,
                        itemBuilder: (context, index){
                          return  ListTile(
                            leading: CircleAvatar(
                              radius: 30,
                              backgroundImage: NetworkImage(userImages[index]),
                            ),
                            title: Text(userNames[index]),
                            subtitle: Text(userMessages[index]),
                            trailing: Text(userTimes[index]),
                          );
                        },
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Expanded(
                      child: ListView.builder(
                        itemCount: userNames.length,
                        itemBuilder: (context, index){
                          return  const ListTile(
                            leading: CircleAvatar(
                              radius: 30,
                            ),
                            title: Text("Arslan Tariq"),
                            subtitle: Text("30 minutes ago"),
                          );
                        },
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Expanded(
                      child: ListView.builder(
                        itemCount: userNames.length,
                        itemBuilder: (context, index){
                          return  ListTile(
                            leading: const CircleAvatar(
                              radius: 30,
                            ),
                            title: const Text("Asif Raza"),
                            subtitle: const Text("Today, 4:02 pm"),
                            trailing: index%2 == 0 ? const Icon(Icons.phone) : const Icon(Icons.video_call),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ]
          )
        ),
      ),
    );
  }
}
