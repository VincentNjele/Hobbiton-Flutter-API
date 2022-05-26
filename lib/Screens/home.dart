import 'package:flutter/material.dart';
import 'package:hobbiton_flutter_api_project/controllers/quotesController.dart';
import 'package:hobbiton_flutter_api_project/models/quotes.dart';
import 'package:hobbiton_flutter_api_project/repositories/implementRepository.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {

    var quotes = QuotesController(ImplementRepository());
    return Scaffold(

      appBar: AppBar(title: const Text("Quotes API")
        ,centerTitle: true,
       backgroundColor: Colors.orange[100],
      ),
      body: FutureBuilder<List<Quotes>>(
        future: quotes.fetchQuotes(),
        builder: (context, snapshot) {
          if(snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          if(snapshot.hasError) {
            return const Center(
              child: Text("an error has occured"),
            );
          }
          return ListView.separated(
              itemBuilder: (context, index) {
                var quote = snapshot.data?[index];
                return ListTile(
                  title: Text("Title: ${quote?.text}"),
                  subtitle: Text("Author: ${quote?.author}"),
                );
              },
              separatorBuilder: (context, index) {
                return const Divider(
                  height: 0.5,
                  thickness: 0.9,
                );
              },
              itemCount: snapshot.data?.length ?? 0,
          );
        }
        ),
      );
  }
}
