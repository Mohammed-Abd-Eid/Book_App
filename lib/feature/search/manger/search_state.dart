part of 'search_cubit.dart';

@immutable
abstract class SearchState {}

class SearchInitial extends SearchState {}

class SearchBooksLoading extends SearchState {}

class SearchBooksFailure extends SearchState {
  final String errorMessage;

  SearchBooksFailure(this.errorMessage);
}

class SearchBooksSuccess extends SearchState {
  final List<BookModels> books;

  SearchBooksSuccess(this.books);
}
