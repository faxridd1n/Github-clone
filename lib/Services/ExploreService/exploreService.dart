import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:git_clone/Models/ProfileModel.dart';
import 'package:git_clone/View/All%20Pages/Other_Pages/HomePages/repository.dart';

import '../../Core/Apis.dart';
import '../../Core/dio_cofig.dart';
import '../../Models/exploreModel.dart';
import '../../Models/foldersModel.dart';
import '../../Models/homeReposModel.dart';
import '../../Models/othersProfileModel.dart';
import '../Others/log_service.dart';

//nb=

class GetExploreService {
  static final GetExploreService _inheritance = GetExploreService._init();

  static GetExploreService get inheritance => _inheritance;

  GetExploreService._init();

  static Future<List<ExploreModel>?> getRepositories() async {
    try {
      Response res =
          await DioConfig.inheritance.createRequest().get(Urls.explore,
              options: Options(headers: {
                'Authorization':
                    'Bearer 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',
                'Accept': 'application/vnd.github+json',
                'X-GitHub-Api-Version': '2022-11-28'
              }));
      Log.i(res.data.toString());
      Log.i(res.statusCode.toString());

      if (res.statusCode == 200) {
        List<ExploreModel> exploreList = [];
        for (var e in (res.data as List)) {
          exploreList.add(ExploreModel.fromJson(e));
        }
        return exploreList;
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

  static Future<OthersProfileModel?> getrofileOthers(String name) async {
    try {
      Response res = await DioConfig.inheritance.createRequest().get(
          '${Urls.otherUser}${name}',
          options: Options(headers: {
            'Authorization': 'Bearer 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',
            'Accept': 'application/vnd.github+json',
            'X-GitHub-Api-Version': '2022-11-28'
          }));
      Log.i(res.data.toString());
      Log.i(res.statusCode.toString());

      if (res.statusCode == 200) {
        OthersProfileModel exploreList;

        exploreList = OthersProfileModel.fromJson(res.data);

        return exploreList;
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

  static Future<List<FoldersModel>?> getRepoOthers(String name) async {
    Log.i('/repos/${name}/contents');
    try {
      Response res = await DioConfig.inheritance.createRequest().get(
          '/repos/${name}/contents',
          options: Options(headers: {
            'Authorization': 'Bearer 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',
            'Accept': 'application/vnd.github+json',
            'X-GitHub-Api-Version': '2022-11-28'
          }));
      Log.i(res.data.toString());
      Log.i(res.statusCode.toString());

      if (res.statusCode == 200) {
        List<FoldersModel> postList = [];
        for (var e in (res.data as List)) {
          postList.add(FoldersModel.fromJson(e));
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

  static Future<List<FoldersModel>?> lib(
      String login, String project, String lib) async {
    try {
      Response res = await DioConfig.inheritance.createRequest().get(
            '${Urls.files}${login}/${project}/contents/${lib}',
            options: Options(
              headers: {
                'Authorization':
                    'Bearer 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',
                'Accept': 'application/vnd.github+json',
                'X-GitHub-Api-Version': '2022-11-28',
              },
            ),
          );
      Log.i(res.data.toString());
      Log.i(res.statusCode.toString());

      if (res.statusCode == 200) {
        List<FoldersModel> postList = [];
        for (var e in (res.data as List)) {
          postList.add(FoldersModel.fromJson(e));
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
