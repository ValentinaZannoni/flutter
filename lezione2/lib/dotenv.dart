import 'dart:html';

import 'package:dotenv/dotenv.dart';


class Dotenv{


  fun() async{
    var env = DotEnv(includePlatformEnvironment: true)..load();
    print({env['token']});
}

}

