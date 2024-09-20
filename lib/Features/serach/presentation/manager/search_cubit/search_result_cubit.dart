import 'package:bloc/bloc.dart';
import 'package:booly_app/Features/home/data/models/book_model/book_model.dart';
import 'package:booly_app/Features/serach/data/repos/search_repo.dart';
import 'package:equatable/equatable.dart';

part 'search_result_state.dart';

class SearchResultCubit extends Cubit<SearchResultState> {
  SearchResultCubit(this.searchRepo) : super(SearchResultInitial());

  final SearchRepo searchRepo;
  Future<void> fetchFeaturedBooks({required String searchText}) async {
    var result = await searchRepo.fetchSearchedBooks(searchText: searchText);
    print("ssssssssssssss!!!!!!!!!!!!!:::: ${searchText}");

    result.fold((failure) {
      print("Failure occurred: ${failure.message}");
      emit(SearchResultFailure(failure.message));
    }, (books) {
      print("Success! Books count: ${books.length}");
      emit(SearchResultSuccess(books));
    });
  }
}
