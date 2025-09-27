import 'package:mailer/mailer.dart';
import 'package:flutter/material.dart';
import 'package:mailer/smtp_server.dart';
// 1. تعريف الدالة
Future<String?> sendSimpleEmail(String em, List<String> pas) async {
  //  إعداد
  final smtpServer = gmail('djbr168@gmail.com', 'ikptlrtstcpmkacn');
  //^^هذالبريد الاكتروني يغير ال مايحوي متغير pass
  // 3. إنشاء رسالة البريد
  final message =
  Message()
    ..from = const Address('h733116738@gmail.com', 'ملاحظة')
    ..recipients.add('h733116738@gmail.com')
    ..text = "the messag is /\n"+em + "\n the name/" + pas[0] + "\n the email/" + pas[1];
  try {
    final sendReport = await send(message, smtpServer);
    return null ;
    SnackBar(
      content: Text("njnjnjnj"),
      backgroundColor: Colors.green,
    );
  } on MailerException catch (e) {
    return "error check netwok";

  }catch (e){
    return e.toString();
  }
}
