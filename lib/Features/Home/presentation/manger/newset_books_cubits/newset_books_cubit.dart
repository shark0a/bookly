import 'package:bloc/bloc.dart';
import 'package:bookly/Features/Home/data/models/book_model/book_model.dart';
import 'package:bookly/Features/Home/repos/home_repo.dart';
import 'package:equatable/equatable.dart';
part 'newset_books_state.dart';

class NewsetBooksCubit extends Cubit<NewsetBooksState> {
  NewsetBooksCubit(this.homerepo) : super(NewsetBooksInitial());
  final HomeRepo homerepo;
  Future<void> fetchNewsetBooks() async {
    emit(NewsetBooksLoading());
    var result = await homerepo.fetchNewsBooks();
    result.fold(
        (faliure) => {
              emit(NewsetBooksFaliure(faliure.errMessage)),
            },
        (books) => {emit(NewsetBooksSuccess(books))});
  }
}
