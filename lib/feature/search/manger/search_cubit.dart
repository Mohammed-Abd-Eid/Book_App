// ignore_for_file: depend_on_referenced_packages

import 'package:bloc/bloc.dart';
import 'package:flutter_application_1/feature/home/models/book_models/book_models.dart';
import 'package:meta/meta.dart';

import '../../home/models/repository/home_repo.dart';

part 'search_state.dart';

class SearchCubit extends Cubit<SearchState> {
  SearchCubit(
    this.homeRepo,
  ) : super(SearchInitial());
  final HomeRepo homeRepo;

  Future<void> searchBook({required String searchText}) async {
    emit(SearchBooksLoading());
    var result = await homeRepo.searchBook(searchText: searchText);
    result.fold((failure) {
      emit(SearchBooksFailure(failure.errorMessage));
    }, (books) {
      emit(SearchBooksSuccess(books));
    });
  }
}
