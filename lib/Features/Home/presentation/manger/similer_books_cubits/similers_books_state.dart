part of 'similers_books_cubit.dart';

abstract class SimilersBooksState extends Equatable {
  const SimilersBooksState();

  @override
  List<Object> get props => [];
}

class SimilersBooksInitial extends SimilersBooksState {}

class SimilersBooksLoading extends SimilersBooksState {}

class SimilersBooksFaluire extends SimilersBooksState {
  final String errmessage;

  const SimilersBooksFaluire(this.errmessage);
}

class SimilersBooksSuccess extends SimilersBooksState {
  final List<BookModel> books;

const  SimilersBooksSuccess(this.books);
}
