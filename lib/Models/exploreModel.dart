// To parse this JSON data, do
//
//     final exploreModel = exploreModelFromJson(jsonString);

import 'dart:convert';

List<ExploreModel> exploreModelFromJson(String str) => List<ExploreModel>.from(json.decode(str).map((x) => ExploreModel.fromJson(x)));

String exploreModelToJson(List<ExploreModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ExploreModel {
    ExploreModel({
        this.id,
        this.type,
        this.actor,
        this.repo,
        this.payload,
        this.public,
        this.createdAt,
    });

    String? id;
    String? type;
    Actor? actor;
    Repo? repo;
    Payload? payload;
    bool? public;
    DateTime? createdAt;

    factory ExploreModel.fromJson(Map<String, dynamic> json) => ExploreModel(
        id: json["id"],
        type: json["type"],
        actor: json["actor"] == null ? null : Actor.fromJson(json["actor"]),
        repo: json["repo"] == null ? null : Repo.fromJson(json["repo"]),
        payload: json["payload"] == null ? null : Payload.fromJson(json["payload"]),
        public: json["public"],
        createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "type": type,
        "actor": actor?.toJson(),
        "repo": repo?.toJson(),
        "payload": payload?.toJson(),
        "public": public,
        "created_at": createdAt?.toIso8601String(),
    };
}

class Actor {
    Actor({
        this.id,
        this.login,
        this.displayLogin,
        this.gravatarId,
        this.url,
        this.avatarUrl,
    });

    int? id;
    String? login;
    String? displayLogin;
    String? gravatarId;
    String? url;
    String? avatarUrl;

    factory Actor.fromJson(Map<String, dynamic> json) => Actor(
        id: json["id"],
        login: json["login"],
        displayLogin: json["display_login"],
        gravatarId: json["gravatar_id"],
        url: json["url"],
        avatarUrl: json["avatar_url"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "login": login,
        "display_login": displayLogin,
        "gravatar_id": gravatarId,
        "url": url,
        "avatar_url": avatarUrl,
    };
}

class Payload {
    Payload({
        this.ref,
        this.refType,
        this.masterBranch,
        this.description,
        this.pusherType,
    });

    dynamic ref;
    String? refType;
    String? masterBranch;
    String? description;
    String? pusherType;

    factory Payload.fromJson(Map<String, dynamic> json) => Payload(
        ref: json["ref"],
        refType: json["ref_type"],
        masterBranch: json["master_branch"],
        description: json["description"],
        pusherType: json["pusher_type"],
    );

    Map<String, dynamic> toJson() => {
        "ref": ref,
        "ref_type": refType,
        "master_branch": masterBranch,
        "description": description,
        "pusher_type": pusherType,
    };
}

class Repo {
    Repo({
        this.id,
        this.name,
        this.url,
    });

    int? id;
    String? name;
    String? url;

    factory Repo.fromJson(Map<String, dynamic> json) => Repo(
        id: json["id"],
        name: json["name"],
        url: json["url"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "url": url,
    };
}
