part of 'news_book_cubit.dart';

@immutable
abstract class NewsBookState {}

class NewsBookInitial extends NewsBookState {}

class NewsBooksInitial extends NewsBookState {}

class NewsBooksLoading extends NewsBookState {}

class NewsBooksFailure extends NewsBookState {
  final String errorMessage;

  NewsBooksFailure(this.errorMessage);
}

class NewsBooksSuccess extends NewsBookState {
  final List<BookModels> books;

  NewsBooksSuccess(this.books);
}
