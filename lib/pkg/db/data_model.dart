import 'dart:convert';

import 'package:drift/drift.dart';
import 'package:drift_flutter/drift_flutter.dart';
import 'package:json_annotation/json_annotation.dart' as json_annotation;

part 'data_model.g.dart';

class LocalFriend extends Table {
  TextColumn get ownerUserID =>
      text().named('owner_user_id').withLength(max: 64)();
  TextColumn get friendUserID =>
      text().named('friend_user_id').withLength(max: 64)();
  TextColumn get remark => text().withLength(max: 255)();
  IntColumn get createTime => integer()();
  IntColumn get addSource => integer()();
  TextColumn get operatorUserID =>
      text().named('operator_user_id').withLength(max: 64)();
  TextColumn get nickname => text().withLength(max: 255)();
  TextColumn get faceURL => text().named('face_url').withLength(max: 255)();
  TextColumn get ex => text().withLength(max: 1024)();
  TextColumn get attachedInfo => text().withLength(max: 1024)();
  BoolColumn get isPinned => boolean()();

  @override
  Set<Column<Object>>? get primaryKey => {ownerUserID, friendUserID};

  @override
  String? get tableName => 'local_friends';
}

class LocalFriendRequest extends Table {
  TextColumn get fromUserID =>
      text().named('from_user_id').withLength(max: 64)();
  TextColumn get fromNickname => text().withLength(max: 255)();
  TextColumn get fromFaceURL =>
      text().named('from_face_url').withLength(max: 255)();
  // IntColumn get fromGender => integer()();
  TextColumn get toUserID => text().named('to_user_id').withLength(max: 64)();
  TextColumn get toNickname => text().withLength(max: 255)();
  TextColumn get toFaceURL =>
      text().named('to_face_url').withLength(max: 255)();
  // IntColumn get toGender => integer()();

  IntColumn get handleResult => integer()();
  TextColumn get reqMsg => text().withLength(max: 255)();
  IntColumn get createTime => integer()();
  TextColumn get handlerUserID =>
      text().named('handler_user_id').withLength(max: 64)();
  TextColumn get handleMsg => text().withLength(max: 255)();
  IntColumn get handleTime => integer()();
  TextColumn get ex => text().withLength(max: 1024)();

  TextColumn get attachedInfo => text().withLength(max: 1024)();

  @override
  Set<Column<Object>>? get primaryKey => {fromUserID, toUserID};
}

class LocalGroup extends Table {
  TextColumn get groupID => text().named('group_id').withLength(max: 64)();
  TextColumn get groupName => text().withLength()();
  TextColumn get notification => text().withLength(max: 255)();
  TextColumn get introduction => text().withLength(max: 255)();
  TextColumn get faceURL => text().named('face_url').withLength(max: 255)();
  IntColumn get createTime => integer()();
  IntColumn get status => integer()();
  TextColumn get creatorUserID =>
      text().named('creator_user_id').withLength(max: 64)();
  IntColumn get groupType => integer()();
  TextColumn get ownerUserID =>
      text().named('owner_user_id').withLength(max: 64)();
  IntColumn get memberCount => integer()();
  TextColumn get ex => text().withLength(max: 1024)();
  TextColumn get attachedInfo => text().withLength(max: 1024)();
  IntColumn get needVerification => integer()();
  IntColumn get lookMemberInfo => integer()();
  IntColumn get applyMemberFriend => integer()();
  IntColumn get notificationUpdateTime => integer()();
  TextColumn get notificationUserID => text().named('notification_user_id')();

  @override
  Set<Column<Object>>? get primaryKey => {groupID};

  @override
  String? get tableName => 'local_groups';
}

