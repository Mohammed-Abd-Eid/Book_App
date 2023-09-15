// ignore_for_file: depend_on_referenced_packages

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../models/book_models/book_models.dart';
import '../../models/repository/home_repo.dart';

part 'news_book_state.dart';

class NewsBookCubit extends Cubit<NewsBookState> {
  NewsBookCubit(this.homeRepo) : super(NewsBookInitial());
  final HomeRepo homeRepo;

  Future<void> fetchNewsBooks() async {
    emit(NewsBooksLoading());
    var result = await homeRepo.fetchBestSellerBooks();
    result.fold((failure) {
      emit(NewsBooksFailure(failure.errorMessage));
    }, (books) {
      emit(NewsBooksSuccess(books));
    });
  }
}
