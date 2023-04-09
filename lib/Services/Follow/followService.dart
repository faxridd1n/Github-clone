import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:git_clone/Models/ProfileModel.dart';
import 'package:git_clone/Models/othersProfileModel.dart';
import 'package:git_clone/View/All%20Pages/Other_Pages/HomePages/repository.dart';

import '../../Core/Apis.dart';
import '../../Core/dio_cofig.dart';
import '../../Models/homeReposModel.dart';
import '../Others/log_service.dart';

class GetFollowInfoService {
  static final GetFollowInfoService _inheritance = GetFollowInfoService._init();

  static GetFollowInfoService get inheritance => _inheritance;

  GetFollowInfoService._init();

  static Future<List<OthersProfileModel>?> getFollowing(
      String login) async {
    try {
      Log.i(Urls.repositories);
      Response res = await DioConfig.inheritance.createRequest().get(
          '/users/${login}/following',
          options: Options(headers: {
            'Authorization': 'Bearer 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',
            'Accept': 'application/vnd.github+json',
            'X-GitHub-Api-Version': '2022-11-28'
          }));
      Log.i(res.data.toString());
      Log.i(res.statusCode.toString());

      if (res.statusCode == 200) {
        List<OthersProfileModel> postList = [];
        for (var e in (res.data as List)) {
          postList.add(OthersProfileModel.fromJson(e));
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


   static Future<List<OthersProfileModel>?> getFollower(
      String login) async {
    try {
      Log.i(Urls.repositories);
      Response res = await DioConfig.inheritance.createRequest().get(
          '/users/${login}/followers',
          options: Options(headers: {
            'Authorization': 'Bearer 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',
            'Accept': 'application/vnd.github+json',
            'X-GitHub-Api-Version': '2022-11-28'
          }));
      Log.i(res.data.toString());
      Log.i(res.statusCode.toString());

      if (res.statusCode == 200) {
        List<OthersProfileModel> postList = [];
        for (var e in (res.data as List)) {
          postList.add(OthersProfileModel.fromJson(e));
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