@TableIndex(name: 'index_role_level', columns: {#roleLevel})
@TableIndex(name: 'index_join_time', columns: {#joinTime})
class LocalGroupMember extends Table {
  TextColumn get groupID => text().named('group_id').withLength(max: 64)();
  TextColumn get userID => text().named('user_id').withLength(max: 64)();
  TextColumn get nickname => text().withLength(max: 255)();
  TextColumn get faceURL => text().named('face_url').withLength(max: 255)();
  IntColumn get roleLevel => integer()();
  IntColumn get joinTime => integer()();
  IntColumn get joinSource => integer()();
  TextColumn get inviterUserID =>
      text().named('inviter_user_id').withLength(max: 64)();
  IntColumn get muteEndTime => integer().withDefault(const Constant(0))();
  TextColumn get operatorUserID =>
      text().named('operator_user_id').withLength(max: 64)();
  TextColumn get ex => text().withLength(max: 1024)();
  TextColumn get attachedInfo => text().withLength(max: 1024)();

  @override
  Set<Column<Object>>? get primaryKey => {groupID, userID};

  @override
  String? get tableName => 'local_group_members';
}

class LocalGroupRequest extends Table {
  TextColumn get groupID => text().named('group_id').withLength(max: 64)();
  TextColumn get groupName => text().withLength(max: 255)();
  TextColumn get notification => text().withLength(max: 255)();
  TextColumn get introduction => text().withLength(max: 255)();
  TextColumn get groupFaceURL =>
      text().named('group_face_url').withLength(max: 255)();
  IntColumn get createTime => integer()();
  IntColumn get status => integer()();
  TextColumn get creatorUserID =>
      text().named('creator_user_id').withLength(max: 64)();
  IntColumn get groupType => integer()();
  TextColumn get ownerUserID =>
      text().named('owner_user_id').withLength(max: 64)();
  IntColumn get memberCount => integer()();

  TextColumn get userID => text().named('user_id').withLength(max: 64)();
  TextColumn get nickname => text().withLength(max: 255)();
  TextColumn get userFaceURL =>
      text().named('user_face_url').withLength(max: 255)();

  IntColumn get handleResult => integer()();
  TextColumn get reqMsg => text().withLength(max: 255)();
  TextColumn get handleMsg => text().withLength(max: 255)();
  IntColumn get reqTime => integer()();
  TextColumn get handleUserID =>
      text().named('handle_user_id').withLength(max: 64)();
  IntColumn get handleTime => integer()();
  TextColumn get ex => text().withLength(max: 1024)();
  TextColumn get attachedInfo => text().withLength(max: 1024)();
  IntColumn get joinSource => integer()();
  TextColumn get inviterUserID =>
      text().named('inviter_user_id').withLength(max: 64)();

  @override
  Set<Column<Object>>? get primaryKey => {groupID, userID};
}

class LocalUser extends Table {
  TextColumn get userID => text().named('user_id').withLength(max: 64)();
  TextColumn get nickname => text().withLength(max: 255)();
  TextColumn get faceURL => text().named('face_url').withLength(max: 255)();
  IntColumn get createTime => integer()();
  IntColumn get appMangerLevel => integer()();
  TextColumn get ex => text().withLength(max: 1024)();
  TextColumn get attachedInfo => text().withLength(max: 1024)();
  IntColumn get globalRecvMsgOpt => integer()();

  @override
  Set<Column<Object>>? get primaryKey => {userID};
}

class LocalBlack extends Table {
  TextColumn get ownerUserID =>
      text().named('owner_user_id').withLength(max: 64)();
  TextColumn get blockUserID =>
      text().named('block_user_id').withLength(max: 64)();
  TextColumn get nickname => text().withLength(max: 255)();
  TextColumn get faceURL => text().named('face_url').withLength(max: 255)();
  IntColumn get createTime => integer()();
  IntColumn get addSource => integer()();
  TextColumn get operatorUserID =>
      text().named('operator_user_id').withLength(max: 64)();
  TextColumn get ex => text().withLength(max: 1024)();
  TextColumn get attachedInfo => text().withLength(max: 1024)();

  @override
  Set<Column<Object>>? get primaryKey => {ownerUserID, blockUserID};
}

class LocalSeqDataTable extends Table {
  TextColumn get userID => text().named('user_id').withLength(max: 64)();
  IntColumn get seq => integer()();

  @override
  Set<Column<Object>>? get primaryKey => {userID};
}

class LocalSeq extends Table {
  TextColumn get id => text().withLength(max: 64)();
  IntColumn get minSeq => integer()();

  @override
  Set<Column<Object>>? get primaryKey => {id};
}

// 删除会话，可能会话没有
// 确认删除，告诉会话 ID
// 清空聊天记录的发，会话有，但是聊天记录没有
// DeleteMessageFromLocalAndSvr
// db

// 不同的会话本地有一个单独的表，其中单聊的话也是这样，有一个单聊的表

// 删除的话，先删除表，在删除本地的 seq ，最后清楚这个表。
// 删除所有的消息的话，全部都是服务器来做，调用接口，然后客户端收到回调，然后删除本地的所有的信息。
// 删除一条信息，删除最新的话，会话上有一条最新的消息，删除这条消息，会话上就没有消息了，此时显示的是第二条。
// 和微信一样，我们 Go get error 分支，然后调用最新的 APi

@TableIndex(name: 'index_recv_id', columns: {#recvID})
@TableIndex(name: 'content_type_alone', columns: {#contentType})
@TableIndex(name: 'index_seq', columns: {#seq})
@TableIndex(name: 'index_send_time', columns: {#sendTime})
class LocalChatLog extends Table {
  TextColumn get clientMsgID =>
      text().named('client_msg_id').withLength(max: 64)();
  TextColumn get serverMsgID =>
      text().named('server_msg_id').withLength(max: 64)();
  TextColumn get sendID => text().named('send_id').withLength(max: 64)();
  TextColumn get recvID => text().named('recv_id').withLength(max: 64)();
  IntColumn get senderPlatformID => integer().named('sender_platform_id')();
  TextColumn get senderNickname => text().withLength(max: 255)();
  TextColumn get senderFaceURL =>
      text().named('sender_face_url').withLength(max: 255)();
  IntColumn get sessionType => integer()();
  IntColumn get msgFrom => integer()();
  IntColumn get contentType => integer()();
  TextColumn get content => text().withLength(max: 1000)();
  BoolColumn get isRead => boolean()();
  IntColumn get status => integer()();
  IntColumn get seq => integer().withDefault(const Constant(0))();
  IntColumn get sendTime => integer()();
  IntColumn get createTime => integer()();

  TextColumn get attachedInfo => text().withLength(max: 1024)();
  TextColumn get ex => text().withLength(max: 1024)();
  TextColumn get localEx => text().withLength(max: 1024)();
  BoolColumn get isReact => boolean()();
  BoolColumn get isExternalExtensions => boolean()();
  IntColumn get msgFirstModifyTime => integer()();

  @override
  Set<Column<Object>>? get primaryKey => {clientMsgID};
}

class LocalErrChatLog extends Table {
  IntColumn get seq => integer()();
  TextColumn get clientMsgID =>
      text().named('client_msg_id').withLength(max: 64)();
  TextColumn get serverMsgID =>
      text().named('server_msg_id').withLength(max: 64)();
  TextColumn get sendID => text().named('send_id').withLength(max: 64)();
  TextColumn get recvID => text().named('recv_id').withLength(max: 64)();
  IntColumn get senderPlatformID => integer().named('sender_platform_id')();

  TextColumn get senderNickname => text().withLength(max: 255)();
  TextColumn get senderFaceURL =>
      text().named('sender_face_url').withLength(max: 255)();
  IntColumn get sessionType => integer()();
  IntColumn get msgFrom => integer()();
  IntColumn get contentType => integer()();
  TextColumn get content => text().withLength(max: 1000)();
  BoolColumn get isRead => boolean()();
  IntColumn get status => integer()();
  IntColumn get sendTime => integer()();
  IntColumn get createTime => integer()();

  TextColumn get attachedInfo => text().withLength(max: 1024)();
  TextColumn get ex => text().withLength(max: 1024)();

  @override
  Set<Column<Object>>? get primaryKey => {seq};
}

class TempCacheLocalChatLog extends Table {
  TextColumn get clientMsgID =>
      text().named('client_msg_id').withLength(max: 64)();
  TextColumn get serverMsgID =>
      text().named('server_msg_id').withLength(max: 64)();
  TextColumn get sendID => text().named('send_id').withLength(max: 64)();
  TextColumn get recvID => text().named('recv_id').withLength(max: 64)();
  IntColumn get senderPlatformID => integer().named('sender_platform_id')();
  TextColumn get senderNickname => text().withLength(max: 255)();
  TextColumn get senderFaceURL =>
      text().named('sender_face_url').withLength(max: 255)();
  IntColumn get sessionType => integer()();
  IntColumn get msgFrom => integer()();
  IntColumn get contentType => integer()();
  TextColumn get content => text().withLength(max: 1000)();
  BoolColumn get isRead => boolean()();
  IntColumn get status => integer()();
  IntColumn get seq => integer().withDefault(const Constant(0))();
  IntColumn get sendTime => integer()();
  IntColumn get createTime => integer()();

  TextColumn get attachedInfo => text().withLength(max: 1024)();
  TextColumn get ex => text().withLength(max: 1024)();

  @override
  Set<Column<Object>>? get primaryKey => {clientMsgID};
}

class LocalConversation extends Table {
  // 128 length
  TextColumn get conversationID =>
      text().named('conversation_id').withLength(max: 128)();
  IntColumn get conversationType => integer()();
  // 64 length
  TextColumn get userID => text().named('user_id')();
  // 128 length
  TextColumn get groupID => text().named('group_id')();
  // 255 length
  TextColumn get showName => text().withLength(max: 255)();
  // 255 length
  TextColumn get faceURL => text().named('face_url').withLength(max: 255)();
  IntColumn get recvMsgOpt => integer()();
  IntColumn get unreadCount => integer()();
  IntColumn get groupAtType => integer()();
  TextColumn get latestMsg => text().withLength(max: 1000)();
  IntColumn get latestMsgSendTime => integer()();
  // 255 length
  TextColumn get draftText => text()();
  IntColumn get draftTextTime => integer()();
  BoolColumn get isPinned => boolean()();
  BoolColumn get isPrivateChat => boolean()();
  IntColumn get burnDuration => integer().withDefault(const Constant(30))();
  BoolColumn get isNotInGroup => boolean()();
  IntColumn get updateUnreadCountTime => integer()();
  TextColumn get attachedInfo => text().withLength(max: 1024)();
  TextColumn get ex => text().withLength(max: 1024)();
  IntColumn get maxSeq => integer()();
  IntColumn get minSeq => integer()();
  IntColumn get hasReadSeq => integer()();
  IntColumn get msgDestructTime =>
      integer().withDefault(const Constant(604800))();
  BoolColumn get isMsgDestruct =>
      boolean().withDefault(const Constant(false))();

  @override
  Set<Column<Object>>? get primaryKey => {conversationID};

  @override
  String? get tableName => 'local_conversations';
}

class LocalConversationUnreadMessage extends Table {
  TextColumn get conversationID =>
      text().named('conversation_id').withLength(max: 128)();
  TextColumn get clientMsgID =>
      text().named('client_msg_id').withLength(max: 64)();
  IntColumn get sendTime => integer()();
  TextColumn get ex => text().withLength(max: 1024)();

  @override
  Set<Column<Object>>? get primaryKey => {conversationID, clientMsgID};
}

class IntListTypeConverter extends TypeConverter<List<int>, String> {
  @override
  List<int> fromSql(String fromDb) {
    return List<int>.from(const JsonDecoder().convert(fromDb));
  }

  @override
  String toSql(List<int> value) {
    return const JsonEncoder().convert(value);
  }
}

class LocalAdminGroupRequests extends LocalGroupRequest {}

@UseRowClass(LocalChatLogReactionExtension)
class LocalChatLogReactionExtensions extends Table {
  TextColumn get clientMsgID =>
      text().named('client_msg_id').withLength(max: 64)();
  TextColumn get localReactionExtensions =>
      text().map(IntListTypeConverter())();

  @override
  Set<Column<Object>>? get primaryKey => {clientMsgID};
}

@json_annotation.JsonSerializable()
class LocalChatLogReactionExtension {
  final String clientMsgID;
  final List<int> localReactionExtensions;
  LocalChatLogReactionExtension(this.clientMsgID, this.localReactionExtensions);

  factory LocalChatLogReactionExtension.fromJson(Map<String, dynamic> json) =>
      _$LocalChatLogReactionExtensionFromJson(json);

  Map<String, dynamic> toJson() => _$LocalChatLogReactionExtensionToJson(this);
}

class LocalWorkMomentNotification extends Table {
  TextColumn get jsonDetail => text()();
  IntColumn get createTime => integer()();

  @override
  String? get tableName => 'local_work_moments_notification';
}

@json_annotation.JsonSerializable()
class WorkMomentNotificationMsg {
  final int notificationMsgType;
  final String replyUserName;
  final String replyUserID;
  final String content;
  final String contentID;
  final String workMomentID;
  final String userID;
  final String userName;
  final String faceURL;
  final String workMomentContent;
  final int createTime;
  WorkMomentNotificationMsg({
    required this.notificationMsgType,
    required this.replyUserName,
    required this.replyUserID,
    required this.content,
    required this.contentID,
    required this.workMomentID,
    required this.userID,
    required this.userName,
    required this.faceURL,
    required this.workMomentContent,
    required this.createTime,
  });

  factory WorkMomentNotificationMsg.fromJson(Map<String, dynamic> json) =>
      _$WorkMomentNotificationMsgFromJson(json);
  Map<String, dynamic> toJson() => _$WorkMomentNotificationMsgToJson(this);
}

class LocalWorkMomentsNotificationUnreadCount extends Table {
  IntColumn get unreadCount => integer()();

  @override
  String? get tableName => 'local_work_moments_notification_unread_count';
}

class NotificationSeq extends Table {
  TextColumn get conversationID =>
      text().named('conversation_id').withLength(max: 128)();
  IntColumn get seq => integer()();

  @override
  Set<Column<Object>>? get primaryKey => {conversationID};

  @override
  String? get tableName => 'local_notification_seqs';
}

class LocalUpload extends Table {
  TextColumn get partHash => text().withLength(max: 128)();
  TextColumn get uploadID => text().named('upload_id').withLength(max: 1000)();
  TextColumn get uploadInfo => text().withLength(max: 2000)();
  IntColumn get expireTime => integer()();
  IntColumn get createTime => integer()();

  @override
  Set<Column<Object>>? get primaryKey => {partHash};

  @override
  String? get tableName => 'local_uploads';
}

class LocalStranger extends Table {
  TextColumn get userID => text().named('user_id').withLength(max: 64)();
  TextColumn get nickname => text().withLength(max: 255)();
  TextColumn get faceURL => text().named('face_url').withLength(max: 255)();
  IntColumn get createTime => integer()();
  IntColumn get appMangerLevel => integer()();
  TextColumn get ex => text().withLength(max: 1024)();
  TextColumn get attachedInfo => text().withLength(max: 1024)();
  IntColumn get globalRecvMsgOpt => integer()();

  @override
  Set<Column<Object>>? get primaryKey => {userID};

  @override
  String? get tableName => 'local_stranger';
}

class LocalSendingMessage extends Table {
  TextColumn get conversationID =>
      text().named('conversation_id').withLength(max: 128)();
  TextColumn get clientMsgID =>
      text().named('client_msg_id').withLength(max: 64)();
  TextColumn get ex => text().withLength(max: 1024)();

  @override
  Set<Column<Object>>? get primaryKey => {conversationID, clientMsgID};

  @override
  String? get tableName => 'local_sending_messages';
}

class LocalUserCommand extends Table {
  TextColumn get userID => text().named('user_id')();
  IntColumn get type => integer()();
  TextColumn get uuid => text().withLength(max: 255)();
  IntColumn get createTime => integer()();
  TextColumn get value => text().withLength(max: 255)();
  TextColumn get ex => text().withLength(max: 1024)();

  @override
  Set<Column<Object>>? get primaryKey => {userID, type, uuid};

  @override
  String? get tableName => 'local_user_command';
}

class StringListTypeConverter extends TypeConverter<List<String>, String> {
  @override
  List<String> fromSql(String fromDb) {
    return List<String>.from(const JsonDecoder().convert(fromDb));
  }

  @override
  String toSql(List<String> value) {
    return const JsonEncoder().convert(value);
  }
}

@UseRowClass(LocalVersionSync)
class LocalVersionSyncs extends Table {
  TextColumn get table => text().withLength(max: 255)();
  TextColumn get entityID => text().named('entity_id').withLength(max: 255)();
  TextColumn get versionID => text().named('version_id').withLength(max: 255)();
  IntColumn get version => integer()();
  IntColumn get createTime => integer()();
  TextColumn get uidList =>
      text().withLength(max: 65535).map(StringListTypeConverter())();

  @override
  Set<Column<Object>>? get primaryKey => {table, entityID};

  @override
  String? get tableName => 'local_sync_version';
}

@json_annotation.JsonSerializable()
class LocalVersionSync {
  @json_annotation.JsonKey(name: 'tableName')
  final String table;
  final String entityID;
  final String versionID;
  final int version;
  final int createTime;
  final List<String> uidList;

  LocalVersionSync({
    required this.table,
    required this.entityID,
    required this.versionID,
    required this.version,
    required this.createTime,
    required this.uidList,
  });

  factory LocalVersionSync.fromJson(Map<String, dynamic> json) =>
      _$LocalVersionSyncFromJson(json);
  Map<String, dynamic> toJson() => _$LocalVersionSyncToJson(this);
}

class LocalAppSDKVersions extends Table {
  TextColumn get version => text().withLength(max: 255)();

  @override
  Set<Column<Object>>? get primaryKey => {version};

  @override
  String? get tableName => 'local_app_sdk_version';
}

@DriftDatabase(tables: [
  LocalFriend,
  LocalFriendRequest,
  LocalGroup,
  LocalGroupMember,
  LocalGroupRequest,
  LocalUser,
  LocalBlack,
  LocalSeqDataTable,
  LocalSeq,
  LocalChatLog,
  LocalErrChatLog,
  TempCacheLocalChatLog,
  LocalConversation,
  LocalConversationUnreadMessage,
  LocalAdminGroupRequests,
  LocalChatLogReactionExtensions,
  LocalWorkMomentNotification,
  LocalWorkMomentsNotificationUnreadCount,
  NotificationSeq,
  LocalUpload,
  LocalStranger,
  LocalSendingMessage,
  LocalUserCommand,
  LocalVersionSyncs,
  LocalAppSDKVersions
])
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 1;

  static QueryExecutor _openConnection() {
    // `driftDatabase` from `package:drift_flutter` stores the database in
    // `getApplicationDocumentsDirectory()`.
    return driftDatabase(name: 'openim_client_flutter');
  }
}
