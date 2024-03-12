import 'package:bloc/bloc.dart';
import 'package:bookly/Features/Home/data/models/book_model/book_model.dart';
import 'package:bookly/Features/Home/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'feature_books_state.dart';

class FeatureBooksCubit extends Cubit<FeatureBooksState> {
  FeatureBooksCubit(this.homerepo) : super(FeatureBooksInitial());
  final HomeRepo homerepo;
  Future<void> fetchFeatureBooks() async {
    emit(FeatureBooksLoading());
    var result = await homerepo.fetchFeatureBooks();
    result.fold(
      (failure) => {
        emit(
          FeatureBooksFailure(failure.errMessage),
        ),
      },
      (books) => {
        emit(
          FeatureBooksSuccess(books),
        ),
      },
    );
  }
}
