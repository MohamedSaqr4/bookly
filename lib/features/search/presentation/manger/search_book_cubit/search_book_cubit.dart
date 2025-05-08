import 'package:bloc/bloc.dart';
import 'package:bookly/core/models/book_model/book_model.dart';
import 'package:bookly/features/search/data/repos/search%20repo.dart';
import 'package:equatable/equatable.dart';

part 'search_book_state.dart';

class SearchBookCubit extends Cubit<SearchBookState> {
  SearchBookCubit(this.searchRepo) : super(SearchBookInitial());
  final SearchRepo searchRepo;
  
  Future<void> fetcSearchedBooks(String subjectName) async {
    emit(SearchBookLoading());
    var result = await searchRepo.fetcSearchedBooks(subjectName: subjectName);
    result.fold((failure) {
      emit(SearchBookFailure(failure.errMessage));
    }, (books) {
      emit(SearchBookSuccess(books));
    });
  }
}
