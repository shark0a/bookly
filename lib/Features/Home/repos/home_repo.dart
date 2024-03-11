import 'package:bookly/Features/Home/data/models/book_model/book_model.dart';
import 'package:bookly/core/errors/failures.dart';
import 'package:eitherx/eitherx.dart';

abstract class HomeRepo {
  Future<Either<Faliures, List<BookModel>>> fetchBestSellerBooks();
  Future<Either<Faliures, List<BookModel>>> fetchFeatureBooks();
}
