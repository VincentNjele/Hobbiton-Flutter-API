
import 'package:hobbiton_flutter_api_project/models/quotes.dart';
import 'package:hobbiton_flutter_api_project/repositories/repository.dart';

class QuotesController {

  final QuotesRepository _quotesRepository;

  QuotesController(this._quotesRepository);

  Future<List<Quotes>> fetchQuotes () async {
    return _quotesRepository.getQuotes();
  }
}