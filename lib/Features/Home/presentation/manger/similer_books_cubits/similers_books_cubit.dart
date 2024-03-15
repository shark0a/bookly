import 'package:bloc/bloc.dart';
import 'package:bookly/Features/Home/data/models/book_model/book_model.dart';
import 'package:bookly/Features/Home/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'similers_books_state.dart';

class SimilersBooksCubit extends Cubit<SimilersBooksState> {
  SimilersBooksCubit(this.homerepo) : super(SimilersBooksInitial());
  final HomeRepo homerepo;
  Future<void> fetchSimillerBooks() async {
    emit(SimilersBooksLoading());
    var result = await homerepo.fetchSimillerBooks();
    result.fold((faliure) => {emit(SimilersBooksFaluire(faliure.errMessage))},
        (books) => {emit(SimilersBooksSuccess(books))});
  }
}
