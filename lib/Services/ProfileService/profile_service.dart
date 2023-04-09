import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:git_clone/Models/ProfileModel.dart';

import '../../Core/Apis.dart';
import '../../Core/dio_cofig.dart';
import '../Others/log_service.dart';

//nb=

class GetProfileService {
  static final GetProfileService _inheritance = GetProfileService._init();

  static GetProfileService get inheritance => _inheritance;

  GetProfileService._init();

  static Future<ProfileModel?> getProfile() async {
    try {
      Response res = await DioConfig.inheritance.createRequest().get(Urls.user,
          options: Options(headers: {
            'Authorization': 'Bearer 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',
            'Accept': 'application/vnd.github+json',
            'X-GitHub-Api-Version': '2022-11-28'
          }));
      Log.i(res.data.toString());
      Log.i(res.statusCode.toString());

      if (res.statusCode == 200) {
        ProfileModel postList;

        postList = ProfileModel.fromJson(res.data);

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
  //nb=

  static Future<ProfileModel?> getOthersProfile(String login) async {
    Log.i('/users/Abdujabbor17/repos');
    try {
      Response res =
          await DioConfig.inheritance.createRequest().get('/users/${login}',
              options: Options(headers: {
                'Authorization':
                    'Bearer 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',
                'Accept': 'application/vnd.github+json',
                'X-GitHub-Api-Version': '2022-11-28'
              }));
      Log.i(res.data.toString());
      Log.i(res.statusCode.toString());

      if (res.statusCode == 200) {
        ProfileModel postList;

        postList = ProfileModel.fromJson(res.data);

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
