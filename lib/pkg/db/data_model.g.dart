// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LocalChatLogReactionExtension _$LocalChatLogReactionExtensionFromJson(
        Map<String, dynamic> json) =>
    LocalChatLogReactionExtension(
      json['clientMsgID'] as String,
      (json['localReactionExtensions'] as List<dynamic>)
          .map((e) => (e as num).toInt())
          .toList(),
    );

Map<String, dynamic> _$LocalChatLogReactionExtensionToJson(
        LocalChatLogReactionExtension instance) =>
    <String, dynamic>{
      'clientMsgID': instance.clientMsgID,
      'localReactionExtensions': instance.localReactionExtensions,
    };

WorkMomentNotificationMsg _$WorkMomentNotificationMsgFromJson(
        Map<String, dynamic> json) =>
    WorkMomentNotificationMsg(
      notificationMsgType: (json['notificationMsgType'] as num).toInt(),
      replyUserName: json['replyUserName'] as String,
      replyUserID: json['replyUserID'] as String,
      content: json['content'] as String,
      contentID: json['contentID'] as String,
      workMomentID: json['workMomentID'] as String,
      userID: json['userID'] as String,
      userName: json['userName'] as String,
      faceURL: json['faceURL'] as String,
      workMomentContent: json['workMomentContent'] as String,
      createTime: (json['createTime'] as num).toInt(),
    );

Map<String, dynamic> _$WorkMomentNotificationMsgToJson(
        WorkMomentNotificationMsg instance) =>
    <String, dynamic>{
      'notificationMsgType': instance.notificationMsgType,
      'replyUserName': instance.replyUserName,
      'replyUserID': instance.replyUserID,
      'content': instance.content,
      'contentID': instance.contentID,
      'workMomentID': instance.workMomentID,
      'userID': instance.userID,
      'userName': instance.userName,
      'faceURL': instance.faceURL,
      'workMomentContent': instance.workMomentContent,
      'createTime': instance.createTime,
    };

LocalVersionSync _$LocalVersionSyncFromJson(Map<String, dynamic> json) =>
    LocalVersionSync(
      table: json['tableName'] as String,
      entityID: json['entityID'] as String,
      versionID: json['versionID'] as String,
      version: (json['version'] as num).toInt(),
      createTime: (json['createTime'] as num).toInt(),
      uidList:
          (json['uidList'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$LocalVersionSyncToJson(LocalVersionSync instance) =>
    <String, dynamic>{
      'tableName': instance.table,
      'entityID': instance.entityID,
      'versionID': instance.versionID,
      'version': instance.version,
      'createTime': instance.createTime,
      'uidList': instance.uidList,
    };
