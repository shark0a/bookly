import 'package:bookly/Features/Home/data/models/book_model/book_model.dart';
import 'package:bookly/Features/Home/repos/home_repo.dart';
import 'package:bookly/core/errors/failures.dart';
import 'package:eitherx/src/either.dart';

class HomeRepoImplement implements HomeRepo{
  @override
  Future<Either<Faliures, List<BookModel>>> fetchBestSellerBooks() {
   
    throw UnimplementedError();
  }

  @override
  Future<Either<Faliures, List<BookModel>>> fetchFeatureBooks() {
    // TODO: implement fetchFeatureBooks
    throw UnimplementedError();
  }

}