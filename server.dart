import 'dart:io';
import 'dart:async';

Future main() async {
  var server = await HttpServer.bind(
    InternetAddress.loopbackIPv4,
    3000,
  );
  print('ready in localhost${server.port}');
  await for (HttpRequest request in server) {
    request.response
      ..write('Hello world!')
      ..close();
  }
}