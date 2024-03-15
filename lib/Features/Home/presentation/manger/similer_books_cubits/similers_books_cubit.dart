import 'package:bloc/bloc.dart';
import 'package:bookly/Features/Home/data/models/book_model/book_model.dart';
import 'package:bookly/Features/Home/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'similers_books_state.dart';

class SimilarBooksCubit extends Cubit<SimilarBooksState> {
  SimilarBooksCubit(this.homerepo) : super(SimilarBooksInitial());
  final HomeRepo homerepo;
  Future<void> fetchSimilarBooks({required String category}) async {
    emit(SimilarBooksLoading());
    var result = await homerepo.fetchSimilarBooks(category: category);
    result.fold((faliure) => {emit(SimilarBooksFaluire(faliure.errMessage))},
        (books) => {emit(SimilarBooksSuccess(books))});
  }
}
