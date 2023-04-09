import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:git_clone/Models/ProfileModel.dart';
import 'package:git_clone/View/All%20Pages/Other_Pages/HomePages/repository.dart';

import '../../Core/Apis.dart';
import '../../Core/dio_cofig.dart';
import '../../Models/homeReposModel.dart';
import '../Others/log_service.dart';

//nb=

class GetRepositoryService {
  static final GetRepositoryService _inheritance = GetRepositoryService._init();

  static GetRepositoryService get inheritance => _inheritance;

  GetRepositoryService._init();

  static Future<List<RepositoriesModel>?> getRepositories() async {
    try {
      Log.i(Urls.repositories);
      Response res =
          await DioConfig.inheritance.createRequest().get(Urls.repositories,
              options: Options(headers: {
                'Authorization':
                    'Bearer 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',
                'Accept': 'application/vnd.github+json',
                'X-GitHub-Api-Version': '2022-11-28'
              }));
      Log.i(res.data.toString());
      Log.i(res.statusCode.toString());

      if (res.statusCode == 200) {
        List<RepositoriesModel> postList = [];
        for (var e in (res.data as List)) {
          postList.add(RepositoriesModel.fromJson(e));
        }
        return postList;
      } else {
        Log.e("${res.statusMessage} ${res.statusCode}");
      }
    } on DioError catch (e) {
      if (e.response != null) {
        Log.e(e.response!.toString());
      } else {
        rethrow;
      }
    } catch (e) {
      Log.e(e.toString());
    }
    return null;
  }

  static Future<List<RepositoriesModel>?> getReposFolders(
      String project) async {
    try {
      Response res = await DioConfig.inheritance.createRequest().get(
          '${Urls.folders + project}/contents',
          options: Options(headers: {
            'Authorization': 'Bearer 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',
            'Accept': 'application/vnd.github+json',
            'X-GitHub-Api-Version': '2022-11-28'
          }));
      Log.i(res.data.toString());
      Log.i(res.statusCode.toString());

      if (res.statusCode == 200) {
        List<RepositoriesModel> postList = [];
        for (var e in (res.data as List)) {
          postList.add(RepositoriesModel.fromJson(e));
        }
        return postList;
      } else {
        Log.e("${res.statusMessage} ${res.statusCode}");
      }
    } on DioError catch (e) {
      if (e.response != null) {
        Log.e(e.response!.toString());
      } else {
        rethrow;
      }
    } catch (e) {
      Log.e(e.toString());
    }
    return null;
  }




  
  static Future<List<RepositoriesModel>?> getOthersRepositories(String login) async {
    try {
      Log.i(Urls.repositories);
      Response res =
          await DioConfig.inheritance.createRequest().get('/users/${login}/repos',
              options: Options(headers: {
                'Authorization':
                    'Bearer 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',
                'Accept': 'application/vnd.github+json',
                'X-GitHub-Api-Version': '2022-11-28'
              }));
      Log.i(res.data.toString());
      Log.i(res.statusCode.toString());

      if (res.statusCode == 200) {
        List<RepositoriesModel> postList = [];
        for (var e in (res.data as List)) {
          postList.add(RepositoriesModel.fromJson(e));
        }
        return postList;
      } else {
        Log.e("${res.statusMessage} ${res.statusCode}");
      }
    } on DioError catch (e) {
      if (e.response != null) {
        Log.e(e.response!.toString());
      } else {
        rethrow;
      }
    } catch (e) {
      Log.e(e.toString());
    }
    return null;
  }
}
