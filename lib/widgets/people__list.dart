import 'package:flutter/material.dart';

class Foydalanuvchilar extends StatelessWidget {

  final String id;
  final String name;
  final String phone;
  final String photo;
  final Function foydalanuvchiniUchirsh;

  Foydalanuvchilar({
    required this.id,
    required this.name,
    required this.phone,
    required this.photo,
    required this.foydalanuvchiniUchirsh
});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      child: Center(
        child: ListTile(
          leading: CircleAvatar(
            radius: 25,
            backgroundColor: Colors.blueAccent,
            backgroundImage: NetworkImage(photo),
          ),
          title: Text(name,style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
          subtitle: Text(phone),
          trailing: GestureDetector(
            onTap: (){
              foydalanuvchiniUchirsh(id);
            },
            child: const Icon(Icons.delete_outline,color: Colors.red,size: 30,),
          ),
        ),
      ),
    );
  }
}
