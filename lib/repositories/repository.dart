import 'package:hobbiton_flutter_api_project/models/quotes.dart';

abstract class QuotesRepository {
  Future<List<Quotes>> getQuotes();

}