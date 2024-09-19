import 'package:booly_app/Features/home/data/models/book_model/book_model.dart';
import 'package:booly_app/Features/serach/data/repos/search_repo.dart';
import 'package:booly_app/core/errors/failure.dart';
import 'package:booly_app/core/utils/api_service.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class SearchRepoImpl extends SearchRepo{
  final ApiService apiService;

  SearchRepoImpl(this.apiService);
  @override
  Future<Either<Failure, List<BookModel>>> fetchSearchedBooks({required String searchText}) async{
        try {
      var data = await apiService.get(
          endPoint:
              "volumes?Filtering=free-ebooks&Sorting=newest &q=$searchText");

      List<BookModel> books = [];
      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }

      return right(books);
    } on Exception catch (e) {
      if (e is DioException) {
        return left(ServerFailure(message: e.message!));
      }

      return left(ServerFailure(message: e.toString()));
    }
  }




 }