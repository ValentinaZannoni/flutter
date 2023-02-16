import 'package:lezione2/dotenv.dart';
import 'package:lezione2/quote_service.dart';
import 'package:lezione2/future_service.dart';
import 'package:lezione2/lezione2.dart' as lezione2;
import 'package:dotenv/dotenv.dart';


void main(List<String> arguments) async{
//   int r = await Future.delayed(Duration(milliseconds: 2000), () {return 2;});
// FutureService f = FutureService();

// List<int> data = await Future.wait<int>([
//   f.doSomething(5000), 
//   f.doSomething(1000), 
//   f.doSomething(3000)
//   ]);

    var env = DotEnv(includePlatformEnvironment: true)..load();
    final token = env['token'];

    QuoteService qs = QuoteService();
    qs.getQuote(token);

    qs.getQuoteCharacter(token, "5cd99d4bde30eff6ebccfbbe");
}
