// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_model.dart';

// ignore_for_file: type=lint
class $LocalFriendTable extends LocalFriend
    with TableInfo<$LocalFriendTable, LocalFriendData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $LocalFriendTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _ownerUserIDMeta =
      const VerificationMeta('ownerUserID');
  @override
  late final GeneratedColumn<String> ownerUserID = GeneratedColumn<String>(
      'owner_user_id', aliasedName, false,
      additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 64),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  static const VerificationMeta _friendUserIDMeta =
      const VerificationMeta('friendUserID');
  @override
  late final GeneratedColumn<String> friendUserID = GeneratedColumn<String>(
      'friend_user_id', aliasedName, false,
      additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 64),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  static const VerificationMeta _remarkMeta = const VerificationMeta('remark');
  @override
  late final GeneratedColumn<String> remark = GeneratedColumn<String>(
      'remark', aliasedName, false,
      additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 255),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  static const VerificationMeta _createTimeMeta =
      const VerificationMeta('createTime');
  @override
  late final GeneratedColumn<int> createTime = GeneratedColumn<int>(
      'create_time', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _addSourceMeta =
      const VerificationMeta('addSource');
  @override
  late final GeneratedColumn<int> addSource = GeneratedColumn<int>(
      'add_source', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _operatorUserIDMeta =
      const VerificationMeta('operatorUserID');
  @override
  late final GeneratedColumn<String> operatorUserID = GeneratedColumn<String>(
      'operator_user_id', aliasedName, false,
      additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 64),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  static const VerificationMeta _nicknameMeta =
      const VerificationMeta('nickname');
  @override
  late final GeneratedColumn<String> nickname = GeneratedColumn<String>(
      'nickname', aliasedName, false,
      additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 255),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  static const VerificationMeta _faceURLMeta =
      const VerificationMeta('faceURL');
  @override
  late final GeneratedColumn<String> faceURL = GeneratedColumn<String>(
      'face_url', aliasedName, false,
      additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 255),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  static const VerificationMeta _exMeta = const VerificationMeta('ex');
  @override
  late final GeneratedColumn<String> ex = GeneratedColumn<String>(
      'ex', aliasedName, false,
      additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 1024),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  static const VerificationMeta _attachedInfoMeta =
      const VerificationMeta('attachedInfo');
  @override
  late final GeneratedColumn<String> attachedInfo = GeneratedColumn<String>(
      'attached_info', aliasedName, false,
      additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 1024),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  static const VerificationMeta _isPinnedMeta =
      const VerificationMeta('isPinned');
  @override
  late final GeneratedColumn<bool> isPinned = GeneratedColumn<bool>(
      'is_pinned', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("is_pinned" IN (0, 1))'));
  @override
  List<GeneratedColumn> get $columns => [
        ownerUserID,
        friendUserID,
        remark,
        createTime,
        addSource,
        operatorUserID,
        nickname,
        faceURL,
        ex,
        attachedInfo,
        isPinned
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'local_friends';
  @override
  VerificationContext validateIntegrity(Insertable<LocalFriendData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('owner_user_id')) {
      context.handle(
          _ownerUserIDMeta,
          ownerUserID.isAcceptableOrUnknown(
              data['owner_user_id']!, _ownerUserIDMeta));
    } else if (isInserting) {
      context.missing(_ownerUserIDMeta);
    }
    if (data.containsKey('friend_user_id')) {
      context.handle(
          _friendUserIDMeta,
          friendUserID.isAcceptableOrUnknown(
              data['friend_user_id']!, _friendUserIDMeta));
    } else if (isInserting) {
      context.missing(_friendUserIDMeta);
    }
    if (data.containsKey('remark')) {
      context.handle(_remarkMeta,
          remark.isAcceptableOrUnknown(data['remark']!, _remarkMeta));
    } else if (isInserting) {
      context.missing(_remarkMeta);
    }
    if (data.containsKey('create_time')) {
      context.handle(
          _createTimeMeta,
          createTime.isAcceptableOrUnknown(
              data['create_time']!, _createTimeMeta));
    } else if (isInserting) {
      context.missing(_createTimeMeta);
    }
    if (data.containsKey('add_source')) {
      context.handle(_addSourceMeta,
          addSource.isAcceptableOrUnknown(data['add_source']!, _addSourceMeta));
    } else if (isInserting) {
      context.missing(_addSourceMeta);
    }
    if (data.containsKey('operator_user_id')) {
      context.handle(
          _operatorUserIDMeta,
          operatorUserID.isAcceptableOrUnknown(
              data['operator_user_id']!, _operatorUserIDMeta));
    } else if (isInserting) {
      context.missing(_operatorUserIDMeta);
    }
    if (data.containsKey('nickname')) {
      context.handle(_nicknameMeta,
          nickname.isAcceptableOrUnknown(data['nickname']!, _nicknameMeta));
    } else if (isInserting) {
      context.missing(_nicknameMeta);
    }
    if (data.containsKey('face_url')) {
      context.handle(_faceURLMeta,
          faceURL.isAcceptableOrUnknown(data['face_url']!, _faceURLMeta));
    } else if (isInserting) {
      context.missing(_faceURLMeta);
    }
    if (data.containsKey('ex')) {
      context.handle(_exMeta, ex.isAcceptableOrUnknown(data['ex']!, _exMeta));
    } else if (isInserting) {
      context.missing(_exMeta);
    }
    if (data.containsKey('attached_info')) {
      context.handle(
          _attachedInfoMeta,
          attachedInfo.isAcceptableOrUnknown(
              data['attached_info']!, _attachedInfoMeta));
    } else if (isInserting) {
      context.missing(_attachedInfoMeta);
    }
    if (data.containsKey('is_pinned')) {
      context.handle(_isPinnedMeta,
          isPinned.isAcceptableOrUnknown(data['is_pinned']!, _isPinnedMeta));
    } else if (isInserting) {
      context.missing(_isPinnedMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {ownerUserID, friendUserID};
  @override
  LocalFriendData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return LocalFriendData(
      ownerUserID: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}owner_user_id'])!,
      friendUserID: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}friend_user_id'])!,
      remark: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}remark'])!,
      createTime: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}create_time'])!,
      addSource: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}add_source'])!,
      operatorUserID: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}operator_user_id'])!,
      nickname: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}nickname'])!,
      faceURL: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}face_url'])!,
      ex: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}ex'])!,
      attachedInfo: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}attached_info'])!,
      isPinned: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_pinned'])!,
    );
  }

  @override
  $LocalFriendTable createAlias(String alias) {
    return $LocalFriendTable(attachedDatabase, alias);
  }
}

class LocalFriendData extends DataClass implements Insertable<LocalFriendData> {
  final String ownerUserID;
  final String friendUserID;
  final String remark;
  final int createTime;
  final int addSource;
  final String operatorUserID;
  final String nickname;
  final String faceURL;
  final String ex;
  final String attachedInfo;
  final bool isPinned;
  const LocalFriendData(
      {required this.ownerUserID,
      required this.friendUserID,
      required this.remark,
      required this.createTime,
      required this.addSource,
      required this.operatorUserID,
      required this.nickname,
      required this.faceURL,
      required this.ex,
      required this.attachedInfo,
      required this.isPinned});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['owner_user_id'] = Variable<String>(ownerUserID);
    map['friend_user_id'] = Variable<String>(friendUserID);
    map['remark'] = Variable<String>(remark);
    map['create_time'] = Variable<int>(createTime);
    map['add_source'] = Variable<int>(addSource);
    map['operator_user_id'] = Variable<String>(operatorUserID);
    map['nickname'] = Variable<String>(nickname);
    map['face_url'] = Variable<String>(faceURL);
    map['ex'] = Variable<String>(ex);
    map['attached_info'] = Variable<String>(attachedInfo);
    map['is_pinned'] = Variable<bool>(isPinned);
    return map;
  }

  LocalFriendCompanion toCompanion(bool nullToAbsent) {
    return LocalFriendCompanion(
      ownerUserID: Value(ownerUserID),
      friendUserID: Value(friendUserID),
      remark: Value(remark),
      createTime: Value(createTime),
      addSource: Value(addSource),
      operatorUserID: Value(operatorUserID),
      nickname: Value(nickname),
      faceURL: Value(faceURL),
      ex: Value(ex),
      attachedInfo: Value(attachedInfo),
      isPinned: Value(isPinned),
    );
  }

  factory LocalFriendData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return LocalFriendData(
      ownerUserID: serializer.fromJson<String>(json['ownerUserID']),
      friendUserID: serializer.fromJson<String>(json['friendUserID']),
      remark: serializer.fromJson<String>(json['remark']),
      createTime: serializer.fromJson<int>(json['createTime']),
      addSource: serializer.fromJson<int>(json['addSource']),
      operatorUserID: serializer.fromJson<String>(json['operatorUserID']),
      nickname: serializer.fromJson<String>(json['nickname']),
      faceURL: serializer.fromJson<String>(json['faceURL']),
      ex: serializer.fromJson<String>(json['ex']),
      attachedInfo: serializer.fromJson<String>(json['attachedInfo']),
      isPinned: serializer.fromJson<bool>(json['isPinned']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'ownerUserID': serializer.toJson<String>(ownerUserID),
      'friendUserID': serializer.toJson<String>(friendUserID),
      'remark': serializer.toJson<String>(remark),
      'createTime': serializer.toJson<int>(createTime),
      'addSource': serializer.toJson<int>(addSource),
      'operatorUserID': serializer.toJson<String>(operatorUserID),
      'nickname': serializer.toJson<String>(nickname),
      'faceURL': serializer.toJson<String>(faceURL),
      'ex': serializer.toJson<String>(ex),
      'attachedInfo': serializer.toJson<String>(attachedInfo),
      'isPinned': serializer.toJson<bool>(isPinned),
    };
  }

  LocalFriendData copyWith(
          {String? ownerUserID,
          String? friendUserID,
          String? remark,
          int? createTime,
          int? addSource,
          String? operatorUserID,
          String? nickname,
          String? faceURL,
          String? ex,
          String? attachedInfo,
          bool? isPinned}) =>
      LocalFriendData(
        ownerUserID: ownerUserID ?? this.ownerUserID,
        friendUserID: friendUserID ?? this.friendUserID,
        remark: remark ?? this.remark,
        createTime: createTime ?? this.createTime,
        addSource: addSource ?? this.addSource,
        operatorUserID: operatorUserID ?? this.operatorUserID,
        nickname: nickname ?? this.nickname,
        faceURL: faceURL ?? this.faceURL,
        ex: ex ?? this.ex,
        attachedInfo: attachedInfo ?? this.attachedInfo,
        isPinned: isPinned ?? this.isPinned,
      );
  LocalFriendData copyWithCompanion(LocalFriendCompanion data) {
    return LocalFriendData(
      ownerUserID:
          data.ownerUserID.present ? data.ownerUserID.value : this.ownerUserID,
      friendUserID: data.friendUserID.present
          ? data.friendUserID.value
          : this.friendUserID,
      remark: data.remark.present ? data.remark.value : this.remark,
      createTime:
          data.createTime.present ? data.createTime.value : this.createTime,
      addSource: data.addSource.present ? data.addSource.value : this.addSource,
      operatorUserID: data.operatorUserID.present
          ? data.operatorUserID.value
          : this.operatorUserID,
      nickname: data.nickname.present ? data.nickname.value : this.nickname,
      faceURL: data.faceURL.present ? data.faceURL.value : this.faceURL,
      ex: data.ex.present ? data.ex.value : this.ex,
      attachedInfo: data.attachedInfo.present
          ? data.attachedInfo.value
          : this.attachedInfo,
      isPinned: data.isPinned.present ? data.isPinned.value : this.isPinned,
    );
  }

  @override
  String toString() {
    return (StringBuffer('LocalFriendData(')
          ..write('ownerUserID: $ownerUserID, ')
          ..write('friendUserID: $friendUserID, ')
          ..write('remark: $remark, ')
          ..write('createTime: $createTime, ')
          ..write('addSource: $addSource, ')
          ..write('operatorUserID: $operatorUserID, ')
          ..write('nickname: $nickname, ')
          ..write('faceURL: $faceURL, ')
          ..write('ex: $ex, ')
          ..write('attachedInfo: $attachedInfo, ')
          ..write('isPinned: $isPinned')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(ownerUserID, friendUserID, remark, createTime,
      addSource, operatorUserID, nickname, faceURL, ex, attachedInfo, isPinned);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is LocalFriendData &&
          other.ownerUserID == this.ownerUserID &&
          other.friendUserID == this.friendUserID &&
          other.remark == this.remark &&
          other.createTime == this.createTime &&
          other.addSource == this.addSource &&
          other.operatorUserID == this.operatorUserID &&
          other.nickname == this.nickname &&
          other.faceURL == this.faceURL &&
          other.ex == this.ex &&
          other.attachedInfo == this.attachedInfo &&
          other.isPinned == this.isPinned);
}

class LocalFriendCompanion extends UpdateCompanion<LocalFriendData> {
  final Value<String> ownerUserID;
  final Value<String> friendUserID;
  final Value<String> remark;
  final Value<int> createTime;
  final Value<int> addSource;
  final Value<String> operatorUserID;
  final Value<String> nickname;
  final Value<String> faceURL;
  final Value<String> ex;
  final Value<String> attachedInfo;
  final Value<bool> isPinned;
  final Value<int> rowid;
  const LocalFriendCompanion({
    this.ownerUserID = const Value.absent(),
    this.friendUserID = const Value.absent(),
    this.remark = const Value.absent(),
    this.createTime = const Value.absent(),
    this.addSource = const Value.absent(),
    this.operatorUserID = const Value.absent(),
    this.nickname = const Value.absent(),
    this.faceURL = const Value.absent(),
    this.ex = const Value.absent(),
    this.attachedInfo = const Value.absent(),
    this.isPinned = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  LocalFriendCompanion.insert({
    required String ownerUserID,
    required String friendUserID,
    required String remark,
    required int createTime,
    required int addSource,
    required String operatorUserID,
    required String nickname,
    required String faceURL,
    required String ex,
    required String attachedInfo,
    required bool isPinned,
    this.rowid = const Value.absent(),
  })  : ownerUserID = Value(ownerUserID),
        friendUserID = Value(friendUserID),
        remark = Value(remark),
        createTime = Value(createTime),
        addSource = Value(addSource),
        operatorUserID = Value(operatorUserID),
        nickname = Value(nickname),
        faceURL = Value(faceURL),
        ex = Value(ex),
        attachedInfo = Value(attachedInfo),
        isPinned = Value(isPinned);
  static Insertable<LocalFriendData> custom({
    Expression<String>? ownerUserID,
    Expression<String>? friendUserID,
    Expression<String>? remark,
    Expression<int>? createTime,
    Expression<int>? addSource,
    Expression<String>? operatorUserID,
    Expression<String>? nickname,
    Expression<String>? faceURL,
    Expression<String>? ex,
    Expression<String>? attachedInfo,
    Expression<bool>? isPinned,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (ownerUserID != null) 'owner_user_id': ownerUserID,
      if (friendUserID != null) 'friend_user_id': friendUserID,
      if (remark != null) 'remark': remark,
      if (createTime != null) 'create_time': createTime,
      if (addSource != null) 'add_source': addSource,
      if (operatorUserID != null) 'operator_user_id': operatorUserID,
      if (nickname != null) 'nickname': nickname,
      if (faceURL != null) 'face_url': faceURL,
      if (ex != null) 'ex': ex,
      if (attachedInfo != null) 'attached_info': attachedInfo,
      if (isPinned != null) 'is_pinned': isPinned,
      if (rowid != null) 'rowid': rowid,
    });
  }

  LocalFriendCompanion copyWith(
      {Value<String>? ownerUserID,
      Value<String>? friendUserID,
      Value<String>? remark,
      Value<int>? createTime,
      Value<int>? addSource,
      Value<String>? operatorUserID,
      Value<String>? nickname,
      Value<String>? faceURL,
      Value<String>? ex,
      Value<String>? attachedInfo,
      Value<bool>? isPinned,
      Value<int>? rowid}) {
    return LocalFriendCompanion(
      ownerUserID: ownerUserID ?? this.ownerUserID,
      friendUserID: friendUserID ?? this.friendUserID,
      remark: remark ?? this.remark,
      createTime: createTime ?? this.createTime,
      addSource: addSource ?? this.addSource,
      operatorUserID: operatorUserID ?? this.operatorUserID,
      nickname: nickname ?? this.nickname,
      faceURL: faceURL ?? this.faceURL,
      ex: ex ?? this.ex,
      attachedInfo: attachedInfo ?? this.attachedInfo,
      isPinned: isPinned ?? this.isPinned,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (ownerUserID.present) {
      map['owner_user_id'] = Variable<String>(ownerUserID.value);
    }
    if (friendUserID.present) {
      map['friend_user_id'] = Variable<String>(friendUserID.value);
    }
    if (remark.present) {
      map['remark'] = Variable<String>(remark.value);
    }
    if (createTime.present) {
      map['create_time'] = Variable<int>(createTime.value);
    }
    if (addSource.present) {
      map['add_source'] = Variable<int>(addSource.value);
    }
    if (operatorUserID.present) {
      map['operator_user_id'] = Variable<String>(operatorUserID.value);
    }
    if (nickname.present) {
      map['nickname'] = Variable<String>(nickname.value);
    }
    if (faceURL.present) {
      map['face_url'] = Variable<String>(faceURL.value);
    }
    if (ex.present) {
      map['ex'] = Variable<String>(ex.value);
    }
    if (attachedInfo.present) {
      map['attached_info'] = Variable<String>(attachedInfo.value);
    }
    if (isPinned.present) {
      map['is_pinned'] = Variable<bool>(isPinned.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('LocalFriendCompanion(')
          ..write('ownerUserID: $ownerUserID, ')
          ..write('friendUserID: $friendUserID, ')
          ..write('remark: $remark, ')
          ..write('createTime: $createTime, ')
          ..write('addSource: $addSource, ')
          ..write('operatorUserID: $operatorUserID, ')
          ..write('nickname: $nickname, ')
          ..write('faceURL: $faceURL, ')
          ..write('ex: $ex, ')
          ..write('attachedInfo: $attachedInfo, ')
          ..write('isPinned: $isPinned, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $LocalFriendRequestTable extends LocalFriendRequest
    with TableInfo<$LocalFriendRequestTable, LocalFriendRequestData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $LocalFriendRequestTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _fromUserIDMeta =
      const VerificationMeta('fromUserID');
  @override
  late final GeneratedColumn<String> fromUserID = GeneratedColumn<String>(
      'from_user_id', aliasedName, false,
      additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 64),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  static const VerificationMeta _fromNicknameMeta =
      const VerificationMeta('fromNickname');
  @override
  late final GeneratedColumn<String> fromNickname = GeneratedColumn<String>(
      'from_nickname', aliasedName, false,
      additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 255),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  static const VerificationMeta _fromFaceURLMeta =
      const VerificationMeta('fromFaceURL');
  @override
  late final GeneratedColumn<String> fromFaceURL = GeneratedColumn<String>(
      'from_face_url', aliasedName, false,
      additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 255),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  static const VerificationMeta _toUserIDMeta =
      const VerificationMeta('toUserID');
  @override
  late final GeneratedColumn<String> toUserID = GeneratedColumn<String>(
      'to_user_id', aliasedName, false,
      additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 64),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  static const VerificationMeta _toNicknameMeta =
      const VerificationMeta('toNickname');
  @override
  late final GeneratedColumn<String> toNickname = GeneratedColumn<String>(
      'to_nickname', aliasedName, false,
      additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 255),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  static const VerificationMeta _toFaceURLMeta =
      const VerificationMeta('toFaceURL');
  @override
  late final GeneratedColumn<String> toFaceURL = GeneratedColumn<String>(
      'to_face_url', aliasedName, false,
      additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 255),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  static const VerificationMeta _handleResultMeta =
      const VerificationMeta('handleResult');
  @override
  late final GeneratedColumn<int> handleResult = GeneratedColumn<int>(
      'handle_result', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _reqMsgMeta = const VerificationMeta('reqMsg');
  @override
  late final GeneratedColumn<String> reqMsg = GeneratedColumn<String>(
      'req_msg', aliasedName, false,
      additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 255),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  static const VerificationMeta _createTimeMeta =
      const VerificationMeta('createTime');
  @override
  late final GeneratedColumn<int> createTime = GeneratedColumn<int>(
      'create_time', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _handlerUserIDMeta =
      const VerificationMeta('handlerUserID');
  @override
  late final GeneratedColumn<String> handlerUserID = GeneratedColumn<String>(
      'handler_user_id', aliasedName, false,
      additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 64),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  static const VerificationMeta _handleMsgMeta =
      const VerificationMeta('handleMsg');
  @override
  late final GeneratedColumn<String> handleMsg = GeneratedColumn<String>(
      'handle_msg', aliasedName, false,
      additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 255),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  static const VerificationMeta _handleTimeMeta =
      const VerificationMeta('handleTime');
  @override
  late final GeneratedColumn<int> handleTime = GeneratedColumn<int>(
      'handle_time', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _exMeta = const VerificationMeta('ex');
  @override
  late final GeneratedColumn<String> ex = GeneratedColumn<String>(
      'ex', aliasedName, false,
      additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 1024),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  static const VerificationMeta _attachedInfoMeta =
      const VerificationMeta('attachedInfo');
  @override
  late final GeneratedColumn<String> attachedInfo = GeneratedColumn<String>(
      'attached_info', aliasedName, false,
      additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 1024),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [
        fromUserID,
        fromNickname,
        fromFaceURL,
        toUserID,
        toNickname,
        toFaceURL,
        handleResult,
        reqMsg,
        createTime,
        handlerUserID,
        handleMsg,
        handleTime,
        ex,
        attachedInfo
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'local_friend_request';
  @override
  VerificationContext validateIntegrity(
      Insertable<LocalFriendRequestData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('from_user_id')) {
      context.handle(
          _fromUserIDMeta,
          fromUserID.isAcceptableOrUnknown(
              data['from_user_id']!, _fromUserIDMeta));
    } else if (isInserting) {
      context.missing(_fromUserIDMeta);
    }
    if (data.containsKey('from_nickname')) {
      context.handle(
          _fromNicknameMeta,
          fromNickname.isAcceptableOrUnknown(
              data['from_nickname']!, _fromNicknameMeta));
    } else if (isInserting) {
      context.missing(_fromNicknameMeta);
    }
    if (data.containsKey('from_face_url')) {
      context.handle(
          _fromFaceURLMeta,
          fromFaceURL.isAcceptableOrUnknown(
              data['from_face_url']!, _fromFaceURLMeta));
    } else if (isInserting) {
      context.missing(_fromFaceURLMeta);
    }
    if (data.containsKey('to_user_id')) {
      context.handle(_toUserIDMeta,
          toUserID.isAcceptableOrUnknown(data['to_user_id']!, _toUserIDMeta));
    } else if (isInserting) {
      context.missing(_toUserIDMeta);
    }
    if (data.containsKey('to_nickname')) {
      context.handle(
          _toNicknameMeta,
          toNickname.isAcceptableOrUnknown(
              data['to_nickname']!, _toNicknameMeta));
    } else if (isInserting) {
      context.missing(_toNicknameMeta);
    }
    if (data.containsKey('to_face_url')) {
      context.handle(
          _toFaceURLMeta,
          toFaceURL.isAcceptableOrUnknown(
              data['to_face_url']!, _toFaceURLMeta));
    } else if (isInserting) {
      context.missing(_toFaceURLMeta);
    }
    if (data.containsKey('handle_result')) {
      context.handle(
          _handleResultMeta,
          handleResult.isAcceptableOrUnknown(
              data['handle_result']!, _handleResultMeta));
    } else if (isInserting) {
      context.missing(_handleResultMeta);
    }
    if (data.containsKey('req_msg')) {
      context.handle(_reqMsgMeta,
          reqMsg.isAcceptableOrUnknown(data['req_msg']!, _reqMsgMeta));
    } else if (isInserting) {
      context.missing(_reqMsgMeta);
    }
    if (data.containsKey('create_time')) {
      context.handle(
          _createTimeMeta,
          createTime.isAcceptableOrUnknown(
              data['create_time']!, _createTimeMeta));
    } else if (isInserting) {
      context.missing(_createTimeMeta);
    }
    if (data.containsKey('handler_user_id')) {
      context.handle(
          _handlerUserIDMeta,
          handlerUserID.isAcceptableOrUnknown(
              data['handler_user_id']!, _handlerUserIDMeta));
    } else if (isInserting) {
      context.missing(_handlerUserIDMeta);
    }
    if (data.containsKey('handle_msg')) {
      context.handle(_handleMsgMeta,
          handleMsg.isAcceptableOrUnknown(data['handle_msg']!, _handleMsgMeta));
    } else if (isInserting) {
      context.missing(_handleMsgMeta);
    }
    if (data.containsKey('handle_time')) {
      context.handle(
          _handleTimeMeta,
          handleTime.isAcceptableOrUnknown(
              data['handle_time']!, _handleTimeMeta));
    } else if (isInserting) {
      context.missing(_handleTimeMeta);
    }
    if (data.containsKey('ex')) {
      context.handle(_exMeta, ex.isAcceptableOrUnknown(data['ex']!, _exMeta));
    } else if (isInserting) {
      context.missing(_exMeta);
    }
    if (data.containsKey('attached_info')) {
      context.handle(
          _attachedInfoMeta,
          attachedInfo.isAcceptableOrUnknown(
              data['attached_info']!, _attachedInfoMeta));
    } else if (isInserting) {
      context.missing(_attachedInfoMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {fromUserID, toUserID};
  @override
  LocalFriendRequestData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return LocalFriendRequestData(
      fromUserID: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}from_user_id'])!,
      fromNickname: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}from_nickname'])!,
      fromFaceURL: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}from_face_url'])!,
      toUserID: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}to_user_id'])!,
      toNickname: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}to_nickname'])!,
      toFaceURL: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}to_face_url'])!,
      handleResult: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}handle_result'])!,
      reqMsg: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}req_msg'])!,
      createTime: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}create_time'])!,
      handlerUserID: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}handler_user_id'])!,
      handleMsg: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}handle_msg'])!,
      handleTime: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}handle_time'])!,
      ex: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}ex'])!,
      attachedInfo: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}attached_info'])!,
    );
  }

  @override
  $LocalFriendRequestTable createAlias(String alias) {
    return $LocalFriendRequestTable(attachedDatabase, alias);
  }
}

class LocalFriendRequestData extends DataClass
    implements Insertable<LocalFriendRequestData> {
  final String fromUserID;
  final String fromNickname;
  final String fromFaceURL;
  final String toUserID;
  final String toNickname;
  final String toFaceURL;
  final int handleResult;
  final String reqMsg;
  final int createTime;
  final String handlerUserID;
  final String handleMsg;
  final int handleTime;
  final String ex;
  final String attachedInfo;
  const LocalFriendRequestData(
      {required this.fromUserID,
      required this.fromNickname,
      required this.fromFaceURL,
      required this.toUserID,
      required this.toNickname,
      required this.toFaceURL,
      required this.handleResult,
      required this.reqMsg,
      required this.createTime,
      required this.handlerUserID,
      required this.handleMsg,
      required this.handleTime,
      required this.ex,
      required this.attachedInfo});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['from_user_id'] = Variable<String>(fromUserID);
    map['from_nickname'] = Variable<String>(fromNickname);
    map['from_face_url'] = Variable<String>(fromFaceURL);
    map['to_user_id'] = Variable<String>(toUserID);
    map['to_nickname'] = Variable<String>(toNickname);
    map['to_face_url'] = Variable<String>(toFaceURL);
    map['handle_result'] = Variable<int>(handleResult);
    map['req_msg'] = Variable<String>(reqMsg);
    map['create_time'] = Variable<int>(createTime);
    map['handler_user_id'] = Variable<String>(handlerUserID);
    map['handle_msg'] = Variable<String>(handleMsg);
    map['handle_time'] = Variable<int>(handleTime);
    map['ex'] = Variable<String>(ex);
    map['attached_info'] = Variable<String>(attachedInfo);
    return map;
  }

  LocalFriendRequestCompanion toCompanion(bool nullToAbsent) {
    return LocalFriendRequestCompanion(
      fromUserID: Value(fromUserID),
      fromNickname: Value(fromNickname),
      fromFaceURL: Value(fromFaceURL),
      toUserID: Value(toUserID),
      toNickname: Value(toNickname),
      toFaceURL: Value(toFaceURL),
      handleResult: Value(handleResult),
      reqMsg: Value(reqMsg),
      createTime: Value(createTime),
      handlerUserID: Value(handlerUserID),
      handleMsg: Value(handleMsg),
      handleTime: Value(handleTime),
      ex: Value(ex),
      attachedInfo: Value(attachedInfo),
    );
  }

  factory LocalFriendRequestData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return LocalFriendRequestData(
      fromUserID: serializer.fromJson<String>(json['fromUserID']),
      fromNickname: serializer.fromJson<String>(json['fromNickname']),
      fromFaceURL: serializer.fromJson<String>(json['fromFaceURL']),
      toUserID: serializer.fromJson<String>(json['toUserID']),
      toNickname: serializer.fromJson<String>(json['toNickname']),
      toFaceURL: serializer.fromJson<String>(json['toFaceURL']),
      handleResult: serializer.fromJson<int>(json['handleResult']),
      reqMsg: serializer.fromJson<String>(json['reqMsg']),
      createTime: serializer.fromJson<int>(json['createTime']),
      handlerUserID: serializer.fromJson<String>(json['handlerUserID']),
      handleMsg: serializer.fromJson<String>(json['handleMsg']),
      handleTime: serializer.fromJson<int>(json['handleTime']),
      ex: serializer.fromJson<String>(json['ex']),
      attachedInfo: serializer.fromJson<String>(json['attachedInfo']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'fromUserID': serializer.toJson<String>(fromUserID),
      'fromNickname': serializer.toJson<String>(fromNickname),
      'fromFaceURL': serializer.toJson<String>(fromFaceURL),
      'toUserID': serializer.toJson<String>(toUserID),
      'toNickname': serializer.toJson<String>(toNickname),
      'toFaceURL': serializer.toJson<String>(toFaceURL),
      'handleResult': serializer.toJson<int>(handleResult),
      'reqMsg': serializer.toJson<String>(reqMsg),
      'createTime': serializer.toJson<int>(createTime),
      'handlerUserID': serializer.toJson<String>(handlerUserID),
      'handleMsg': serializer.toJson<String>(handleMsg),
      'handleTime': serializer.toJson<int>(handleTime),
      'ex': serializer.toJson<String>(ex),
      'attachedInfo': serializer.toJson<String>(attachedInfo),
    };
  }

  LocalFriendRequestData copyWith(
          {String? fromUserID,
          String? fromNickname,
          String? fromFaceURL,
          String? toUserID,
          String? toNickname,
          String? toFaceURL,
          int? handleResult,
          String? reqMsg,
          int? createTime,
          String? handlerUserID,
          String? handleMsg,
          int? handleTime,
          String? ex,
          String? attachedInfo}) =>
      LocalFriendRequestData(
        fromUserID: fromUserID ?? this.fromUserID,
        fromNickname: fromNickname ?? this.fromNickname,
        fromFaceURL: fromFaceURL ?? this.fromFaceURL,
        toUserID: toUserID ?? this.toUserID,
        toNickname: toNickname ?? this.toNickname,
        toFaceURL: toFaceURL ?? this.toFaceURL,
        handleResult: handleResult ?? this.handleResult,
        reqMsg: reqMsg ?? this.reqMsg,
        createTime: createTime ?? this.createTime,
        handlerUserID: handlerUserID ?? this.handlerUserID,
        handleMsg: handleMsg ?? this.handleMsg,
        handleTime: handleTime ?? this.handleTime,
        ex: ex ?? this.ex,
        attachedInfo: attachedInfo ?? this.attachedInfo,
      );
  LocalFriendRequestData copyWithCompanion(LocalFriendRequestCompanion data) {
    return LocalFriendRequestData(
      fromUserID:
          data.fromUserID.present ? data.fromUserID.value : this.fromUserID,
      fromNickname: data.fromNickname.present
          ? data.fromNickname.value
          : this.fromNickname,
      fromFaceURL:
          data.fromFaceURL.present ? data.fromFaceURL.value : this.fromFaceURL,
      toUserID: data.toUserID.present ? data.toUserID.value : this.toUserID,
      toNickname:
          data.toNickname.present ? data.toNickname.value : this.toNickname,
      toFaceURL: data.toFaceURL.present ? data.toFaceURL.value : this.toFaceURL,
      handleResult: data.handleResult.present
          ? data.handleResult.value
          : this.handleResult,
      reqMsg: data.reqMsg.present ? data.reqMsg.value : this.reqMsg,
      createTime:
          data.createTime.present ? data.createTime.value : this.createTime,
      handlerUserID: data.handlerUserID.present
          ? data.handlerUserID.value
          : this.handlerUserID,
      handleMsg: data.handleMsg.present ? data.handleMsg.value : this.handleMsg,
      handleTime:
          data.handleTime.present ? data.handleTime.value : this.handleTime,
      ex: data.ex.present ? data.ex.value : this.ex,
      attachedInfo: data.attachedInfo.present
          ? data.attachedInfo.value
          : this.attachedInfo,
    );
  }

  @override
  String toString() {
    return (StringBuffer('LocalFriendRequestData(')
          ..write('fromUserID: $fromUserID, ')
          ..write('fromNickname: $fromNickname, ')
          ..write('fromFaceURL: $fromFaceURL, ')
          ..write('toUserID: $toUserID, ')
          ..write('toNickname: $toNickname, ')
          ..write('toFaceURL: $toFaceURL, ')
          ..write('handleResult: $handleResult, ')
          ..write('reqMsg: $reqMsg, ')
          ..write('createTime: $createTime, ')
          ..write('handlerUserID: $handlerUserID, ')
          ..write('handleMsg: $handleMsg, ')
          ..write('handleTime: $handleTime, ')
          ..write('ex: $ex, ')
          ..write('attachedInfo: $attachedInfo')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      fromUserID,
      fromNickname,
      fromFaceURL,
      toUserID,
      toNickname,
      toFaceURL,
      handleResult,
      reqMsg,
      createTime,
      handlerUserID,
      handleMsg,
      handleTime,
      ex,
      attachedInfo);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is LocalFriendRequestData &&
          other.fromUserID == this.fromUserID &&
          other.fromNickname == this.fromNickname &&
          other.fromFaceURL == this.fromFaceURL &&
          other.toUserID == this.toUserID &&
          other.toNickname == this.toNickname &&
          other.toFaceURL == this.toFaceURL &&
          other.handleResult == this.handleResult &&
          other.reqMsg == this.reqMsg &&
          other.createTime == this.createTime &&
          other.handlerUserID == this.handlerUserID &&
          other.handleMsg == this.handleMsg &&
          other.handleTime == this.handleTime &&
          other.ex == this.ex &&
          other.attachedInfo == this.attachedInfo);
}

class LocalFriendRequestCompanion
    extends UpdateCompanion<LocalFriendRequestData> {
  final Value<String> fromUserID;
  final Value<String> fromNickname;
  final Value<String> fromFaceURL;
  final Value<String> toUserID;
  final Value<String> toNickname;
  final Value<String> toFaceURL;
  final Value<int> handleResult;
  final Value<String> reqMsg;
  final Value<int> createTime;
  final Value<String> handlerUserID;
  final Value<String> handleMsg;
  final Value<int> handleTime;
  final Value<String> ex;
  final Value<String> attachedInfo;
  final Value<int> rowid;
  const LocalFriendRequestCompanion({
    this.fromUserID = const Value.absent(),
    this.fromNickname = const Value.absent(),
    this.fromFaceURL = const Value.absent(),
    this.toUserID = const Value.absent(),
    this.toNickname = const Value.absent(),
    this.toFaceURL = const Value.absent(),
    this.handleResult = const Value.absent(),
    this.reqMsg = const Value.absent(),
    this.createTime = const Value.absent(),
    this.handlerUserID = const Value.absent(),
    this.handleMsg = const Value.absent(),
    this.handleTime = const Value.absent(),
    this.ex = const Value.absent(),
    this.attachedInfo = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  LocalFriendRequestCompanion.insert({
    required String fromUserID,
    required String fromNickname,
    required String fromFaceURL,
    required String toUserID,
    required String toNickname,
    required String toFaceURL,
    required int handleResult,
    required String reqMsg,
    required int createTime,
    required String handlerUserID,
    required String handleMsg,
    required int handleTime,
    required String ex,
    required String attachedInfo,
    this.rowid = const Value.absent(),
  })  : fromUserID = Value(fromUserID),
        fromNickname = Value(fromNickname),
        fromFaceURL = Value(fromFaceURL),
        toUserID = Value(toUserID),
        toNickname = Value(toNickname),
        toFaceURL = Value(toFaceURL),
        handleResult = Value(handleResult),
        reqMsg = Value(reqMsg),
        createTime = Value(createTime),
        handlerUserID = Value(handlerUserID),
        handleMsg = Value(handleMsg),
        handleTime = Value(handleTime),
        ex = Value(ex),
        attachedInfo = Value(attachedInfo);
  static Insertable<LocalFriendRequestData> custom({
    Expression<String>? fromUserID,
    Expression<String>? fromNickname,
    Expression<String>? fromFaceURL,
    Expression<String>? toUserID,
    Expression<String>? toNickname,
    Expression<String>? toFaceURL,
    Expression<int>? handleResult,
    Expression<String>? reqMsg,
    Expression<int>? createTime,
    Expression<String>? handlerUserID,
    Expression<String>? handleMsg,
    Expression<int>? handleTime,
    Expression<String>? ex,
    Expression<String>? attachedInfo,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (fromUserID != null) 'from_user_id': fromUserID,
      if (fromNickname != null) 'from_nickname': fromNickname,
      if (fromFaceURL != null) 'from_face_url': fromFaceURL,
      if (toUserID != null) 'to_user_id': toUserID,
      if (toNickname != null) 'to_nickname': toNickname,
      if (toFaceURL != null) 'to_face_url': toFaceURL,
      if (handleResult != null) 'handle_result': handleResult,
      if (reqMsg != null) 'req_msg': reqMsg,
      if (createTime != null) 'create_time': createTime,
      if (handlerUserID != null) 'handler_user_id': handlerUserID,
      if (handleMsg != null) 'handle_msg': handleMsg,
      if (handleTime != null) 'handle_time': handleTime,
      if (ex != null) 'ex': ex,
      if (attachedInfo != null) 'attached_info': attachedInfo,
      if (rowid != null) 'rowid': rowid,
    });
  }

  LocalFriendRequestCompanion copyWith(
      {Value<String>? fromUserID,
      Value<String>? fromNickname,
      Value<String>? fromFaceURL,
      Value<String>? toUserID,
      Value<String>? toNickname,
      Value<String>? toFaceURL,
      Value<int>? handleResult,
      Value<String>? reqMsg,
      Value<int>? createTime,
      Value<String>? handlerUserID,
      Value<String>? handleMsg,
      Value<int>? handleTime,
      Value<String>? ex,
      Value<String>? attachedInfo,
      Value<int>? rowid}) {
    return LocalFriendRequestCompanion(
      fromUserID: fromUserID ?? this.fromUserID,
      fromNickname: fromNickname ?? this.fromNickname,
      fromFaceURL: fromFaceURL ?? this.fromFaceURL,
      toUserID: toUserID ?? this.toUserID,
      toNickname: toNickname ?? this.toNickname,
      toFaceURL: toFaceURL ?? this.toFaceURL,
      handleResult: handleResult ?? this.handleResult,
      reqMsg: reqMsg ?? this.reqMsg,
      createTime: createTime ?? this.createTime,
      handlerUserID: handlerUserID ?? this.handlerUserID,
      handleMsg: handleMsg ?? this.handleMsg,
      handleTime: handleTime ?? this.handleTime,
      ex: ex ?? this.ex,
      attachedInfo: attachedInfo ?? this.attachedInfo,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (fromUserID.present) {
      map['from_user_id'] = Variable<String>(fromUserID.value);
    }
    if (fromNickname.present) {
      map['from_nickname'] = Variable<String>(fromNickname.value);
    }
    if (fromFaceURL.present) {
      map['from_face_url'] = Variable<String>(fromFaceURL.value);
    }
    if (toUserID.present) {
      map['to_user_id'] = Variable<String>(toUserID.value);
    }
    if (toNickname.present) {
      map['to_nickname'] = Variable<String>(toNickname.value);
    }
    if (toFaceURL.present) {
      map['to_face_url'] = Variable<String>(toFaceURL.value);
    }
    if (handleResult.present) {
      map['handle_result'] = Variable<int>(handleResult.value);
    }
    if (reqMsg.present) {
      map['req_msg'] = Variable<String>(reqMsg.value);
    }
    if (createTime.present) {
      map['create_time'] = Variable<int>(createTime.value);
    }
    if (handlerUserID.present) {
      map['handler_user_id'] = Variable<String>(handlerUserID.value);
    }
    if (handleMsg.present) {
      map['handle_msg'] = Variable<String>(handleMsg.value);
    }
    if (handleTime.present) {
      map['handle_time'] = Variable<int>(handleTime.value);
    }
    if (ex.present) {
      map['ex'] = Variable<String>(ex.value);
    }
    if (attachedInfo.present) {
      map['attached_info'] = Variable<String>(attachedInfo.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('LocalFriendRequestCompanion(')
          ..write('fromUserID: $fromUserID, ')
          ..write('fromNickname: $fromNickname, ')
          ..write('fromFaceURL: $fromFaceURL, ')
          ..write('toUserID: $toUserID, ')
          ..write('toNickname: $toNickname, ')
          ..write('toFaceURL: $toFaceURL, ')
          ..write('handleResult: $handleResult, ')
          ..write('reqMsg: $reqMsg, ')
          ..write('createTime: $createTime, ')
          ..write('handlerUserID: $handlerUserID, ')
          ..write('handleMsg: $handleMsg, ')
          ..write('handleTime: $handleTime, ')
          ..write('ex: $ex, ')
          ..write('attachedInfo: $attachedInfo, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $LocalGroupTable extends LocalGroup
    with TableInfo<$LocalGroupTable, LocalGroupData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $LocalGroupTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _groupIDMeta =
      const VerificationMeta('groupID');
  @override
  late final GeneratedColumn<String> groupID = GeneratedColumn<String>(
      'group_id', aliasedName, false,
      additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 64),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  static const VerificationMeta _groupNameMeta =
      const VerificationMeta('groupName');
  @override
  late final GeneratedColumn<String> groupName = GeneratedColumn<String>(
      'group_name', aliasedName, false,
      additionalChecks: GeneratedColumn.checkTextLength(),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  static const VerificationMeta _notificationMeta =
      const VerificationMeta('notification');
  @override
  late final GeneratedColumn<String> notification = GeneratedColumn<String>(
      'notification', aliasedName, false,
      additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 255),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  static const VerificationMeta _introductionMeta =
      const VerificationMeta('introduction');
  @override
  late final GeneratedColumn<String> introduction = GeneratedColumn<String>(
      'introduction', aliasedName, false,
      additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 255),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  static const VerificationMeta _faceURLMeta =
      const VerificationMeta('faceURL');
  @override
  late final GeneratedColumn<String> faceURL = GeneratedColumn<String>(
      'face_url', aliasedName, false,
      additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 255),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  static const VerificationMeta _createTimeMeta =
      const VerificationMeta('createTime');
  @override
  late final GeneratedColumn<int> createTime = GeneratedColumn<int>(
      'create_time', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _statusMeta = const VerificationMeta('status');
  @override
  late final GeneratedColumn<int> status = GeneratedColumn<int>(
      'status', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _creatorUserIDMeta =
      const VerificationMeta('creatorUserID');
  @override
  late final GeneratedColumn<String> creatorUserID = GeneratedColumn<String>(
      'creator_user_id', aliasedName, false,
      additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 64),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  static const VerificationMeta _groupTypeMeta =
      const VerificationMeta('groupType');
  @override
  late final GeneratedColumn<int> groupType = GeneratedColumn<int>(
      'group_type', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _ownerUserIDMeta =
      const VerificationMeta('ownerUserID');
  @override
  late final GeneratedColumn<String> ownerUserID = GeneratedColumn<String>(
      'owner_user_id', aliasedName, false,
      additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 64),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  static const VerificationMeta _memberCountMeta =
      const VerificationMeta('memberCount');
  @override
  late final GeneratedColumn<int> memberCount = GeneratedColumn<int>(
      'member_count', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _exMeta = const VerificationMeta('ex');
  @override
  late final GeneratedColumn<String> ex = GeneratedColumn<String>(
      'ex', aliasedName, false,
      additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 1024),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  static const VerificationMeta _attachedInfoMeta =
      const VerificationMeta('attachedInfo');
  @override
  late final GeneratedColumn<String> attachedInfo = GeneratedColumn<String>(
      'attached_info', aliasedName, false,
      additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 1024),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  static const VerificationMeta _needVerificationMeta =
      const VerificationMeta('needVerification');
  @override
  late final GeneratedColumn<int> needVerification = GeneratedColumn<int>(
      'need_verification', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _lookMemberInfoMeta =
      const VerificationMeta('lookMemberInfo');
  @override
  late final GeneratedColumn<int> lookMemberInfo = GeneratedColumn<int>(
      'look_member_info', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _applyMemberFriendMeta =
      const VerificationMeta('applyMemberFriend');
  @override
  late final GeneratedColumn<int> applyMemberFriend = GeneratedColumn<int>(
      'apply_member_friend', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _notificationUpdateTimeMeta =
      const VerificationMeta('notificationUpdateTime');
  @override
  late final GeneratedColumn<int> notificationUpdateTime = GeneratedColumn<int>(
      'notification_update_time', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _notificationUserIDMeta =
      const VerificationMeta('notificationUserID');
  @override
  late final GeneratedColumn<String> notificationUserID =
      GeneratedColumn<String>('notification_user_id', aliasedName, false,
          type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [
        groupID,
        groupName,
        notification,
        introduction,
        faceURL,
        createTime,
        status,
        creatorUserID,
        groupType,
        ownerUserID,
        memberCount,
        ex,
        attachedInfo,
        needVerification,
        lookMemberInfo,
        applyMemberFriend,
        notificationUpdateTime,
        notificationUserID
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'local_groups';
  @override
  VerificationContext validateIntegrity(Insertable<LocalGroupData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('group_id')) {
      context.handle(_groupIDMeta,
          groupID.isAcceptableOrUnknown(data['group_id']!, _groupIDMeta));
    } else if (isInserting) {
      context.missing(_groupIDMeta);
    }
    if (data.containsKey('group_name')) {
      context.handle(_groupNameMeta,
          groupName.isAcceptableOrUnknown(data['group_name']!, _groupNameMeta));
    } else if (isInserting) {
      context.missing(_groupNameMeta);
    }
    if (data.containsKey('notification')) {
      context.handle(
          _notificationMeta,
          notification.isAcceptableOrUnknown(
              data['notification']!, _notificationMeta));
    } else if (isInserting) {
      context.missing(_notificationMeta);
    }
    if (data.containsKey('introduction')) {
      context.handle(
          _introductionMeta,
          introduction.isAcceptableOrUnknown(
              data['introduction']!, _introductionMeta));
    } else if (isInserting) {
      context.missing(_introductionMeta);
    }
    if (data.containsKey('face_url')) {
      context.handle(_faceURLMeta,
          faceURL.isAcceptableOrUnknown(data['face_url']!, _faceURLMeta));
    } else if (isInserting) {
      context.missing(_faceURLMeta);
    }
    if (data.containsKey('create_time')) {
      context.handle(
          _createTimeMeta,
          createTime.isAcceptableOrUnknown(
              data['create_time']!, _createTimeMeta));
    } else if (isInserting) {
      context.missing(_createTimeMeta);
    }
    if (data.containsKey('status')) {
      context.handle(_statusMeta,
          status.isAcceptableOrUnknown(data['status']!, _statusMeta));
    } else if (isInserting) {
      context.missing(_statusMeta);
    }
    if (data.containsKey('creator_user_id')) {
      context.handle(
          _creatorUserIDMeta,
          creatorUserID.isAcceptableOrUnknown(
              data['creator_user_id']!, _creatorUserIDMeta));
    } else if (isInserting) {
      context.missing(_creatorUserIDMeta);
    }
    if (data.containsKey('group_type')) {
      context.handle(_groupTypeMeta,
          groupType.isAcceptableOrUnknown(data['group_type']!, _groupTypeMeta));
    } else if (isInserting) {
      context.missing(_groupTypeMeta);
    }
    if (data.containsKey('owner_user_id')) {
      context.handle(
          _ownerUserIDMeta,
          ownerUserID.isAcceptableOrUnknown(
              data['owner_user_id']!, _ownerUserIDMeta));
    } else if (isInserting) {
      context.missing(_ownerUserIDMeta);
    }
    if (data.containsKey('member_count')) {
      context.handle(
          _memberCountMeta,
          memberCount.isAcceptableOrUnknown(
              data['member_count']!, _memberCountMeta));
    } else if (isInserting) {
      context.missing(_memberCountMeta);
    }
    if (data.containsKey('ex')) {
      context.handle(_exMeta, ex.isAcceptableOrUnknown(data['ex']!, _exMeta));
    } else if (isInserting) {
      context.missing(_exMeta);
    }
    if (data.containsKey('attached_info')) {
      context.handle(
          _attachedInfoMeta,
          attachedInfo.isAcceptableOrUnknown(
              data['attached_info']!, _attachedInfoMeta));
    } else if (isInserting) {
      context.missing(_attachedInfoMeta);
    }
    if (data.containsKey('need_verification')) {
      context.handle(
          _needVerificationMeta,
          needVerification.isAcceptableOrUnknown(
              data['need_verification']!, _needVerificationMeta));
    } else if (isInserting) {
      context.missing(_needVerificationMeta);
    }
    if (data.containsKey('look_member_info')) {
      context.handle(
          _lookMemberInfoMeta,
          lookMemberInfo.isAcceptableOrUnknown(
              data['look_member_info']!, _lookMemberInfoMeta));
    } else if (isInserting) {
      context.missing(_lookMemberInfoMeta);
    }
    if (data.containsKey('apply_member_friend')) {
      context.handle(
          _applyMemberFriendMeta,
          applyMemberFriend.isAcceptableOrUnknown(
              data['apply_member_friend']!, _applyMemberFriendMeta));
    } else if (isInserting) {
      context.missing(_applyMemberFriendMeta);
    }
    if (data.containsKey('notification_update_time')) {
      context.handle(
          _notificationUpdateTimeMeta,
          notificationUpdateTime.isAcceptableOrUnknown(
              data['notification_update_time']!, _notificationUpdateTimeMeta));
    } else if (isInserting) {
      context.missing(_notificationUpdateTimeMeta);
    }
    if (data.containsKey('notification_user_id')) {
      context.handle(
          _notificationUserIDMeta,
          notificationUserID.isAcceptableOrUnknown(
              data['notification_user_id']!, _notificationUserIDMeta));
    } else if (isInserting) {
      context.missing(_notificationUserIDMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {groupID};
  @override
  LocalGroupData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return LocalGroupData(
      groupID: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}group_id'])!,
      groupName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}group_name'])!,
      notification: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}notification'])!,
      introduction: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}introduction'])!,
      faceURL: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}face_url'])!,
      createTime: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}create_time'])!,
      status: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}status'])!,
      creatorUserID: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}creator_user_id'])!,
      groupType: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}group_type'])!,
      ownerUserID: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}owner_user_id'])!,
      memberCount: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}member_count'])!,
      ex: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}ex'])!,
      attachedInfo: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}attached_info'])!,
      needVerification: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}need_verification'])!,
      lookMemberInfo: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}look_member_info'])!,
      applyMemberFriend: attachedDatabase.typeMapping.read(
          DriftSqlType.int, data['${effectivePrefix}apply_member_friend'])!,
      notificationUpdateTime: attachedDatabase.typeMapping.read(
          DriftSqlType.int,
          data['${effectivePrefix}notification_update_time'])!,
      notificationUserID: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}notification_user_id'])!,
    );
  }

  @override
  $LocalGroupTable createAlias(String alias) {
    return $LocalGroupTable(attachedDatabase, alias);
  }
}

class LocalGroupData extends DataClass implements Insertable<LocalGroupData> {
  final String groupID;
  final String groupName;
  final String notification;
  final String introduction;
  final String faceURL;
  final int createTime;
  final int status;
  final String creatorUserID;
  final int groupType;
  final String ownerUserID;
  final int memberCount;
  final String ex;
  final String attachedInfo;
  final int needVerification;
  final int lookMemberInfo;
  final int applyMemberFriend;
  final int notificationUpdateTime;
  final String notificationUserID;
  const LocalGroupData(
      {required this.groupID,
      required this.groupName,
      required this.notification,
      required this.introduction,
      required this.faceURL,
      required this.createTime,
      required this.status,
      required this.creatorUserID,
      required this.groupType,
      required this.ownerUserID,
      required this.memberCount,
      required this.ex,
      required this.attachedInfo,
      required this.needVerification,
      required this.lookMemberInfo,
      required this.applyMemberFriend,
      required this.notificationUpdateTime,
      required this.notificationUserID});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['group_id'] = Variable<String>(groupID);
    map['group_name'] = Variable<String>(groupName);
    map['notification'] = Variable<String>(notification);
    map['introduction'] = Variable<String>(introduction);
    map['face_url'] = Variable<String>(faceURL);
    map['create_time'] = Variable<int>(createTime);
    map['status'] = Variable<int>(status);
    map['creator_user_id'] = Variable<String>(creatorUserID);
    map['group_type'] = Variable<int>(groupType);
    map['owner_user_id'] = Variable<String>(ownerUserID);
    map['member_count'] = Variable<int>(memberCount);
    map['ex'] = Variable<String>(ex);
    map['attached_info'] = Variable<String>(attachedInfo);
    map['need_verification'] = Variable<int>(needVerification);
    map['look_member_info'] = Variable<int>(lookMemberInfo);
    map['apply_member_friend'] = Variable<int>(applyMemberFriend);
    map['notification_update_time'] = Variable<int>(notificationUpdateTime);
    map['notification_user_id'] = Variable<String>(notificationUserID);
    return map;
  }

  LocalGroupCompanion toCompanion(bool nullToAbsent) {
    return LocalGroupCompanion(
      groupID: Value(groupID),
      groupName: Value(groupName),
      notification: Value(notification),
      introduction: Value(introduction),
      faceURL: Value(faceURL),
      createTime: Value(createTime),
      status: Value(status),
      creatorUserID: Value(creatorUserID),
      groupType: Value(groupType),
      ownerUserID: Value(ownerUserID),
      memberCount: Value(memberCount),
      ex: Value(ex),
      attachedInfo: Value(attachedInfo),
      needVerification: Value(needVerification),
      lookMemberInfo: Value(lookMemberInfo),
      applyMemberFriend: Value(applyMemberFriend),
      notificationUpdateTime: Value(notificationUpdateTime),
      notificationUserID: Value(notificationUserID),
    );
  }

  factory LocalGroupData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return LocalGroupData(
      groupID: serializer.fromJson<String>(json['groupID']),
      groupName: serializer.fromJson<String>(json['groupName']),
      notification: serializer.fromJson<String>(json['notification']),
      introduction: serializer.fromJson<String>(json['introduction']),
      faceURL: serializer.fromJson<String>(json['faceURL']),
      createTime: serializer.fromJson<int>(json['createTime']),
      status: serializer.fromJson<int>(json['status']),
      creatorUserID: serializer.fromJson<String>(json['creatorUserID']),
      groupType: serializer.fromJson<int>(json['groupType']),
      ownerUserID: serializer.fromJson<String>(json['ownerUserID']),
      memberCount: serializer.fromJson<int>(json['memberCount']),
      ex: serializer.fromJson<String>(json['ex']),
      attachedInfo: serializer.fromJson<String>(json['attachedInfo']),
      needVerification: serializer.fromJson<int>(json['needVerification']),
      lookMemberInfo: serializer.fromJson<int>(json['lookMemberInfo']),
      applyMemberFriend: serializer.fromJson<int>(json['applyMemberFriend']),
      notificationUpdateTime:
          serializer.fromJson<int>(json['notificationUpdateTime']),
      notificationUserID:
          serializer.fromJson<String>(json['notificationUserID']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'groupID': serializer.toJson<String>(groupID),
      'groupName': serializer.toJson<String>(groupName),
      'notification': serializer.toJson<String>(notification),
      'introduction': serializer.toJson<String>(introduction),
      'faceURL': serializer.toJson<String>(faceURL),
      'createTime': serializer.toJson<int>(createTime),
      'status': serializer.toJson<int>(status),
      'creatorUserID': serializer.toJson<String>(creatorUserID),
      'groupType': serializer.toJson<int>(groupType),
      'ownerUserID': serializer.toJson<String>(ownerUserID),
      'memberCount': serializer.toJson<int>(memberCount),
      'ex': serializer.toJson<String>(ex),
      'attachedInfo': serializer.toJson<String>(attachedInfo),
      'needVerification': serializer.toJson<int>(needVerification),
      'lookMemberInfo': serializer.toJson<int>(lookMemberInfo),
      'applyMemberFriend': serializer.toJson<int>(applyMemberFriend),
      'notificationUpdateTime': serializer.toJson<int>(notificationUpdateTime),
      'notificationUserID': serializer.toJson<String>(notificationUserID),
    };
  }

  LocalGroupData copyWith(
          {String? groupID,
          String? groupName,
          String? notification,
          String? introduction,
          String? faceURL,
          int? createTime,
          int? status,
          String? creatorUserID,
          int? groupType,
          String? ownerUserID,
          int? memberCount,
          String? ex,
          String? attachedInfo,
          int? needVerification,
          int? lookMemberInfo,
          int? applyMemberFriend,
          int? notificationUpdateTime,
          String? notificationUserID}) =>
      LocalGroupData(
        groupID: groupID ?? this.groupID,
        groupName: groupName ?? this.groupName,
        notification: notification ?? this.notification,
        introduction: introduction ?? this.introduction,
        faceURL: faceURL ?? this.faceURL,
        createTime: createTime ?? this.createTime,
        status: status ?? this.status,
        creatorUserID: creatorUserID ?? this.creatorUserID,
        groupType: groupType ?? this.groupType,
        ownerUserID: ownerUserID ?? this.ownerUserID,
        memberCount: memberCount ?? this.memberCount,
        ex: ex ?? this.ex,
        attachedInfo: attachedInfo ?? this.attachedInfo,
        needVerification: needVerification ?? this.needVerification,
        lookMemberInfo: lookMemberInfo ?? this.lookMemberInfo,
        applyMemberFriend: applyMemberFriend ?? this.applyMemberFriend,
        notificationUpdateTime:
            notificationUpdateTime ?? this.notificationUpdateTime,
        notificationUserID: notificationUserID ?? this.notificationUserID,
      );
  LocalGroupData copyWithCompanion(LocalGroupCompanion data) {
    return LocalGroupData(
      groupID: data.groupID.present ? data.groupID.value : this.groupID,
      groupName: data.groupName.present ? data.groupName.value : this.groupName,
      notification: data.notification.present
          ? data.notification.value
          : this.notification,
      introduction: data.introduction.present
          ? data.introduction.value
          : this.introduction,
      faceURL: data.faceURL.present ? data.faceURL.value : this.faceURL,
      createTime:
          data.createTime.present ? data.createTime.value : this.createTime,
      status: data.status.present ? data.status.value : this.status,
      creatorUserID: data.creatorUserID.present
          ? data.creatorUserID.value
          : this.creatorUserID,
      groupType: data.groupType.present ? data.groupType.value : this.groupType,
      ownerUserID:
          data.ownerUserID.present ? data.ownerUserID.value : this.ownerUserID,
      memberCount:
          data.memberCount.present ? data.memberCount.value : this.memberCount,
      ex: data.ex.present ? data.ex.value : this.ex,
      attachedInfo: data.attachedInfo.present
          ? data.attachedInfo.value
          : this.attachedInfo,
      needVerification: data.needVerification.present
          ? data.needVerification.value
          : this.needVerification,
      lookMemberInfo: data.lookMemberInfo.present
          ? data.lookMemberInfo.value
          : this.lookMemberInfo,
      applyMemberFriend: data.applyMemberFriend.present
          ? data.applyMemberFriend.value
          : this.applyMemberFriend,
      notificationUpdateTime: data.notificationUpdateTime.present
          ? data.notificationUpdateTime.value
          : this.notificationUpdateTime,
      notificationUserID: data.notificationUserID.present
          ? data.notificationUserID.value
          : this.notificationUserID,
    );
  }

  @override
  String toString() {
    return (StringBuffer('LocalGroupData(')
          ..write('groupID: $groupID, ')
          ..write('groupName: $groupName, ')
          ..write('notification: $notification, ')
          ..write('introduction: $introduction, ')
          ..write('faceURL: $faceURL, ')
          ..write('createTime: $createTime, ')
          ..write('status: $status, ')
          ..write('creatorUserID: $creatorUserID, ')
          ..write('groupType: $groupType, ')
          ..write('ownerUserID: $ownerUserID, ')
          ..write('memberCount: $memberCount, ')
          ..write('ex: $ex, ')
          ..write('attachedInfo: $attachedInfo, ')
          ..write('needVerification: $needVerification, ')
          ..write('lookMemberInfo: $lookMemberInfo, ')
          ..write('applyMemberFriend: $applyMemberFriend, ')
          ..write('notificationUpdateTime: $notificationUpdateTime, ')
          ..write('notificationUserID: $notificationUserID')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      groupID,
      groupName,
      notification,
      introduction,
      faceURL,
      createTime,
      status,
      creatorUserID,
      groupType,
      ownerUserID,
      memberCount,
      ex,
      attachedInfo,
      needVerification,
      lookMemberInfo,
      applyMemberFriend,
      notificationUpdateTime,
      notificationUserID);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is LocalGroupData &&
          other.groupID == this.groupID &&
          other.groupName == this.groupName &&
          other.notification == this.notification &&
          other.introduction == this.introduction &&
          other.faceURL == this.faceURL &&
          other.createTime == this.createTime &&
          other.status == this.status &&
          other.creatorUserID == this.creatorUserID &&
          other.groupType == this.groupType &&
          other.ownerUserID == this.ownerUserID &&
          other.memberCount == this.memberCount &&
          other.ex == this.ex &&
          other.attachedInfo == this.attachedInfo &&
          other.needVerification == this.needVerification &&
          other.lookMemberInfo == this.lookMemberInfo &&
          other.applyMemberFriend == this.applyMemberFriend &&
          other.notificationUpdateTime == this.notificationUpdateTime &&
          other.notificationUserID == this.notificationUserID);
}

class LocalGroupCompanion extends UpdateCompanion<LocalGroupData> {
  final Value<String> groupID;
  final Value<String> groupName;
  final Value<String> notification;
  final Value<String> introduction;
  final Value<String> faceURL;
  final Value<int> createTime;
  final Value<int> status;
  final Value<String> creatorUserID;
  final Value<int> groupType;
  final Value<String> ownerUserID;
  final Value<int> memberCount;
  final Value<String> ex;
  final Value<String> attachedInfo;
  final Value<int> needVerification;
  final Value<int> lookMemberInfo;
  final Value<int> applyMemberFriend;
  final Value<int> notificationUpdateTime;
  final Value<String> notificationUserID;
  final Value<int> rowid;
  const LocalGroupCompanion({
    this.groupID = const Value.absent(),
    this.groupName = const Value.absent(),
    this.notification = const Value.absent(),
    this.introduction = const Value.absent(),
    this.faceURL = const Value.absent(),
    this.createTime = const Value.absent(),
    this.status = const Value.absent(),
    this.creatorUserID = const Value.absent(),
    this.groupType = const Value.absent(),
    this.ownerUserID = const Value.absent(),
    this.memberCount = const Value.absent(),
    this.ex = const Value.absent(),
    this.attachedInfo = const Value.absent(),
    this.needVerification = const Value.absent(),
    this.lookMemberInfo = const Value.absent(),
    this.applyMemberFriend = const Value.absent(),
    this.notificationUpdateTime = const Value.absent(),
    this.notificationUserID = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  LocalGroupCompanion.insert({
    required String groupID,
    required String groupName,
    required String notification,
    required String introduction,
    required String faceURL,
    required int createTime,
    required int status,
    required String creatorUserID,
    required int groupType,
    required String ownerUserID,
    required int memberCount,
    required String ex,
    required String attachedInfo,
    required int needVerification,
    required int lookMemberInfo,
    required int applyMemberFriend,
    required int notificationUpdateTime,
    required String notificationUserID,
    this.rowid = const Value.absent(),
  })  : groupID = Value(groupID),
        groupName = Value(groupName),
        notification = Value(notification),
        introduction = Value(introduction),
        faceURL = Value(faceURL),
        createTime = Value(createTime),
        status = Value(status),
        creatorUserID = Value(creatorUserID),
        groupType = Value(groupType),
        ownerUserID = Value(ownerUserID),
        memberCount = Value(memberCount),
        ex = Value(ex),
        attachedInfo = Value(attachedInfo),
        needVerification = Value(needVerification),
        lookMemberInfo = Value(lookMemberInfo),
        applyMemberFriend = Value(applyMemberFriend),
        notificationUpdateTime = Value(notificationUpdateTime),
        notificationUserID = Value(notificationUserID);
  static Insertable<LocalGroupData> custom({
    Expression<String>? groupID,
    Expression<String>? groupName,
    Expression<String>? notification,
    Expression<String>? introduction,
    Expression<String>? faceURL,
    Expression<int>? createTime,
    Expression<int>? status,
    Expression<String>? creatorUserID,
    Expression<int>? groupType,
    Expression<String>? ownerUserID,
    Expression<int>? memberCount,
    Expression<String>? ex,
    Expression<String>? attachedInfo,
    Expression<int>? needVerification,
    Expression<int>? lookMemberInfo,
    Expression<int>? applyMemberFriend,
    Expression<int>? notificationUpdateTime,
    Expression<String>? notificationUserID,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (groupID != null) 'group_id': groupID,
      if (groupName != null) 'group_name': groupName,
      if (notification != null) 'notification': notification,
      if (introduction != null) 'introduction': introduction,
      if (faceURL != null) 'face_url': faceURL,
      if (createTime != null) 'create_time': createTime,
      if (status != null) 'status': status,
      if (creatorUserID != null) 'creator_user_id': creatorUserID,
      if (groupType != null) 'group_type': groupType,
      if (ownerUserID != null) 'owner_user_id': ownerUserID,
      if (memberCount != null) 'member_count': memberCount,
      if (ex != null) 'ex': ex,
      if (attachedInfo != null) 'attached_info': attachedInfo,
      if (needVerification != null) 'need_verification': needVerification,
      if (lookMemberInfo != null) 'look_member_info': lookMemberInfo,
      if (applyMemberFriend != null) 'apply_member_friend': applyMemberFriend,
      if (notificationUpdateTime != null)
        'notification_update_time': notificationUpdateTime,
      if (notificationUserID != null)
        'notification_user_id': notificationUserID,
      if (rowid != null) 'rowid': rowid,
    });
  }

  LocalGroupCompanion copyWith(
      {Value<String>? groupID,
      Value<String>? groupName,
      Value<String>? notification,
      Value<String>? introduction,
      Value<String>? faceURL,
      Value<int>? createTime,
      Value<int>? status,
      Value<String>? creatorUserID,
      Value<int>? groupType,
      Value<String>? ownerUserID,
      Value<int>? memberCount,
      Value<String>? ex,
      Value<String>? attachedInfo,
      Value<int>? needVerification,
      Value<int>? lookMemberInfo,
      Value<int>? applyMemberFriend,
      Value<int>? notificationUpdateTime,
      Value<String>? notificationUserID,
      Value<int>? rowid}) {
    return LocalGroupCompanion(
      groupID: groupID ?? this.groupID,
      groupName: groupName ?? this.groupName,
      notification: notification ?? this.notification,
      introduction: introduction ?? this.introduction,
      faceURL: faceURL ?? this.faceURL,
      createTime: createTime ?? this.createTime,
      status: status ?? this.status,
      creatorUserID: creatorUserID ?? this.creatorUserID,
      groupType: groupType ?? this.groupType,
      ownerUserID: ownerUserID ?? this.ownerUserID,
      memberCount: memberCount ?? this.memberCount,
      ex: ex ?? this.ex,
      attachedInfo: attachedInfo ?? this.attachedInfo,
      needVerification: needVerification ?? this.needVerification,
      lookMemberInfo: lookMemberInfo ?? this.lookMemberInfo,
      applyMemberFriend: applyMemberFriend ?? this.applyMemberFriend,
      notificationUpdateTime:
          notificationUpdateTime ?? this.notificationUpdateTime,
      notificationUserID: notificationUserID ?? this.notificationUserID,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (groupID.present) {
      map['group_id'] = Variable<String>(groupID.value);
    }
    if (groupName.present) {
      map['group_name'] = Variable<String>(groupName.value);
    }
    if (notification.present) {
      map['notification'] = Variable<String>(notification.value);
    }
    if (introduction.present) {
      map['introduction'] = Variable<String>(introduction.value);
    }
    if (faceURL.present) {
      map['face_url'] = Variable<String>(faceURL.value);
    }
    if (createTime.present) {
      map['create_time'] = Variable<int>(createTime.value);
    }
    if (status.present) {
      map['status'] = Variable<int>(status.value);
    }
    if (creatorUserID.present) {
      map['creator_user_id'] = Variable<String>(creatorUserID.value);
    }
    if (groupType.present) {
      map['group_type'] = Variable<int>(groupType.value);
    }
    if (ownerUserID.present) {
      map['owner_user_id'] = Variable<String>(ownerUserID.value);
    }
    if (memberCount.present) {
      map['member_count'] = Variable<int>(memberCount.value);
    }
    if (ex.present) {
      map['ex'] = Variable<String>(ex.value);
    }
    if (attachedInfo.present) {
      map['attached_info'] = Variable<String>(attachedInfo.value);
    }
    if (needVerification.present) {
      map['need_verification'] = Variable<int>(needVerification.value);
    }
    if (lookMemberInfo.present) {
      map['look_member_info'] = Variable<int>(lookMemberInfo.value);
    }
    if (applyMemberFriend.present) {
      map['apply_member_friend'] = Variable<int>(applyMemberFriend.value);
    }
    if (notificationUpdateTime.present) {
      map['notification_update_time'] =
          Variable<int>(notificationUpdateTime.value);
    }
    if (notificationUserID.present) {
      map['notification_user_id'] = Variable<String>(notificationUserID.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('LocalGroupCompanion(')
          ..write('groupID: $groupID, ')
          ..write('groupName: $groupName, ')
          ..write('notification: $notification, ')
          ..write('introduction: $introduction, ')
          ..write('faceURL: $faceURL, ')
          ..write('createTime: $createTime, ')
          ..write('status: $status, ')
          ..write('creatorUserID: $creatorUserID, ')
          ..write('groupType: $groupType, ')
          ..write('ownerUserID: $ownerUserID, ')
          ..write('memberCount: $memberCount, ')
          ..write('ex: $ex, ')
          ..write('attachedInfo: $attachedInfo, ')
          ..write('needVerification: $needVerification, ')
          ..write('lookMemberInfo: $lookMemberInfo, ')
          ..write('applyMemberFriend: $applyMemberFriend, ')
          ..write('notificationUpdateTime: $notificationUpdateTime, ')
          ..write('notificationUserID: $notificationUserID, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $LocalGroupMemberTable extends LocalGroupMember
    with TableInfo<$LocalGroupMemberTable, LocalGroupMemberData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $LocalGroupMemberTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _groupIDMeta =
      const VerificationMeta('groupID');
  @override
  late final GeneratedColumn<String> groupID = GeneratedColumn<String>(
      'group_id', aliasedName, false,
      additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 64),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  static const VerificationMeta _userIDMeta = const VerificationMeta('userID');
  @override
  late final GeneratedColumn<String> userID = GeneratedColumn<String>(
      'user_id', aliasedName, false,
      additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 64),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  static const VerificationMeta _nicknameMeta =
      const VerificationMeta('nickname');
  @override
  late final GeneratedColumn<String> nickname = GeneratedColumn<String>(
      'nickname', aliasedName, false,
      additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 255),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  static const VerificationMeta _faceURLMeta =
      const VerificationMeta('faceURL');
  @override
  late final GeneratedColumn<String> faceURL = GeneratedColumn<String>(
      'face_url', aliasedName, false,
      additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 255),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  static const VerificationMeta _roleLevelMeta =
      const VerificationMeta('roleLevel');
  @override
  late final GeneratedColumn<int> roleLevel = GeneratedColumn<int>(
      'role_level', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _joinTimeMeta =
      const VerificationMeta('joinTime');
  @override
  late final GeneratedColumn<int> joinTime = GeneratedColumn<int>(
      'join_time', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _joinSourceMeta =
      const VerificationMeta('joinSource');
  @override
  late final GeneratedColumn<int> joinSource = GeneratedColumn<int>(
      'join_source', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _inviterUserIDMeta =
      const VerificationMeta('inviterUserID');
  @override
  late final GeneratedColumn<String> inviterUserID = GeneratedColumn<String>(
      'inviter_user_id', aliasedName, false,
      additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 64),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  static const VerificationMeta _muteEndTimeMeta =
      const VerificationMeta('muteEndTime');
  @override
  late final GeneratedColumn<int> muteEndTime = GeneratedColumn<int>(
      'mute_end_time', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultValue: const Constant(0));
  static const VerificationMeta _operatorUserIDMeta =
      const VerificationMeta('operatorUserID');
  @override
  late final GeneratedColumn<String> operatorUserID = GeneratedColumn<String>(
      'operator_user_id', aliasedName, false,
      additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 64),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  static const VerificationMeta _exMeta = const VerificationMeta('ex');
  @override
  late final GeneratedColumn<String> ex = GeneratedColumn<String>(
      'ex', aliasedName, false,
      additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 1024),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  static const VerificationMeta _attachedInfoMeta =
      const VerificationMeta('attachedInfo');
  @override
  late final GeneratedColumn<String> attachedInfo = GeneratedColumn<String>(
      'attached_info', aliasedName, false,
      additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 1024),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [
        groupID,
        userID,
        nickname,
        faceURL,
        roleLevel,
        joinTime,
        joinSource,
        inviterUserID,
        muteEndTime,
        operatorUserID,
        ex,
        attachedInfo
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'local_group_members';
  @override
  VerificationContext validateIntegrity(
      Insertable<LocalGroupMemberData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('group_id')) {
      context.handle(_groupIDMeta,
          groupID.isAcceptableOrUnknown(data['group_id']!, _groupIDMeta));
    } else if (isInserting) {
      context.missing(_groupIDMeta);
    }
    if (data.containsKey('user_id')) {
      context.handle(_userIDMeta,
          userID.isAcceptableOrUnknown(data['user_id']!, _userIDMeta));
    } else if (isInserting) {
      context.missing(_userIDMeta);
    }
    if (data.containsKey('nickname')) {
      context.handle(_nicknameMeta,
          nickname.isAcceptableOrUnknown(data['nickname']!, _nicknameMeta));
    } else if (isInserting) {
      context.missing(_nicknameMeta);
    }
    if (data.containsKey('face_url')) {
      context.handle(_faceURLMeta,
          faceURL.isAcceptableOrUnknown(data['face_url']!, _faceURLMeta));
    } else if (isInserting) {
      context.missing(_faceURLMeta);
    }
    if (data.containsKey('role_level')) {
      context.handle(_roleLevelMeta,
          roleLevel.isAcceptableOrUnknown(data['role_level']!, _roleLevelMeta));
    } else if (isInserting) {
      context.missing(_roleLevelMeta);
    }
    if (data.containsKey('join_time')) {
      context.handle(_joinTimeMeta,
          joinTime.isAcceptableOrUnknown(data['join_time']!, _joinTimeMeta));
    } else if (isInserting) {
      context.missing(_joinTimeMeta);
    }
    if (data.containsKey('join_source')) {
      context.handle(
          _joinSourceMeta,
          joinSource.isAcceptableOrUnknown(
              data['join_source']!, _joinSourceMeta));
    } else if (isInserting) {
      context.missing(_joinSourceMeta);
    }
    if (data.containsKey('inviter_user_id')) {
      context.handle(
          _inviterUserIDMeta,
          inviterUserID.isAcceptableOrUnknown(
              data['inviter_user_id']!, _inviterUserIDMeta));
    } else if (isInserting) {
      context.missing(_inviterUserIDMeta);
    }
    if (data.containsKey('mute_end_time')) {
      context.handle(
          _muteEndTimeMeta,
          muteEndTime.isAcceptableOrUnknown(
              data['mute_end_time']!, _muteEndTimeMeta));
    }
    if (data.containsKey('operator_user_id')) {
      context.handle(
          _operatorUserIDMeta,
          operatorUserID.isAcceptableOrUnknown(
              data['operator_user_id']!, _operatorUserIDMeta));
    } else if (isInserting) {
      context.missing(_operatorUserIDMeta);
    }
    if (data.containsKey('ex')) {
      context.handle(_exMeta, ex.isAcceptableOrUnknown(data['ex']!, _exMeta));
    } else if (isInserting) {
      context.missing(_exMeta);
    }
    if (data.containsKey('attached_info')) {
      context.handle(
          _attachedInfoMeta,
          attachedInfo.isAcceptableOrUnknown(
              data['attached_info']!, _attachedInfoMeta));
    } else if (isInserting) {
      context.missing(_attachedInfoMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {groupID, userID};
  @override
  LocalGroupMemberData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return LocalGroupMemberData(
      groupID: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}group_id'])!,
      userID: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}user_id'])!,
      nickname: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}nickname'])!,
      faceURL: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}face_url'])!,
      roleLevel: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}role_level'])!,
      joinTime: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}join_time'])!,
      joinSource: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}join_source'])!,
      inviterUserID: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}inviter_user_id'])!,
      muteEndTime: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}mute_end_time'])!,
      operatorUserID: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}operator_user_id'])!,
      ex: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}ex'])!,
      attachedInfo: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}attached_info'])!,
    );
  }

  @override
  $LocalGroupMemberTable createAlias(String alias) {
    return $LocalGroupMemberTable(attachedDatabase, alias);
  }
}

class LocalGroupMemberData extends DataClass
    implements Insertable<LocalGroupMemberData> {
  final String groupID;
  final String userID;
  final String nickname;
  final String faceURL;
  final int roleLevel;
  final int joinTime;
  final int joinSource;
  final String inviterUserID;
  final int muteEndTime;
  final String operatorUserID;
  final String ex;
  final String attachedInfo;
  const LocalGroupMemberData(
      {required this.groupID,
      required this.userID,
      required this.nickname,
      required this.faceURL,
      required this.roleLevel,
      required this.joinTime,
      required this.joinSource,
      required this.inviterUserID,
      required this.muteEndTime,
      required this.operatorUserID,
      required this.ex,
      required this.attachedInfo});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['group_id'] = Variable<String>(groupID);
    map['user_id'] = Variable<String>(userID);
    map['nickname'] = Variable<String>(nickname);
    map['face_url'] = Variable<String>(faceURL);
    map['role_level'] = Variable<int>(roleLevel);
    map['join_time'] = Variable<int>(joinTime);
    map['join_source'] = Variable<int>(joinSource);
    map['inviter_user_id'] = Variable<String>(inviterUserID);
    map['mute_end_time'] = Variable<int>(muteEndTime);
    map['operator_user_id'] = Variable<String>(operatorUserID);
    map['ex'] = Variable<String>(ex);
    map['attached_info'] = Variable<String>(attachedInfo);
    return map;
  }

  LocalGroupMemberCompanion toCompanion(bool nullToAbsent) {
    return LocalGroupMemberCompanion(
      groupID: Value(groupID),
      userID: Value(userID),
      nickname: Value(nickname),
      faceURL: Value(faceURL),
      roleLevel: Value(roleLevel),
      joinTime: Value(joinTime),
      joinSource: Value(joinSource),
      inviterUserID: Value(inviterUserID),
      muteEndTime: Value(muteEndTime),
      operatorUserID: Value(operatorUserID),
      ex: Value(ex),
      attachedInfo: Value(attachedInfo),
    );
  }

  factory LocalGroupMemberData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return LocalGroupMemberData(
      groupID: serializer.fromJson<String>(json['groupID']),
      userID: serializer.fromJson<String>(json['userID']),
      nickname: serializer.fromJson<String>(json['nickname']),
      faceURL: serializer.fromJson<String>(json['faceURL']),
      roleLevel: serializer.fromJson<int>(json['roleLevel']),
      joinTime: serializer.fromJson<int>(json['joinTime']),
      joinSource: serializer.fromJson<int>(json['joinSource']),
      inviterUserID: serializer.fromJson<String>(json['inviterUserID']),
      muteEndTime: serializer.fromJson<int>(json['muteEndTime']),
      operatorUserID: serializer.fromJson<String>(json['operatorUserID']),
      ex: serializer.fromJson<String>(json['ex']),
      attachedInfo: serializer.fromJson<String>(json['attachedInfo']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'groupID': serializer.toJson<String>(groupID),
      'userID': serializer.toJson<String>(userID),
      'nickname': serializer.toJson<String>(nickname),
      'faceURL': serializer.toJson<String>(faceURL),
      'roleLevel': serializer.toJson<int>(roleLevel),
      'joinTime': serializer.toJson<int>(joinTime),
      'joinSource': serializer.toJson<int>(joinSource),
      'inviterUserID': serializer.toJson<String>(inviterUserID),
      'muteEndTime': serializer.toJson<int>(muteEndTime),
      'operatorUserID': serializer.toJson<String>(operatorUserID),
      'ex': serializer.toJson<String>(ex),
      'attachedInfo': serializer.toJson<String>(attachedInfo),
    };
  }

  LocalGroupMemberData copyWith(
          {String? groupID,
          String? userID,
          String? nickname,
          String? faceURL,
          int? roleLevel,
          int? joinTime,
          int? joinSource,
          String? inviterUserID,
          int? muteEndTime,
          String? operatorUserID,
          String? ex,
          String? attachedInfo}) =>
      LocalGroupMemberData(
        groupID: groupID ?? this.groupID,
        userID: userID ?? this.userID,
        nickname: nickname ?? this.nickname,
        faceURL: faceURL ?? this.faceURL,
        roleLevel: roleLevel ?? this.roleLevel,
        joinTime: joinTime ?? this.joinTime,
        joinSource: joinSource ?? this.joinSource,
        inviterUserID: inviterUserID ?? this.inviterUserID,
        muteEndTime: muteEndTime ?? this.muteEndTime,
        operatorUserID: operatorUserID ?? this.operatorUserID,
        ex: ex ?? this.ex,
        attachedInfo: attachedInfo ?? this.attachedInfo,
      );
  LocalGroupMemberData copyWithCompanion(LocalGroupMemberCompanion data) {
    return LocalGroupMemberData(
      groupID: data.groupID.present ? data.groupID.value : this.groupID,
      userID: data.userID.present ? data.userID.value : this.userID,
      nickname: data.nickname.present ? data.nickname.value : this.nickname,
      faceURL: data.faceURL.present ? data.faceURL.value : this.faceURL,
      roleLevel: data.roleLevel.present ? data.roleLevel.value : this.roleLevel,
      joinTime: data.joinTime.present ? data.joinTime.value : this.joinTime,
      joinSource:
          data.joinSource.present ? data.joinSource.value : this.joinSource,
      inviterUserID: data.inviterUserID.present
          ? data.inviterUserID.value
          : this.inviterUserID,
      muteEndTime:
          data.muteEndTime.present ? data.muteEndTime.value : this.muteEndTime,
      operatorUserID: data.operatorUserID.present
          ? data.operatorUserID.value
          : this.operatorUserID,
      ex: data.ex.present ? data.ex.value : this.ex,
      attachedInfo: data.attachedInfo.present
          ? data.attachedInfo.value
          : this.attachedInfo,
    );
  }

  @override
  String toString() {
    return (StringBuffer('LocalGroupMemberData(')
          ..write('groupID: $groupID, ')
          ..write('userID: $userID, ')
          ..write('nickname: $nickname, ')
          ..write('faceURL: $faceURL, ')
          ..write('roleLevel: $roleLevel, ')
          ..write('joinTime: $joinTime, ')
          ..write('joinSource: $joinSource, ')
          ..write('inviterUserID: $inviterUserID, ')
          ..write('muteEndTime: $muteEndTime, ')
          ..write('operatorUserID: $operatorUserID, ')
          ..write('ex: $ex, ')
          ..write('attachedInfo: $attachedInfo')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      groupID,
      userID,
      nickname,
      faceURL,
      roleLevel,
      joinTime,
      joinSource,
      inviterUserID,
      muteEndTime,
      operatorUserID,
      ex,
      attachedInfo);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is LocalGroupMemberData &&
          other.groupID == this.groupID &&
          other.userID == this.userID &&
          other.nickname == this.nickname &&
          other.faceURL == this.faceURL &&
          other.roleLevel == this.roleLevel &&
          other.joinTime == this.joinTime &&
          other.joinSource == this.joinSource &&
          other.inviterUserID == this.inviterUserID &&
          other.muteEndTime == this.muteEndTime &&
          other.operatorUserID == this.operatorUserID &&
          other.ex == this.ex &&
          other.attachedInfo == this.attachedInfo);
}

class LocalGroupMemberCompanion extends UpdateCompanion<LocalGroupMemberData> {
  final Value<String> groupID;
  final Value<String> userID;
  final Value<String> nickname;
  final Value<String> faceURL;
  final Value<int> roleLevel;
  final Value<int> joinTime;
  final Value<int> joinSource;
  final Value<String> inviterUserID;
  final Value<int> muteEndTime;
  final Value<String> operatorUserID;
  final Value<String> ex;
  final Value<String> attachedInfo;
  final Value<int> rowid;
  const LocalGroupMemberCompanion({
    this.groupID = const Value.absent(),
    this.userID = const Value.absent(),
    this.nickname = const Value.absent(),
    this.faceURL = const Value.absent(),
    this.roleLevel = const Value.absent(),
    this.joinTime = const Value.absent(),
    this.joinSource = const Value.absent(),
    this.inviterUserID = const Value.absent(),
    this.muteEndTime = const Value.absent(),
    this.operatorUserID = const Value.absent(),
    this.ex = const Value.absent(),
    this.attachedInfo = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  LocalGroupMemberCompanion.insert({
    required String groupID,
    required String userID,
    required String nickname,
    required String faceURL,
    required int roleLevel,
    required int joinTime,
    required int joinSource,
    required String inviterUserID,
    this.muteEndTime = const Value.absent(),
    required String operatorUserID,
    required String ex,
    required String attachedInfo,
    this.rowid = const Value.absent(),
  })  : groupID = Value(groupID),
        userID = Value(userID),
        nickname = Value(nickname),
        faceURL = Value(faceURL),
        roleLevel = Value(roleLevel),
        joinTime = Value(joinTime),
        joinSource = Value(joinSource),
        inviterUserID = Value(inviterUserID),
        operatorUserID = Value(operatorUserID),
        ex = Value(ex),
        attachedInfo = Value(attachedInfo);
  static Insertable<LocalGroupMemberData> custom({
    Expression<String>? groupID,
    Expression<String>? userID,
    Expression<String>? nickname,
    Expression<String>? faceURL,
    Expression<int>? roleLevel,
    Expression<int>? joinTime,
    Expression<int>? joinSource,
    Expression<String>? inviterUserID,
    Expression<int>? muteEndTime,
    Expression<String>? operatorUserID,
    Expression<String>? ex,
    Expression<String>? attachedInfo,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (groupID != null) 'group_id': groupID,
      if (userID != null) 'user_id': userID,
      if (nickname != null) 'nickname': nickname,
      if (faceURL != null) 'face_url': faceURL,
      if (roleLevel != null) 'role_level': roleLevel,
      if (joinTime != null) 'join_time': joinTime,
      if (joinSource != null) 'join_source': joinSource,
      if (inviterUserID != null) 'inviter_user_id': inviterUserID,
      if (muteEndTime != null) 'mute_end_time': muteEndTime,
      if (operatorUserID != null) 'operator_user_id': operatorUserID,
      if (ex != null) 'ex': ex,
      if (attachedInfo != null) 'attached_info': attachedInfo,
      if (rowid != null) 'rowid': rowid,
    });
  }

  LocalGroupMemberCompanion copyWith(
      {Value<String>? groupID,
      Value<String>? userID,
      Value<String>? nickname,
      Value<String>? faceURL,
      Value<int>? roleLevel,
      Value<int>? joinTime,
      Value<int>? joinSource,
      Value<String>? inviterUserID,
      Value<int>? muteEndTime,
      Value<String>? operatorUserID,
      Value<String>? ex,
      Value<String>? attachedInfo,
      Value<int>? rowid}) {
    return LocalGroupMemberCompanion(
      groupID: groupID ?? this.groupID,
      userID: userID ?? this.userID,
      nickname: nickname ?? this.nickname,
      faceURL: faceURL ?? this.faceURL,
      roleLevel: roleLevel ?? this.roleLevel,
      joinTime: joinTime ?? this.joinTime,
      joinSource: joinSource ?? this.joinSource,
      inviterUserID: inviterUserID ?? this.inviterUserID,
      muteEndTime: muteEndTime ?? this.muteEndTime,
      operatorUserID: operatorUserID ?? this.operatorUserID,
      ex: ex ?? this.ex,
      attachedInfo: attachedInfo ?? this.attachedInfo,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (groupID.present) {
      map['group_id'] = Variable<String>(groupID.value);
    }
    if (userID.present) {
      map['user_id'] = Variable<String>(userID.value);
    }
    if (nickname.present) {
      map['nickname'] = Variable<String>(nickname.value);
    }
    if (faceURL.present) {
      map['face_url'] = Variable<String>(faceURL.value);
    }
    if (roleLevel.present) {
      map['role_level'] = Variable<int>(roleLevel.value);
    }
    if (joinTime.present) {
      map['join_time'] = Variable<int>(joinTime.value);
    }
    if (joinSource.present) {
      map['join_source'] = Variable<int>(joinSource.value);
    }
    if (inviterUserID.present) {
      map['inviter_user_id'] = Variable<String>(inviterUserID.value);
    }
    if (muteEndTime.present) {
      map['mute_end_time'] = Variable<int>(muteEndTime.value);
    }
    if (operatorUserID.present) {
      map['operator_user_id'] = Variable<String>(operatorUserID.value);
    }
    if (ex.present) {
      map['ex'] = Variable<String>(ex.value);
    }
    if (attachedInfo.present) {
      map['attached_info'] = Variable<String>(attachedInfo.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('LocalGroupMemberCompanion(')
          ..write('groupID: $groupID, ')
          ..write('userID: $userID, ')
          ..write('nickname: $nickname, ')
          ..write('faceURL: $faceURL, ')
          ..write('roleLevel: $roleLevel, ')
          ..write('joinTime: $joinTime, ')
          ..write('joinSource: $joinSource, ')
          ..write('inviterUserID: $inviterUserID, ')
          ..write('muteEndTime: $muteEndTime, ')
          ..write('operatorUserID: $operatorUserID, ')
          ..write('ex: $ex, ')
          ..write('attachedInfo: $attachedInfo, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $LocalGroupRequestTable extends LocalGroupRequest
    with TableInfo<$LocalGroupRequestTable, LocalGroupRequestData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $LocalGroupRequestTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _groupIDMeta =
      const VerificationMeta('groupID');
  @override
  late final GeneratedColumn<String> groupID = GeneratedColumn<String>(
      'group_id', aliasedName, false,
      additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 64),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  static const VerificationMeta _groupNameMeta =
      const VerificationMeta('groupName');
  @override
  late final GeneratedColumn<String> groupName = GeneratedColumn<String>(
      'group_name', aliasedName, false,
      additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 255),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  static const VerificationMeta _notificationMeta =
      const VerificationMeta('notification');
  @override
  late final GeneratedColumn<String> notification = GeneratedColumn<String>(
      'notification', aliasedName, false,
      additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 255),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  static const VerificationMeta _introductionMeta =
      const VerificationMeta('introduction');
  @override
  late final GeneratedColumn<String> introduction = GeneratedColumn<String>(
      'introduction', aliasedName, false,
      additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 255),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  static const VerificationMeta _groupFaceURLMeta =
      const VerificationMeta('groupFaceURL');
  @override
  late final GeneratedColumn<String> groupFaceURL = GeneratedColumn<String>(
      'group_face_url', aliasedName, false,
      additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 255),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  static const VerificationMeta _createTimeMeta =
      const VerificationMeta('createTime');
  @override
  late final GeneratedColumn<int> createTime = GeneratedColumn<int>(
      'create_time', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _statusMeta = const VerificationMeta('status');
  @override
  late final GeneratedColumn<int> status = GeneratedColumn<int>(
      'status', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _creatorUserIDMeta =
      const VerificationMeta('creatorUserID');
  @override
  late final GeneratedColumn<String> creatorUserID = GeneratedColumn<String>(
      'creator_user_id', aliasedName, false,
      additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 64),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  static const VerificationMeta _groupTypeMeta =
      const VerificationMeta('groupType');
  @override
  late final GeneratedColumn<int> groupType = GeneratedColumn<int>(
      'group_type', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _ownerUserIDMeta =
      const VerificationMeta('ownerUserID');
  @override
  late final GeneratedColumn<String> ownerUserID = GeneratedColumn<String>(
      'owner_user_id', aliasedName, false,
      additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 64),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  static const VerificationMeta _memberCountMeta =
      const VerificationMeta('memberCount');
  @override
  late final GeneratedColumn<int> memberCount = GeneratedColumn<int>(
      'member_count', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _userIDMeta = const VerificationMeta('userID');
  @override
  late final GeneratedColumn<String> userID = GeneratedColumn<String>(
      'user_id', aliasedName, false,
      additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 64),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  static const VerificationMeta _nicknameMeta =
      const VerificationMeta('nickname');
  @override
  late final GeneratedColumn<String> nickname = GeneratedColumn<String>(
      'nickname', aliasedName, false,
      additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 255),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  static const VerificationMeta _userFaceURLMeta =
      const VerificationMeta('userFaceURL');
  @override
  late final GeneratedColumn<String> userFaceURL = GeneratedColumn<String>(
      'user_face_url', aliasedName, false,
      additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 255),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  static const VerificationMeta _handleResultMeta =
      const VerificationMeta('handleResult');
  @override
  late final GeneratedColumn<int> handleResult = GeneratedColumn<int>(
      'handle_result', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _reqMsgMeta = const VerificationMeta('reqMsg');
  @override
  late final GeneratedColumn<String> reqMsg = GeneratedColumn<String>(
      'req_msg', aliasedName, false,
      additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 255),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  static const VerificationMeta _handleMsgMeta =
      const VerificationMeta('handleMsg');
  @override
  late final GeneratedColumn<String> handleMsg = GeneratedColumn<String>(
      'handle_msg', aliasedName, false,
      additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 255),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  static const VerificationMeta _reqTimeMeta =
      const VerificationMeta('reqTime');
  @override
  late final GeneratedColumn<int> reqTime = GeneratedColumn<int>(
      'req_time', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _handleUserIDMeta =
      const VerificationMeta('handleUserID');
  @override
  late final GeneratedColumn<String> handleUserID = GeneratedColumn<String>(
      'handle_user_id', aliasedName, false,
      additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 64),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  static const VerificationMeta _handleTimeMeta =
      const VerificationMeta('handleTime');
  @override
  late final GeneratedColumn<int> handleTime = GeneratedColumn<int>(
      'handle_time', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _exMeta = const VerificationMeta('ex');
  @override
  late final GeneratedColumn<String> ex = GeneratedColumn<String>(
      'ex', aliasedName, false,
      additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 1024),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  static const VerificationMeta _attachedInfoMeta =
      const VerificationMeta('attachedInfo');
  @override
  late final GeneratedColumn<String> attachedInfo = GeneratedColumn<String>(
      'attached_info', aliasedName, false,
      additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 1024),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  static const VerificationMeta _joinSourceMeta =
      const VerificationMeta('joinSource');
  @override
  late final GeneratedColumn<int> joinSource = GeneratedColumn<int>(
      'join_source', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _inviterUserIDMeta =
      const VerificationMeta('inviterUserID');
  @override
  late final GeneratedColumn<String> inviterUserID = GeneratedColumn<String>(
      'inviter_user_id', aliasedName, false,
      additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 64),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [
        groupID,
        groupName,
        notification,
        introduction,
        groupFaceURL,
        createTime,
        status,
        creatorUserID,
        groupType,
        ownerUserID,
        memberCount,
        userID,
        nickname,
        userFaceURL,
        handleResult,
        reqMsg,
        handleMsg,
        reqTime,
        handleUserID,
        handleTime,
        ex,
        attachedInfo,
        joinSource,
        inviterUserID
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'local_group_request';
  @override
  VerificationContext validateIntegrity(
      Insertable<LocalGroupRequestData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('group_id')) {
      context.handle(_groupIDMeta,
          groupID.isAcceptableOrUnknown(data['group_id']!, _groupIDMeta));
    } else if (isInserting) {
      context.missing(_groupIDMeta);
    }
    if (data.containsKey('group_name')) {
      context.handle(_groupNameMeta,
          groupName.isAcceptableOrUnknown(data['group_name']!, _groupNameMeta));
    } else if (isInserting) {
      context.missing(_groupNameMeta);
    }
    if (data.containsKey('notification')) {
      context.handle(
          _notificationMeta,
          notification.isAcceptableOrUnknown(
              data['notification']!, _notificationMeta));
    } else if (isInserting) {
      context.missing(_notificationMeta);
    }
    if (data.containsKey('introduction')) {
      context.handle(
          _introductionMeta,
          introduction.isAcceptableOrUnknown(
              data['introduction']!, _introductionMeta));
    } else if (isInserting) {
      context.missing(_introductionMeta);
    }
    if (data.containsKey('group_face_url')) {
      context.handle(
          _groupFaceURLMeta,
          groupFaceURL.isAcceptableOrUnknown(
              data['group_face_url']!, _groupFaceURLMeta));
    } else if (isInserting) {
      context.missing(_groupFaceURLMeta);
    }
    if (data.containsKey('create_time')) {
      context.handle(
          _createTimeMeta,
          createTime.isAcceptableOrUnknown(
              data['create_time']!, _createTimeMeta));
    } else if (isInserting) {
      context.missing(_createTimeMeta);
    }
    if (data.containsKey('status')) {
      context.handle(_statusMeta,
          status.isAcceptableOrUnknown(data['status']!, _statusMeta));
    } else if (isInserting) {
      context.missing(_statusMeta);
    }
    if (data.containsKey('creator_user_id')) {
      context.handle(
          _creatorUserIDMeta,
          creatorUserID.isAcceptableOrUnknown(
              data['creator_user_id']!, _creatorUserIDMeta));
    } else if (isInserting) {
      context.missing(_creatorUserIDMeta);
    }
    if (data.containsKey('group_type')) {
      context.handle(_groupTypeMeta,
          groupType.isAcceptableOrUnknown(data['group_type']!, _groupTypeMeta));
    } else if (isInserting) {
      context.missing(_groupTypeMeta);
    }
    if (data.containsKey('owner_user_id')) {
      context.handle(
          _ownerUserIDMeta,
          ownerUserID.isAcceptableOrUnknown(
              data['owner_user_id']!, _ownerUserIDMeta));
    } else if (isInserting) {
      context.missing(_ownerUserIDMeta);
    }
    if (data.containsKey('member_count')) {
      context.handle(
          _memberCountMeta,
          memberCount.isAcceptableOrUnknown(
              data['member_count']!, _memberCountMeta));
    } else if (isInserting) {
      context.missing(_memberCountMeta);
    }
    if (data.containsKey('user_id')) {
      context.handle(_userIDMeta,
          userID.isAcceptableOrUnknown(data['user_id']!, _userIDMeta));
    } else if (isInserting) {
      context.missing(_userIDMeta);
    }
    if (data.containsKey('nickname')) {
      context.handle(_nicknameMeta,
          nickname.isAcceptableOrUnknown(data['nickname']!, _nicknameMeta));
    } else if (isInserting) {
      context.missing(_nicknameMeta);
    }
    if (data.containsKey('user_face_url')) {
      context.handle(
          _userFaceURLMeta,
          userFaceURL.isAcceptableOrUnknown(
              data['user_face_url']!, _userFaceURLMeta));
    } else if (isInserting) {
      context.missing(_userFaceURLMeta);
    }
    if (data.containsKey('handle_result')) {
      context.handle(
          _handleResultMeta,
          handleResult.isAcceptableOrUnknown(
              data['handle_result']!, _handleResultMeta));
    } else if (isInserting) {
      context.missing(_handleResultMeta);
    }
    if (data.containsKey('req_msg')) {
      context.handle(_reqMsgMeta,
          reqMsg.isAcceptableOrUnknown(data['req_msg']!, _reqMsgMeta));
    } else if (isInserting) {
      context.missing(_reqMsgMeta);
    }
    if (data.containsKey('handle_msg')) {
      context.handle(_handleMsgMeta,
          handleMsg.isAcceptableOrUnknown(data['handle_msg']!, _handleMsgMeta));
    } else if (isInserting) {
      context.missing(_handleMsgMeta);
    }
    if (data.containsKey('req_time')) {
      context.handle(_reqTimeMeta,
          reqTime.isAcceptableOrUnknown(data['req_time']!, _reqTimeMeta));
    } else if (isInserting) {
      context.missing(_reqTimeMeta);
    }
    if (data.containsKey('handle_user_id')) {
      context.handle(
          _handleUserIDMeta,
          handleUserID.isAcceptableOrUnknown(
              data['handle_user_id']!, _handleUserIDMeta));
    } else if (isInserting) {
      context.missing(_handleUserIDMeta);
    }
    if (data.containsKey('handle_time')) {
      context.handle(
          _handleTimeMeta,
          handleTime.isAcceptableOrUnknown(
              data['handle_time']!, _handleTimeMeta));
    } else if (isInserting) {
      context.missing(_handleTimeMeta);
    }
    if (data.containsKey('ex')) {
      context.handle(_exMeta, ex.isAcceptableOrUnknown(data['ex']!, _exMeta));
    } else if (isInserting) {
      context.missing(_exMeta);
    }
    if (data.containsKey('attached_info')) {
      context.handle(
          _attachedInfoMeta,
          attachedInfo.isAcceptableOrUnknown(
              data['attached_info']!, _attachedInfoMeta));
    } else if (isInserting) {
      context.missing(_attachedInfoMeta);
    }
    if (data.containsKey('join_source')) {
      context.handle(
          _joinSourceMeta,
          joinSource.isAcceptableOrUnknown(
              data['join_source']!, _joinSourceMeta));
    } else if (isInserting) {
      context.missing(_joinSourceMeta);
    }
    if (data.containsKey('inviter_user_id')) {
      context.handle(
          _inviterUserIDMeta,
          inviterUserID.isAcceptableOrUnknown(
              data['inviter_user_id']!, _inviterUserIDMeta));
    } else if (isInserting) {
      context.missing(_inviterUserIDMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {groupID, userID};
  @override
  LocalGroupRequestData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return LocalGroupRequestData(
      groupID: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}group_id'])!,
      groupName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}group_name'])!,
      notification: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}notification'])!,
      introduction: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}introduction'])!,
      groupFaceURL: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}group_face_url'])!,
      createTime: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}create_time'])!,
      status: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}status'])!,
      creatorUserID: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}creator_user_id'])!,
      groupType: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}group_type'])!,
      ownerUserID: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}owner_user_id'])!,
      memberCount: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}member_count'])!,
      userID: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}user_id'])!,
      nickname: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}nickname'])!,
      userFaceURL: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}user_face_url'])!,
      handleResult: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}handle_result'])!,
      reqMsg: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}req_msg'])!,
      handleMsg: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}handle_msg'])!,
      reqTime: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}req_time'])!,
      handleUserID: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}handle_user_id'])!,
      handleTime: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}handle_time'])!,
      ex: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}ex'])!,
      attachedInfo: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}attached_info'])!,
      joinSource: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}join_source'])!,
      inviterUserID: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}inviter_user_id'])!,
    );
  }

  @override
  $LocalGroupRequestTable createAlias(String alias) {
    return $LocalGroupRequestTable(attachedDatabase, alias);
  }
}

class LocalGroupRequestData extends DataClass
    implements Insertable<LocalGroupRequestData> {
  final String groupID;
  final String groupName;
  final String notification;
  final String introduction;
  final String groupFaceURL;
  final int createTime;
  final int status;
  final String creatorUserID;
  final int groupType;
  final String ownerUserID;
  final int memberCount;
  final String userID;
  final String nickname;
  final String userFaceURL;
  final int handleResult;
  final String reqMsg;
  final String handleMsg;
  final int reqTime;
  final String handleUserID;
  final int handleTime;
  final String ex;
  final String attachedInfo;
  final int joinSource;
  final String inviterUserID;
  const LocalGroupRequestData(
      {required this.groupID,
      required this.groupName,
      required this.notification,
      required this.introduction,
      required this.groupFaceURL,
      required this.createTime,
      required this.status,
      required this.creatorUserID,
      required this.groupType,
      required this.ownerUserID,
      required this.memberCount,
      required this.userID,
      required this.nickname,
      required this.userFaceURL,
      required this.handleResult,
      required this.reqMsg,
      required this.handleMsg,
      required this.reqTime,
      required this.handleUserID,
      required this.handleTime,
      required this.ex,
      required this.attachedInfo,
      required this.joinSource,
      required this.inviterUserID});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['group_id'] = Variable<String>(groupID);
    map['group_name'] = Variable<String>(groupName);
    map['notification'] = Variable<String>(notification);
    map['introduction'] = Variable<String>(introduction);
    map['group_face_url'] = Variable<String>(groupFaceURL);
    map['create_time'] = Variable<int>(createTime);
    map['status'] = Variable<int>(status);
    map['creator_user_id'] = Variable<String>(creatorUserID);
    map['group_type'] = Variable<int>(groupType);
    map['owner_user_id'] = Variable<String>(ownerUserID);
    map['member_count'] = Variable<int>(memberCount);
    map['user_id'] = Variable<String>(userID);
    map['nickname'] = Variable<String>(nickname);
    map['user_face_url'] = Variable<String>(userFaceURL);
    map['handle_result'] = Variable<int>(handleResult);
    map['req_msg'] = Variable<String>(reqMsg);
    map['handle_msg'] = Variable<String>(handleMsg);
    map['req_time'] = Variable<int>(reqTime);
    map['handle_user_id'] = Variable<String>(handleUserID);
    map['handle_time'] = Variable<int>(handleTime);
    map['ex'] = Variable<String>(ex);
    map['attached_info'] = Variable<String>(attachedInfo);
    map['join_source'] = Variable<int>(joinSource);
    map['inviter_user_id'] = Variable<String>(inviterUserID);
    return map;
  }

  LocalGroupRequestCompanion toCompanion(bool nullToAbsent) {
    return LocalGroupRequestCompanion(
      groupID: Value(groupID),
      groupName: Value(groupName),
      notification: Value(notification),
      introduction: Value(introduction),
      groupFaceURL: Value(groupFaceURL),
      createTime: Value(createTime),
      status: Value(status),
      creatorUserID: Value(creatorUserID),
      groupType: Value(groupType),
      ownerUserID: Value(ownerUserID),
      memberCount: Value(memberCount),
      userID: Value(userID),
      nickname: Value(nickname),
      userFaceURL: Value(userFaceURL),
      handleResult: Value(handleResult),
      reqMsg: Value(reqMsg),
      handleMsg: Value(handleMsg),
      reqTime: Value(reqTime),
      handleUserID: Value(handleUserID),
      handleTime: Value(handleTime),
      ex: Value(ex),
      attachedInfo: Value(attachedInfo),
      joinSource: Value(joinSource),
      inviterUserID: Value(inviterUserID),
    );
  }

  factory LocalGroupRequestData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return LocalGroupRequestData(
      groupID: serializer.fromJson<String>(json['groupID']),
      groupName: serializer.fromJson<String>(json['groupName']),
      notification: serializer.fromJson<String>(json['notification']),
      introduction: serializer.fromJson<String>(json['introduction']),
      groupFaceURL: serializer.fromJson<String>(json['groupFaceURL']),
      createTime: serializer.fromJson<int>(json['createTime']),
      status: serializer.fromJson<int>(json['status']),
      creatorUserID: serializer.fromJson<String>(json['creatorUserID']),
      groupType: serializer.fromJson<int>(json['groupType']),
      ownerUserID: serializer.fromJson<String>(json['ownerUserID']),
      memberCount: serializer.fromJson<int>(json['memberCount']),
      userID: serializer.fromJson<String>(json['userID']),
      nickname: serializer.fromJson<String>(json['nickname']),
      userFaceURL: serializer.fromJson<String>(json['userFaceURL']),
      handleResult: serializer.fromJson<int>(json['handleResult']),
      reqMsg: serializer.fromJson<String>(json['reqMsg']),
      handleMsg: serializer.fromJson<String>(json['handleMsg']),
      reqTime: serializer.fromJson<int>(json['reqTime']),
      handleUserID: serializer.fromJson<String>(json['handleUserID']),
      handleTime: serializer.fromJson<int>(json['handleTime']),
      ex: serializer.fromJson<String>(json['ex']),
      attachedInfo: serializer.fromJson<String>(json['attachedInfo']),
      joinSource: serializer.fromJson<int>(json['joinSource']),
      inviterUserID: serializer.fromJson<String>(json['inviterUserID']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'groupID': serializer.toJson<String>(groupID),
      'groupName': serializer.toJson<String>(groupName),
      'notification': serializer.toJson<String>(notification),
      'introduction': serializer.toJson<String>(introduction),
      'groupFaceURL': serializer.toJson<String>(groupFaceURL),
      'createTime': serializer.toJson<int>(createTime),
      'status': serializer.toJson<int>(status),
      'creatorUserID': serializer.toJson<String>(creatorUserID),
      'groupType': serializer.toJson<int>(groupType),
      'ownerUserID': serializer.toJson<String>(ownerUserID),
      'memberCount': serializer.toJson<int>(memberCount),
      'userID': serializer.toJson<String>(userID),
      'nickname': serializer.toJson<String>(nickname),
      'userFaceURL': serializer.toJson<String>(userFaceURL),
      'handleResult': serializer.toJson<int>(handleResult),
      'reqMsg': serializer.toJson<String>(reqMsg),
      'handleMsg': serializer.toJson<String>(handleMsg),
      'reqTime': serializer.toJson<int>(reqTime),
      'handleUserID': serializer.toJson<String>(handleUserID),
      'handleTime': serializer.toJson<int>(handleTime),
      'ex': serializer.toJson<String>(ex),
      'attachedInfo': serializer.toJson<String>(attachedInfo),
      'joinSource': serializer.toJson<int>(joinSource),
      'inviterUserID': serializer.toJson<String>(inviterUserID),
    };
  }

  LocalGroupRequestData copyWith(
          {String? groupID,
          String? groupName,
          String? notification,
          String? introduction,
          String? groupFaceURL,
          int? createTime,
          int? status,
          String? creatorUserID,
          int? groupType,
          String? ownerUserID,
          int? memberCount,
          String? userID,
          String? nickname,
          String? userFaceURL,
          int? handleResult,
          String? reqMsg,
          String? handleMsg,
          int? reqTime,
          String? handleUserID,
          int? handleTime,
          String? ex,
          String? attachedInfo,
          int? joinSource,
          String? inviterUserID}) =>
      LocalGroupRequestData(
        groupID: groupID ?? this.groupID,
        groupName: groupName ?? this.groupName,
        notification: notification ?? this.notification,
        introduction: introduction ?? this.introduction,
        groupFaceURL: groupFaceURL ?? this.groupFaceURL,
        createTime: createTime ?? this.createTime,
        status: status ?? this.status,
        creatorUserID: creatorUserID ?? this.creatorUserID,
        groupType: groupType ?? this.groupType,
        ownerUserID: ownerUserID ?? this.ownerUserID,
        memberCount: memberCount ?? this.memberCount,
        userID: userID ?? this.userID,
        nickname: nickname ?? this.nickname,
        userFaceURL: userFaceURL ?? this.userFaceURL,
        handleResult: handleResult ?? this.handleResult,
        reqMsg: reqMsg ?? this.reqMsg,
        handleMsg: handleMsg ?? this.handleMsg,
        reqTime: reqTime ?? this.reqTime,
        handleUserID: handleUserID ?? this.handleUserID,
        handleTime: handleTime ?? this.handleTime,
        ex: ex ?? this.ex,
        attachedInfo: attachedInfo ?? this.attachedInfo,
        joinSource: joinSource ?? this.joinSource,
        inviterUserID: inviterUserID ?? this.inviterUserID,
      );
  LocalGroupRequestData copyWithCompanion(LocalGroupRequestCompanion data) {
    return LocalGroupRequestData(
      groupID: data.groupID.present ? data.groupID.value : this.groupID,
      groupName: data.groupName.present ? data.groupName.value : this.groupName,
      notification: data.notification.present
          ? data.notification.value
          : this.notification,
      introduction: data.introduction.present
          ? data.introduction.value
          : this.introduction,
      groupFaceURL: data.groupFaceURL.present
          ? data.groupFaceURL.value
          : this.groupFaceURL,
      createTime:
          data.createTime.present ? data.createTime.value : this.createTime,
      status: data.status.present ? data.status.value : this.status,
      creatorUserID: data.creatorUserID.present
          ? data.creatorUserID.value
          : this.creatorUserID,
      groupType: data.groupType.present ? data.groupType.value : this.groupType,
      ownerUserID:
          data.ownerUserID.present ? data.ownerUserID.value : this.ownerUserID,
      memberCount:
          data.memberCount.present ? data.memberCount.value : this.memberCount,
      userID: data.userID.present ? data.userID.value : this.userID,
      nickname: data.nickname.present ? data.nickname.value : this.nickname,
      userFaceURL:
          data.userFaceURL.present ? data.userFaceURL.value : this.userFaceURL,
      handleResult: data.handleResult.present
          ? data.handleResult.value
          : this.handleResult,
      reqMsg: data.reqMsg.present ? data.reqMsg.value : this.reqMsg,
      handleMsg: data.handleMsg.present ? data.handleMsg.value : this.handleMsg,
      reqTime: data.reqTime.present ? data.reqTime.value : this.reqTime,
      handleUserID: data.handleUserID.present
          ? data.handleUserID.value
          : this.handleUserID,
      handleTime:
          data.handleTime.present ? data.handleTime.value : this.handleTime,
      ex: data.ex.present ? data.ex.value : this.ex,
      attachedInfo: data.attachedInfo.present
          ? data.attachedInfo.value
          : this.attachedInfo,
      joinSource:
          data.joinSource.present ? data.joinSource.value : this.joinSource,
      inviterUserID: data.inviterUserID.present
          ? data.inviterUserID.value
          : this.inviterUserID,
    );
  }

  @override
  String toString() {
    return (StringBuffer('LocalGroupRequestData(')
          ..write('groupID: $groupID, ')
          ..write('groupName: $groupName, ')
          ..write('notification: $notification, ')
          ..write('introduction: $introduction, ')
          ..write('groupFaceURL: $groupFaceURL, ')
          ..write('createTime: $createTime, ')
          ..write('status: $status, ')
          ..write('creatorUserID: $creatorUserID, ')
          ..write('groupType: $groupType, ')
          ..write('ownerUserID: $ownerUserID, ')
          ..write('memberCount: $memberCount, ')
          ..write('userID: $userID, ')
          ..write('nickname: $nickname, ')
          ..write('userFaceURL: $userFaceURL, ')
          ..write('handleResult: $handleResult, ')
          ..write('reqMsg: $reqMsg, ')
          ..write('handleMsg: $handleMsg, ')
          ..write('reqTime: $reqTime, ')
          ..write('handleUserID: $handleUserID, ')
          ..write('handleTime: $handleTime, ')
          ..write('ex: $ex, ')
          ..write('attachedInfo: $attachedInfo, ')
          ..write('joinSource: $joinSource, ')
          ..write('inviterUserID: $inviterUserID')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hashAll([
        groupID,
        groupName,
        notification,
        introduction,
        groupFaceURL,
        createTime,
        status,
        creatorUserID,
        groupType,
        ownerUserID,
        memberCount,
        userID,
        nickname,
        userFaceURL,
        handleResult,
        reqMsg,
        handleMsg,
        reqTime,
        handleUserID,
        handleTime,
        ex,
        attachedInfo,
        joinSource,
        inviterUserID
      ]);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is LocalGroupRequestData &&
          other.groupID == this.groupID &&
          other.groupName == this.groupName &&
          other.notification == this.notification &&
          other.introduction == this.introduction &&
          other.groupFaceURL == this.groupFaceURL &&
          other.createTime == this.createTime &&
          other.status == this.status &&
          other.creatorUserID == this.creatorUserID &&
          other.groupType == this.groupType &&
          other.ownerUserID == this.ownerUserID &&
          other.memberCount == this.memberCount &&
          other.userID == this.userID &&
          other.nickname == this.nickname &&
          other.userFaceURL == this.userFaceURL &&
          other.handleResult == this.handleResult &&
          other.reqMsg == this.reqMsg &&
          other.handleMsg == this.handleMsg &&
          other.reqTime == this.reqTime &&
          other.handleUserID == this.handleUserID &&
          other.handleTime == this.handleTime &&
          other.ex == this.ex &&
          other.attachedInfo == this.attachedInfo &&
          other.joinSource == this.joinSource &&
          other.inviterUserID == this.inviterUserID);
}

class LocalGroupRequestCompanion
    extends UpdateCompanion<LocalGroupRequestData> {
  final Value<String> groupID;
  final Value<String> groupName;
  final Value<String> notification;
  final Value<String> introduction;
  final Value<String> groupFaceURL;
  final Value<int> createTime;
  final Value<int> status;
  final Value<String> creatorUserID;
  final Value<int> groupType;
  final Value<String> ownerUserID;
  final Value<int> memberCount;
  final Value<String> userID;
  final Value<String> nickname;
  final Value<String> userFaceURL;
  final Value<int> handleResult;
  final Value<String> reqMsg;
  final Value<String> handleMsg;
  final Value<int> reqTime;
  final Value<String> handleUserID;
  final Value<int> handleTime;
  final Value<String> ex;
  final Value<String> attachedInfo;
  final Value<int> joinSource;
  final Value<String> inviterUserID;
  final Value<int> rowid;
  const LocalGroupRequestCompanion({
    this.groupID = const Value.absent(),
    this.groupName = const Value.absent(),
    this.notification = const Value.absent(),
    this.introduction = const Value.absent(),
    this.groupFaceURL = const Value.absent(),
    this.createTime = const Value.absent(),
    this.status = const Value.absent(),
    this.creatorUserID = const Value.absent(),
    this.groupType = const Value.absent(),
    this.ownerUserID = const Value.absent(),
    this.memberCount = const Value.absent(),
    this.userID = const Value.absent(),
    this.nickname = const Value.absent(),
    this.userFaceURL = const Value.absent(),
    this.handleResult = const Value.absent(),
    this.reqMsg = const Value.absent(),
    this.handleMsg = const Value.absent(),
    this.reqTime = const Value.absent(),
    this.handleUserID = const Value.absent(),
    this.handleTime = const Value.absent(),
    this.ex = const Value.absent(),
    this.attachedInfo = const Value.absent(),
    this.joinSource = const Value.absent(),
    this.inviterUserID = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  LocalGroupRequestCompanion.insert({
    required String groupID,
    required String groupName,
    required String notification,
    required String introduction,
    required String groupFaceURL,
    required int createTime,
    required int status,
    required String creatorUserID,
    required int groupType,
    required String ownerUserID,
    required int memberCount,
    required String userID,
    required String nickname,
    required String userFaceURL,
    required int handleResult,
    required String reqMsg,
    required String handleMsg,
    required int reqTime,
    required String handleUserID,
    required int handleTime,
    required String ex,
    required String attachedInfo,
    required int joinSource,
    required String inviterUserID,
    this.rowid = const Value.absent(),
  })  : groupID = Value(groupID),
        groupName = Value(groupName),
        notification = Value(notification),
        introduction = Value(introduction),
        groupFaceURL = Value(groupFaceURL),
        createTime = Value(createTime),
        status = Value(status),
        creatorUserID = Value(creatorUserID),
        groupType = Value(groupType),
        ownerUserID = Value(ownerUserID),
        memberCount = Value(memberCount),
        userID = Value(userID),
        nickname = Value(nickname),
        userFaceURL = Value(userFaceURL),
        handleResult = Value(handleResult),
        reqMsg = Value(reqMsg),
        handleMsg = Value(handleMsg),
        reqTime = Value(reqTime),
        handleUserID = Value(handleUserID),
        handleTime = Value(handleTime),
        ex = Value(ex),
        attachedInfo = Value(attachedInfo),
        joinSource = Value(joinSource),
        inviterUserID = Value(inviterUserID);
  static Insertable<LocalGroupRequestData> custom({
    Expression<String>? groupID,
    Expression<String>? groupName,
    Expression<String>? notification,
    Expression<String>? introduction,
    Expression<String>? groupFaceURL,
    Expression<int>? createTime,
    Expression<int>? status,
    Expression<String>? creatorUserID,
    Expression<int>? groupType,
    Expression<String>? ownerUserID,
    Expression<int>? memberCount,
    Expression<String>? userID,
    Expression<String>? nickname,
    Expression<String>? userFaceURL,
    Expression<int>? handleResult,
    Expression<String>? reqMsg,
    Expression<String>? handleMsg,
    Expression<int>? reqTime,
    Expression<String>? handleUserID,
    Expression<int>? handleTime,
    Expression<String>? ex,
    Expression<String>? attachedInfo,
    Expression<int>? joinSource,
    Expression<String>? inviterUserID,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (groupID != null) 'group_id': groupID,
      if (groupName != null) 'group_name': groupName,
      if (notification != null) 'notification': notification,
      if (introduction != null) 'introduction': introduction,
      if (groupFaceURL != null) 'group_face_url': groupFaceURL,
      if (createTime != null) 'create_time': createTime,
      if (status != null) 'status': status,
      if (creatorUserID != null) 'creator_user_id': creatorUserID,
      if (groupType != null) 'group_type': groupType,
      if (ownerUserID != null) 'owner_user_id': ownerUserID,
      if (memberCount != null) 'member_count': memberCount,
      if (userID != null) 'user_id': userID,
      if (nickname != null) 'nickname': nickname,
      if (userFaceURL != null) 'user_face_url': userFaceURL,
      if (handleResult != null) 'handle_result': handleResult,
      if (reqMsg != null) 'req_msg': reqMsg,
      if (handleMsg != null) 'handle_msg': handleMsg,
      if (reqTime != null) 'req_time': reqTime,
      if (handleUserID != null) 'handle_user_id': handleUserID,
      if (handleTime != null) 'handle_time': handleTime,
      if (ex != null) 'ex': ex,
      if (attachedInfo != null) 'attached_info': attachedInfo,
      if (joinSource != null) 'join_source': joinSource,
      if (inviterUserID != null) 'inviter_user_id': inviterUserID,
      if (rowid != null) 'rowid': rowid,
    });
  }

  LocalGroupRequestCompanion copyWith(
      {Value<String>? groupID,
      Value<String>? groupName,
      Value<String>? notification,
      Value<String>? introduction,
      Value<String>? groupFaceURL,
      Value<int>? createTime,
      Value<int>? status,
      Value<String>? creatorUserID,
      Value<int>? groupType,
      Value<String>? ownerUserID,
      Value<int>? memberCount,
      Value<String>? userID,
      Value<String>? nickname,
      Value<String>? userFaceURL,
      Value<int>? handleResult,
      Value<String>? reqMsg,
      Value<String>? handleMsg,
      Value<int>? reqTime,
      Value<String>? handleUserID,
      Value<int>? handleTime,
      Value<String>? ex,
      Value<String>? attachedInfo,
      Value<int>? joinSource,
      Value<String>? inviterUserID,
      Value<int>? rowid}) {
    return LocalGroupRequestCompanion(
      groupID: groupID ?? this.groupID,
      groupName: groupName ?? this.groupName,
      notification: notification ?? this.notification,
      introduction: introduction ?? this.introduction,
      groupFaceURL: groupFaceURL ?? this.groupFaceURL,
      createTime: createTime ?? this.createTime,
      status: status ?? this.status,
      creatorUserID: creatorUserID ?? this.creatorUserID,
      groupType: groupType ?? this.groupType,
      ownerUserID: ownerUserID ?? this.ownerUserID,
      memberCount: memberCount ?? this.memberCount,
      userID: userID ?? this.userID,
      nickname: nickname ?? this.nickname,
      userFaceURL: userFaceURL ?? this.userFaceURL,
      handleResult: handleResult ?? this.handleResult,
      reqMsg: reqMsg ?? this.reqMsg,
      handleMsg: handleMsg ?? this.handleMsg,
      reqTime: reqTime ?? this.reqTime,
      handleUserID: handleUserID ?? this.handleUserID,
      handleTime: handleTime ?? this.handleTime,
      ex: ex ?? this.ex,
      attachedInfo: attachedInfo ?? this.attachedInfo,
      joinSource: joinSource ?? this.joinSource,
      inviterUserID: inviterUserID ?? this.inviterUserID,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (groupID.present) {
      map['group_id'] = Variable<String>(groupID.value);
    }
    if (groupName.present) {
      map['group_name'] = Variable<String>(groupName.value);
    }
    if (notification.present) {
      map['notification'] = Variable<String>(notification.value);
    }
    if (introduction.present) {
      map['introduction'] = Variable<String>(introduction.value);
    }
    if (groupFaceURL.present) {
      map['group_face_url'] = Variable<String>(groupFaceURL.value);
    }
    if (createTime.present) {
      map['create_time'] = Variable<int>(createTime.value);
    }
    if (status.present) {
      map['status'] = Variable<int>(status.value);
    }
    if (creatorUserID.present) {
      map['creator_user_id'] = Variable<String>(creatorUserID.value);
    }
    if (groupType.present) {
      map['group_type'] = Variable<int>(groupType.value);
    }
    if (ownerUserID.present) {
      map['owner_user_id'] = Variable<String>(ownerUserID.value);
    }
    if (memberCount.present) {
      map['member_count'] = Variable<int>(memberCount.value);
    }
    if (userID.present) {
      map['user_id'] = Variable<String>(userID.value);
    }
    if (nickname.present) {
      map['nickname'] = Variable<String>(nickname.value);
    }
    if (userFaceURL.present) {
      map['user_face_url'] = Variable<String>(userFaceURL.value);
    }
    if (handleResult.present) {
      map['handle_result'] = Variable<int>(handleResult.value);
    }
    if (reqMsg.present) {
      map['req_msg'] = Variable<String>(reqMsg.value);
    }
    if (handleMsg.present) {
      map['handle_msg'] = Variable<String>(handleMsg.value);
    }
    if (reqTime.present) {
      map['req_time'] = Variable<int>(reqTime.value);
    }
    if (handleUserID.present) {
      map['handle_user_id'] = Variable<String>(handleUserID.value);
    }
    if (handleTime.present) {
      map['handle_time'] = Variable<int>(handleTime.value);
    }
    if (ex.present) {
      map['ex'] = Variable<String>(ex.value);
    }
    if (attachedInfo.present) {
      map['attached_info'] = Variable<String>(attachedInfo.value);
    }
    if (joinSource.present) {
      map['join_source'] = Variable<int>(joinSource.value);
    }
    if (inviterUserID.present) {
      map['inviter_user_id'] = Variable<String>(inviterUserID.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('LocalGroupRequestCompanion(')
          ..write('groupID: $groupID, ')
          ..write('groupName: $groupName, ')
          ..write('notification: $notification, ')
          ..write('introduction: $introduction, ')
          ..write('groupFaceURL: $groupFaceURL, ')
          ..write('createTime: $createTime, ')
          ..write('status: $status, ')
          ..write('creatorUserID: $creatorUserID, ')
          ..write('groupType: $groupType, ')
          ..write('ownerUserID: $ownerUserID, ')
          ..write('memberCount: $memberCount, ')
          ..write('userID: $userID, ')
          ..write('nickname: $nickname, ')
          ..write('userFaceURL: $userFaceURL, ')
          ..write('handleResult: $handleResult, ')
          ..write('reqMsg: $reqMsg, ')
          ..write('handleMsg: $handleMsg, ')
          ..write('reqTime: $reqTime, ')
          ..write('handleUserID: $handleUserID, ')
          ..write('handleTime: $handleTime, ')
          ..write('ex: $ex, ')
          ..write('attachedInfo: $attachedInfo, ')
          ..write('joinSource: $joinSource, ')
          ..write('inviterUserID: $inviterUserID, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $LocalUserTable extends LocalUser
    with TableInfo<$LocalUserTable, LocalUserData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $LocalUserTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _userIDMeta = const VerificationMeta('userID');
  @override
  late final GeneratedColumn<String> userID = GeneratedColumn<String>(
      'user_id', aliasedName, false,
      additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 64),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  static const VerificationMeta _nicknameMeta =
      const VerificationMeta('nickname');
  @override
  late final GeneratedColumn<String> nickname = GeneratedColumn<String>(
      'nickname', aliasedName, false,
      additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 255),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  static const VerificationMeta _faceURLMeta =
      const VerificationMeta('faceURL');
  @override
  late final GeneratedColumn<String> faceURL = GeneratedColumn<String>(
      'face_url', aliasedName, false,
      additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 255),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  static const VerificationMeta _createTimeMeta =
      const VerificationMeta('createTime');
  @override
  late final GeneratedColumn<int> createTime = GeneratedColumn<int>(
      'create_time', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _appMangerLevelMeta =
      const VerificationMeta('appMangerLevel');
  @override
  late final GeneratedColumn<int> appMangerLevel = GeneratedColumn<int>(
      'app_manger_level', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _exMeta = const VerificationMeta('ex');
  @override
  late final GeneratedColumn<String> ex = GeneratedColumn<String>(
      'ex', aliasedName, false,
      additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 1024),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  static const VerificationMeta _attachedInfoMeta =
      const VerificationMeta('attachedInfo');
  @override
  late final GeneratedColumn<String> attachedInfo = GeneratedColumn<String>(
      'attached_info', aliasedName, false,
      additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 1024),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  static const VerificationMeta _globalRecvMsgOptMeta =
      const VerificationMeta('globalRecvMsgOpt');
  @override
  late final GeneratedColumn<int> globalRecvMsgOpt = GeneratedColumn<int>(
      'global_recv_msg_opt', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [
        userID,
        nickname,
        faceURL,
        createTime,
        appMangerLevel,
        ex,
        attachedInfo,
        globalRecvMsgOpt
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'local_user';
  @override
  VerificationContext validateIntegrity(Insertable<LocalUserData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('user_id')) {
      context.handle(_userIDMeta,
          userID.isAcceptableOrUnknown(data['user_id']!, _userIDMeta));
    } else if (isInserting) {
      context.missing(_userIDMeta);
    }
    if (data.containsKey('nickname')) {
      context.handle(_nicknameMeta,
          nickname.isAcceptableOrUnknown(data['nickname']!, _nicknameMeta));
    } else if (isInserting) {
      context.missing(_nicknameMeta);
    }
    if (data.containsKey('face_url')) {
      context.handle(_faceURLMeta,
          faceURL.isAcceptableOrUnknown(data['face_url']!, _faceURLMeta));
    } else if (isInserting) {
      context.missing(_faceURLMeta);
    }
    if (data.containsKey('create_time')) {
      context.handle(
          _createTimeMeta,
          createTime.isAcceptableOrUnknown(
              data['create_time']!, _createTimeMeta));
    } else if (isInserting) {
      context.missing(_createTimeMeta);
    }
    if (data.containsKey('app_manger_level')) {
      context.handle(
          _appMangerLevelMeta,
          appMangerLevel.isAcceptableOrUnknown(
              data['app_manger_level']!, _appMangerLevelMeta));
    } else if (isInserting) {
      context.missing(_appMangerLevelMeta);
    }
    if (data.containsKey('ex')) {
      context.handle(_exMeta, ex.isAcceptableOrUnknown(data['ex']!, _exMeta));
    } else if (isInserting) {
      context.missing(_exMeta);
    }
    if (data.containsKey('attached_info')) {
      context.handle(
          _attachedInfoMeta,
          attachedInfo.isAcceptableOrUnknown(
              data['attached_info']!, _attachedInfoMeta));
    } else if (isInserting) {
      context.missing(_attachedInfoMeta);
    }
    if (data.containsKey('global_recv_msg_opt')) {
      context.handle(
          _globalRecvMsgOptMeta,
          globalRecvMsgOpt.isAcceptableOrUnknown(
              data['global_recv_msg_opt']!, _globalRecvMsgOptMeta));
    } else if (isInserting) {
      context.missing(_globalRecvMsgOptMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {userID};
  @override
  LocalUserData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return LocalUserData(
      userID: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}user_id'])!,
      nickname: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}nickname'])!,
      faceURL: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}face_url'])!,
      createTime: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}create_time'])!,
      appMangerLevel: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}app_manger_level'])!,
      ex: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}ex'])!,
      attachedInfo: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}attached_info'])!,
      globalRecvMsgOpt: attachedDatabase.typeMapping.read(
          DriftSqlType.int, data['${effectivePrefix}global_recv_msg_opt'])!,
    );
  }

  @override
  $LocalUserTable createAlias(String alias) {
    return $LocalUserTable(attachedDatabase, alias);
  }
}

class LocalUserData extends DataClass implements Insertable<LocalUserData> {
  final String userID;
  final String nickname;
  final String faceURL;
  final int createTime;
  final int appMangerLevel;
  final String ex;
  final String attachedInfo;
  final int globalRecvMsgOpt;
  const LocalUserData(
      {required this.userID,
      required this.nickname,
      required this.faceURL,
      required this.createTime,
      required this.appMangerLevel,
      required this.ex,
      required this.attachedInfo,
      required this.globalRecvMsgOpt});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['user_id'] = Variable<String>(userID);
    map['nickname'] = Variable<String>(nickname);
    map['face_url'] = Variable<String>(faceURL);
    map['create_time'] = Variable<int>(createTime);
    map['app_manger_level'] = Variable<int>(appMangerLevel);
    map['ex'] = Variable<String>(ex);
    map['attached_info'] = Variable<String>(attachedInfo);
    map['global_recv_msg_opt'] = Variable<int>(globalRecvMsgOpt);
    return map;
  }

  LocalUserCompanion toCompanion(bool nullToAbsent) {
    return LocalUserCompanion(
      userID: Value(userID),
      nickname: Value(nickname),
      faceURL: Value(faceURL),
      createTime: Value(createTime),
      appMangerLevel: Value(appMangerLevel),
      ex: Value(ex),
      attachedInfo: Value(attachedInfo),
      globalRecvMsgOpt: Value(globalRecvMsgOpt),
    );
  }

  factory LocalUserData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return LocalUserData(
      userID: serializer.fromJson<String>(json['userID']),
      nickname: serializer.fromJson<String>(json['nickname']),
      faceURL: serializer.fromJson<String>(json['faceURL']),
      createTime: serializer.fromJson<int>(json['createTime']),
      appMangerLevel: serializer.fromJson<int>(json['appMangerLevel']),
      ex: serializer.fromJson<String>(json['ex']),
      attachedInfo: serializer.fromJson<String>(json['attachedInfo']),
      globalRecvMsgOpt: serializer.fromJson<int>(json['globalRecvMsgOpt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'userID': serializer.toJson<String>(userID),
      'nickname': serializer.toJson<String>(nickname),
      'faceURL': serializer.toJson<String>(faceURL),
      'createTime': serializer.toJson<int>(createTime),
      'appMangerLevel': serializer.toJson<int>(appMangerLevel),
      'ex': serializer.toJson<String>(ex),
      'attachedInfo': serializer.toJson<String>(attachedInfo),
      'globalRecvMsgOpt': serializer.toJson<int>(globalRecvMsgOpt),
    };
  }

  LocalUserData copyWith(
          {String? userID,
          String? nickname,
          String? faceURL,
          int? createTime,
          int? appMangerLevel,
          String? ex,
          String? attachedInfo,
          int? globalRecvMsgOpt}) =>
      LocalUserData(
        userID: userID ?? this.userID,
        nickname: nickname ?? this.nickname,
        faceURL: faceURL ?? this.faceURL,
        createTime: createTime ?? this.createTime,
        appMangerLevel: appMangerLevel ?? this.appMangerLevel,
        ex: ex ?? this.ex,
        attachedInfo: attachedInfo ?? this.attachedInfo,
        globalRecvMsgOpt: globalRecvMsgOpt ?? this.globalRecvMsgOpt,
      );
  LocalUserData copyWithCompanion(LocalUserCompanion data) {
    return LocalUserData(
      userID: data.userID.present ? data.userID.value : this.userID,
      nickname: data.nickname.present ? data.nickname.value : this.nickname,
      faceURL: data.faceURL.present ? data.faceURL.value : this.faceURL,
      createTime:
          data.createTime.present ? data.createTime.value : this.createTime,
      appMangerLevel: data.appMangerLevel.present
          ? data.appMangerLevel.value
          : this.appMangerLevel,
      ex: data.ex.present ? data.ex.value : this.ex,
      attachedInfo: data.attachedInfo.present
          ? data.attachedInfo.value
          : this.attachedInfo,
      globalRecvMsgOpt: data.globalRecvMsgOpt.present
          ? data.globalRecvMsgOpt.value
          : this.globalRecvMsgOpt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('LocalUserData(')
          ..write('userID: $userID, ')
          ..write('nickname: $nickname, ')
          ..write('faceURL: $faceURL, ')
          ..write('createTime: $createTime, ')
          ..write('appMangerLevel: $appMangerLevel, ')
          ..write('ex: $ex, ')
          ..write('attachedInfo: $attachedInfo, ')
          ..write('globalRecvMsgOpt: $globalRecvMsgOpt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(userID, nickname, faceURL, createTime,
      appMangerLevel, ex, attachedInfo, globalRecvMsgOpt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is LocalUserData &&
          other.userID == this.userID &&
          other.nickname == this.nickname &&
          other.faceURL == this.faceURL &&
          other.createTime == this.createTime &&
          other.appMangerLevel == this.appMangerLevel &&
          other.ex == this.ex &&
          other.attachedInfo == this.attachedInfo &&
          other.globalRecvMsgOpt == this.globalRecvMsgOpt);
}

class LocalUserCompanion extends UpdateCompanion<LocalUserData> {
  final Value<String> userID;
  final Value<String> nickname;
  final Value<String> faceURL;
  final Value<int> createTime;
  final Value<int> appMangerLevel;
  final Value<String> ex;
  final Value<String> attachedInfo;
  final Value<int> globalRecvMsgOpt;
  final Value<int> rowid;
  const LocalUserCompanion({
    this.userID = const Value.absent(),
    this.nickname = const Value.absent(),
    this.faceURL = const Value.absent(),
    this.createTime = const Value.absent(),
    this.appMangerLevel = const Value.absent(),
    this.ex = const Value.absent(),
    this.attachedInfo = const Value.absent(),
    this.globalRecvMsgOpt = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  LocalUserCompanion.insert({
    required String userID,
    required String nickname,
    required String faceURL,
    required int createTime,
    required int appMangerLevel,
    required String ex,
    required String attachedInfo,
    required int globalRecvMsgOpt,
    this.rowid = const Value.absent(),
  })  : userID = Value(userID),
        nickname = Value(nickname),
        faceURL = Value(faceURL),
        createTime = Value(createTime),
        appMangerLevel = Value(appMangerLevel),
        ex = Value(ex),
        attachedInfo = Value(attachedInfo),
        globalRecvMsgOpt = Value(globalRecvMsgOpt);
  static Insertable<LocalUserData> custom({
    Expression<String>? userID,
    Expression<String>? nickname,
    Expression<String>? faceURL,
    Expression<int>? createTime,
    Expression<int>? appMangerLevel,
    Expression<String>? ex,
    Expression<String>? attachedInfo,
    Expression<int>? globalRecvMsgOpt,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (userID != null) 'user_id': userID,
      if (nickname != null) 'nickname': nickname,
      if (faceURL != null) 'face_url': faceURL,
      if (createTime != null) 'create_time': createTime,
      if (appMangerLevel != null) 'app_manger_level': appMangerLevel,
      if (ex != null) 'ex': ex,
      if (attachedInfo != null) 'attached_info': attachedInfo,
      if (globalRecvMsgOpt != null) 'global_recv_msg_opt': globalRecvMsgOpt,
      if (rowid != null) 'rowid': rowid,
    });
  }

  LocalUserCompanion copyWith(
      {Value<String>? userID,
      Value<String>? nickname,
      Value<String>? faceURL,
      Value<int>? createTime,
      Value<int>? appMangerLevel,
      Value<String>? ex,
      Value<String>? attachedInfo,
      Value<int>? globalRecvMsgOpt,
      Value<int>? rowid}) {
    return LocalUserCompanion(
      userID: userID ?? this.userID,
      nickname: nickname ?? this.nickname,
      faceURL: faceURL ?? this.faceURL,
      createTime: createTime ?? this.createTime,
      appMangerLevel: appMangerLevel ?? this.appMangerLevel,
      ex: ex ?? this.ex,
      attachedInfo: attachedInfo ?? this.attachedInfo,
      globalRecvMsgOpt: globalRecvMsgOpt ?? this.globalRecvMsgOpt,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (userID.present) {
      map['user_id'] = Variable<String>(userID.value);
    }
    if (nickname.present) {
      map['nickname'] = Variable<String>(nickname.value);
    }
    if (faceURL.present) {
      map['face_url'] = Variable<String>(faceURL.value);
    }
    if (createTime.present) {
      map['create_time'] = Variable<int>(createTime.value);
    }
    if (appMangerLevel.present) {
      map['app_manger_level'] = Variable<int>(appMangerLevel.value);
    }
    if (ex.present) {
      map['ex'] = Variable<String>(ex.value);
    }
    if (attachedInfo.present) {
      map['attached_info'] = Variable<String>(attachedInfo.value);
    }
    if (globalRecvMsgOpt.present) {
      map['global_recv_msg_opt'] = Variable<int>(globalRecvMsgOpt.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('LocalUserCompanion(')
          ..write('userID: $userID, ')
          ..write('nickname: $nickname, ')
          ..write('faceURL: $faceURL, ')
          ..write('createTime: $createTime, ')
          ..write('appMangerLevel: $appMangerLevel, ')
          ..write('ex: $ex, ')
          ..write('attachedInfo: $attachedInfo, ')
          ..write('globalRecvMsgOpt: $globalRecvMsgOpt, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $LocalBlackTable extends LocalBlack
    with TableInfo<$LocalBlackTable, LocalBlackData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $LocalBlackTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _ownerUserIDMeta =
      const VerificationMeta('ownerUserID');
  @override
  late final GeneratedColumn<String> ownerUserID = GeneratedColumn<String>(
      'owner_user_id', aliasedName, false,
      additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 64),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  static const VerificationMeta _blockUserIDMeta =
      const VerificationMeta('blockUserID');
  @override
  late final GeneratedColumn<String> blockUserID = GeneratedColumn<String>(
      'block_user_id', aliasedName, false,
      additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 64),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  static const VerificationMeta _nicknameMeta =
      const VerificationMeta('nickname');
  @override
  late final GeneratedColumn<String> nickname = GeneratedColumn<String>(
      'nickname', aliasedName, false,
      additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 255),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  static const VerificationMeta _faceURLMeta =
      const VerificationMeta('faceURL');
  @override
  late final GeneratedColumn<String> faceURL = GeneratedColumn<String>(
      'face_url', aliasedName, false,
      additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 255),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  static const VerificationMeta _createTimeMeta =
      const VerificationMeta('createTime');
  @override
  late final GeneratedColumn<int> createTime = GeneratedColumn<int>(
      'create_time', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _addSourceMeta =
      const VerificationMeta('addSource');
  @override
  late final GeneratedColumn<int> addSource = GeneratedColumn<int>(
      'add_source', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _operatorUserIDMeta =
      const VerificationMeta('operatorUserID');
  @override
  late final GeneratedColumn<String> operatorUserID = GeneratedColumn<String>(
      'operator_user_id', aliasedName, false,
      additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 64),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  static const VerificationMeta _exMeta = const VerificationMeta('ex');
  @override
  late final GeneratedColumn<String> ex = GeneratedColumn<String>(
      'ex', aliasedName, false,
      additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 1024),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  static const VerificationMeta _attachedInfoMeta =
      const VerificationMeta('attachedInfo');
  @override
  late final GeneratedColumn<String> attachedInfo = GeneratedColumn<String>(
      'attached_info', aliasedName, false,
      additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 1024),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [
        ownerUserID,
        blockUserID,
        nickname,
        faceURL,
        createTime,
        addSource,
        operatorUserID,
        ex,
        attachedInfo
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'local_black';
  @override
  VerificationContext validateIntegrity(Insertable<LocalBlackData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('owner_user_id')) {
      context.handle(
          _ownerUserIDMeta,
          ownerUserID.isAcceptableOrUnknown(
              data['owner_user_id']!, _ownerUserIDMeta));
    } else if (isInserting) {
      context.missing(_ownerUserIDMeta);
    }
    if (data.containsKey('block_user_id')) {
      context.handle(
          _blockUserIDMeta,
          blockUserID.isAcceptableOrUnknown(
              data['block_user_id']!, _blockUserIDMeta));
    } else if (isInserting) {
      context.missing(_blockUserIDMeta);
    }
    if (data.containsKey('nickname')) {
      context.handle(_nicknameMeta,
          nickname.isAcceptableOrUnknown(data['nickname']!, _nicknameMeta));
    } else if (isInserting) {
      context.missing(_nicknameMeta);
    }
    if (data.containsKey('face_url')) {
      context.handle(_faceURLMeta,
          faceURL.isAcceptableOrUnknown(data['face_url']!, _faceURLMeta));
    } else if (isInserting) {
      context.missing(_faceURLMeta);
    }
    if (data.containsKey('create_time')) {
      context.handle(
          _createTimeMeta,
          createTime.isAcceptableOrUnknown(
              data['create_time']!, _createTimeMeta));
    } else if (isInserting) {
      context.missing(_createTimeMeta);
    }
    if (data.containsKey('add_source')) {
      context.handle(_addSourceMeta,
          addSource.isAcceptableOrUnknown(data['add_source']!, _addSourceMeta));
    } else if (isInserting) {
      context.missing(_addSourceMeta);
    }
    if (data.containsKey('operator_user_id')) {
      context.handle(
          _operatorUserIDMeta,
          operatorUserID.isAcceptableOrUnknown(
              data['operator_user_id']!, _operatorUserIDMeta));
    } else if (isInserting) {
      context.missing(_operatorUserIDMeta);
    }
    if (data.containsKey('ex')) {
      context.handle(_exMeta, ex.isAcceptableOrUnknown(data['ex']!, _exMeta));
    } else if (isInserting) {
      context.missing(_exMeta);
    }
    if (data.containsKey('attached_info')) {
      context.handle(
          _attachedInfoMeta,
          attachedInfo.isAcceptableOrUnknown(
              data['attached_info']!, _attachedInfoMeta));
    } else if (isInserting) {
      context.missing(_attachedInfoMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {ownerUserID, blockUserID};
  @override
  LocalBlackData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return LocalBlackData(
      ownerUserID: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}owner_user_id'])!,
      blockUserID: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}block_user_id'])!,
      nickname: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}nickname'])!,
      faceURL: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}face_url'])!,
      createTime: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}create_time'])!,
      addSource: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}add_source'])!,
      operatorUserID: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}operator_user_id'])!,
      ex: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}ex'])!,
      attachedInfo: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}attached_info'])!,
    );
  }

  @override
  $LocalBlackTable createAlias(String alias) {
    return $LocalBlackTable(attachedDatabase, alias);
  }
}

class LocalBlackData extends DataClass implements Insertable<LocalBlackData> {
  final String ownerUserID;
  final String blockUserID;
  final String nickname;
  final String faceURL;
  final int createTime;
  final int addSource;
  final String operatorUserID;
  final String ex;
  final String attachedInfo;
  const LocalBlackData(
      {required this.ownerUserID,
      required this.blockUserID,
      required this.nickname,
      required this.faceURL,
      required this.createTime,
      required this.addSource,
      required this.operatorUserID,
      required this.ex,
      required this.attachedInfo});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['owner_user_id'] = Variable<String>(ownerUserID);
    map['block_user_id'] = Variable<String>(blockUserID);
    map['nickname'] = Variable<String>(nickname);
    map['face_url'] = Variable<String>(faceURL);
    map['create_time'] = Variable<int>(createTime);
    map['add_source'] = Variable<int>(addSource);
    map['operator_user_id'] = Variable<String>(operatorUserID);
    map['ex'] = Variable<String>(ex);
    map['attached_info'] = Variable<String>(attachedInfo);
    return map;
  }

  LocalBlackCompanion toCompanion(bool nullToAbsent) {
    return LocalBlackCompanion(
      ownerUserID: Value(ownerUserID),
      blockUserID: Value(blockUserID),
      nickname: Value(nickname),
      faceURL: Value(faceURL),
      createTime: Value(createTime),
      addSource: Value(addSource),
      operatorUserID: Value(operatorUserID),
      ex: Value(ex),
      attachedInfo: Value(attachedInfo),
    );
  }

  factory LocalBlackData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return LocalBlackData(
      ownerUserID: serializer.fromJson<String>(json['ownerUserID']),
      blockUserID: serializer.fromJson<String>(json['blockUserID']),
      nickname: serializer.fromJson<String>(json['nickname']),
      faceURL: serializer.fromJson<String>(json['faceURL']),
      createTime: serializer.fromJson<int>(json['createTime']),
      addSource: serializer.fromJson<int>(json['addSource']),
      operatorUserID: serializer.fromJson<String>(json['operatorUserID']),
      ex: serializer.fromJson<String>(json['ex']),
      attachedInfo: serializer.fromJson<String>(json['attachedInfo']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'ownerUserID': serializer.toJson<String>(ownerUserID),
      'blockUserID': serializer.toJson<String>(blockUserID),
      'nickname': serializer.toJson<String>(nickname),
      'faceURL': serializer.toJson<String>(faceURL),
      'createTime': serializer.toJson<int>(createTime),
      'addSource': serializer.toJson<int>(addSource),
      'operatorUserID': serializer.toJson<String>(operatorUserID),
      'ex': serializer.toJson<String>(ex),
      'attachedInfo': serializer.toJson<String>(attachedInfo),
    };
  }

  LocalBlackData copyWith(
          {String? ownerUserID,
          String? blockUserID,
          String? nickname,
          String? faceURL,
          int? createTime,
          int? addSource,
          String? operatorUserID,
          String? ex,
          String? attachedInfo}) =>
      LocalBlackData(
        ownerUserID: ownerUserID ?? this.ownerUserID,
        blockUserID: blockUserID ?? this.blockUserID,
        nickname: nickname ?? this.nickname,
        faceURL: faceURL ?? this.faceURL,
        createTime: createTime ?? this.createTime,
        addSource: addSource ?? this.addSource,
        operatorUserID: operatorUserID ?? this.operatorUserID,
        ex: ex ?? this.ex,
        attachedInfo: attachedInfo ?? this.attachedInfo,
      );
  LocalBlackData copyWithCompanion(LocalBlackCompanion data) {
    return LocalBlackData(
      ownerUserID:
          data.ownerUserID.present ? data.ownerUserID.value : this.ownerUserID,
      blockUserID:
          data.blockUserID.present ? data.blockUserID.value : this.blockUserID,
      nickname: data.nickname.present ? data.nickname.value : this.nickname,
      faceURL: data.faceURL.present ? data.faceURL.value : this.faceURL,
      createTime:
          data.createTime.present ? data.createTime.value : this.createTime,
      addSource: data.addSource.present ? data.addSource.value : this.addSource,
      operatorUserID: data.operatorUserID.present
          ? data.operatorUserID.value
          : this.operatorUserID,
      ex: data.ex.present ? data.ex.value : this.ex,
      attachedInfo: data.attachedInfo.present
          ? data.attachedInfo.value
          : this.attachedInfo,
    );
  }

  @override
  String toString() {
    return (StringBuffer('LocalBlackData(')
          ..write('ownerUserID: $ownerUserID, ')
          ..write('blockUserID: $blockUserID, ')
          ..write('nickname: $nickname, ')
          ..write('faceURL: $faceURL, ')
          ..write('createTime: $createTime, ')
          ..write('addSource: $addSource, ')
          ..write('operatorUserID: $operatorUserID, ')
          ..write('ex: $ex, ')
          ..write('attachedInfo: $attachedInfo')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(ownerUserID, blockUserID, nickname, faceURL,
      createTime, addSource, operatorUserID, ex, attachedInfo);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is LocalBlackData &&
          other.ownerUserID == this.ownerUserID &&
          other.blockUserID == this.blockUserID &&
          other.nickname == this.nickname &&
          other.faceURL == this.faceURL &&
          other.createTime == this.createTime &&
          other.addSource == this.addSource &&
          other.operatorUserID == this.operatorUserID &&
          other.ex == this.ex &&
          other.attachedInfo == this.attachedInfo);
}

class LocalBlackCompanion extends UpdateCompanion<LocalBlackData> {
  final Value<String> ownerUserID;
  final Value<String> blockUserID;
  final Value<String> nickname;
  final Value<String> faceURL;
  final Value<int> createTime;
  final Value<int> addSource;
  final Value<String> operatorUserID;
  final Value<String> ex;
  final Value<String> attachedInfo;
  final Value<int> rowid;
  const LocalBlackCompanion({
    this.ownerUserID = const Value.absent(),
    this.blockUserID = const Value.absent(),
    this.nickname = const Value.absent(),
    this.faceURL = const Value.absent(),
    this.createTime = const Value.absent(),
    this.addSource = const Value.absent(),
    this.operatorUserID = const Value.absent(),
    this.ex = const Value.absent(),
    this.attachedInfo = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  LocalBlackCompanion.insert({
    required String ownerUserID,
    required String blockUserID,
    required String nickname,
    required String faceURL,
    required int createTime,
    required int addSource,
    required String operatorUserID,
    required String ex,
    required String attachedInfo,
    this.rowid = const Value.absent(),
  })  : ownerUserID = Value(ownerUserID),
        blockUserID = Value(blockUserID),
        nickname = Value(nickname),
        faceURL = Value(faceURL),
        createTime = Value(createTime),
        addSource = Value(addSource),
        operatorUserID = Value(operatorUserID),
        ex = Value(ex),
        attachedInfo = Value(attachedInfo);
  static Insertable<LocalBlackData> custom({
    Expression<String>? ownerUserID,
    Expression<String>? blockUserID,
    Expression<String>? nickname,
    Expression<String>? faceURL,
    Expression<int>? createTime,
    Expression<int>? addSource,
    Expression<String>? operatorUserID,
    Expression<String>? ex,
    Expression<String>? attachedInfo,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (ownerUserID != null) 'owner_user_id': ownerUserID,
      if (blockUserID != null) 'block_user_id': blockUserID,
      if (nickname != null) 'nickname': nickname,
      if (faceURL != null) 'face_url': faceURL,
      if (createTime != null) 'create_time': createTime,
      if (addSource != null) 'add_source': addSource,
      if (operatorUserID != null) 'operator_user_id': operatorUserID,
      if (ex != null) 'ex': ex,
      if (attachedInfo != null) 'attached_info': attachedInfo,
      if (rowid != null) 'rowid': rowid,
    });
  }

  LocalBlackCompanion copyWith(
      {Value<String>? ownerUserID,
      Value<String>? blockUserID,
      Value<String>? nickname,
      Value<String>? faceURL,
      Value<int>? createTime,
      Value<int>? addSource,
      Value<String>? operatorUserID,
      Value<String>? ex,
      Value<String>? attachedInfo,
      Value<int>? rowid}) {
    return LocalBlackCompanion(
      ownerUserID: ownerUserID ?? this.ownerUserID,
      blockUserID: blockUserID ?? this.blockUserID,
      nickname: nickname ?? this.nickname,
      faceURL: faceURL ?? this.faceURL,
      createTime: createTime ?? this.createTime,
      addSource: addSource ?? this.addSource,
      operatorUserID: operatorUserID ?? this.operatorUserID,
      ex: ex ?? this.ex,
      attachedInfo: attachedInfo ?? this.attachedInfo,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (ownerUserID.present) {
      map['owner_user_id'] = Variable<String>(ownerUserID.value);
    }
    if (blockUserID.present) {
      map['block_user_id'] = Variable<String>(blockUserID.value);
    }
    if (nickname.present) {
      map['nickname'] = Variable<String>(nickname.value);
    }
    if (faceURL.present) {
      map['face_url'] = Variable<String>(faceURL.value);
    }
    if (createTime.present) {
      map['create_time'] = Variable<int>(createTime.value);
    }
    if (addSource.present) {
      map['add_source'] = Variable<int>(addSource.value);
    }
    if (operatorUserID.present) {
      map['operator_user_id'] = Variable<String>(operatorUserID.value);
    }
    if (ex.present) {
      map['ex'] = Variable<String>(ex.value);
    }
    if (attachedInfo.present) {
      map['attached_info'] = Variable<String>(attachedInfo.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('LocalBlackCompanion(')
          ..write('ownerUserID: $ownerUserID, ')
          ..write('blockUserID: $blockUserID, ')
          ..write('nickname: $nickname, ')
          ..write('faceURL: $faceURL, ')
          ..write('createTime: $createTime, ')
          ..write('addSource: $addSource, ')
          ..write('operatorUserID: $operatorUserID, ')
          ..write('ex: $ex, ')
          ..write('attachedInfo: $attachedInfo, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $LocalSeqDataTableTable extends LocalSeqDataTable
    with TableInfo<$LocalSeqDataTableTable, LocalSeqDataTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $LocalSeqDataTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _userIDMeta = const VerificationMeta('userID');
  @override
  late final GeneratedColumn<String> userID = GeneratedColumn<String>(
      'user_id', aliasedName, false,
      additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 64),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  static const VerificationMeta _seqMeta = const VerificationMeta('seq');
  @override
  late final GeneratedColumn<int> seq = GeneratedColumn<int>(
      'seq', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [userID, seq];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'local_seq_data_table';
  @override
  VerificationContext validateIntegrity(
      Insertable<LocalSeqDataTableData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('user_id')) {
      context.handle(_userIDMeta,
          userID.isAcceptableOrUnknown(data['user_id']!, _userIDMeta));
    } else if (isInserting) {
      context.missing(_userIDMeta);
    }
    if (data.containsKey('seq')) {
      context.handle(
          _seqMeta, seq.isAcceptableOrUnknown(data['seq']!, _seqMeta));
    } else if (isInserting) {
      context.missing(_seqMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {userID};
  @override
  LocalSeqDataTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return LocalSeqDataTableData(
      userID: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}user_id'])!,
      seq: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}seq'])!,
    );
  }

  @override
  $LocalSeqDataTableTable createAlias(String alias) {
    return $LocalSeqDataTableTable(attachedDatabase, alias);
  }
}

class LocalSeqDataTableData extends DataClass
    implements Insertable<LocalSeqDataTableData> {
  final String userID;
  final int seq;
  const LocalSeqDataTableData({required this.userID, required this.seq});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['user_id'] = Variable<String>(userID);
    map['seq'] = Variable<int>(seq);
    return map;
  }

  LocalSeqDataTableCompanion toCompanion(bool nullToAbsent) {
    return LocalSeqDataTableCompanion(
      userID: Value(userID),
      seq: Value(seq),
    );
  }

  factory LocalSeqDataTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return LocalSeqDataTableData(
      userID: serializer.fromJson<String>(json['userID']),
      seq: serializer.fromJson<int>(json['seq']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'userID': serializer.toJson<String>(userID),
      'seq': serializer.toJson<int>(seq),
    };
  }

  LocalSeqDataTableData copyWith({String? userID, int? seq}) =>
      LocalSeqDataTableData(
        userID: userID ?? this.userID,
        seq: seq ?? this.seq,
      );
  LocalSeqDataTableData copyWithCompanion(LocalSeqDataTableCompanion data) {
    return LocalSeqDataTableData(
      userID: data.userID.present ? data.userID.value : this.userID,
      seq: data.seq.present ? data.seq.value : this.seq,
    );
  }

  @override
  String toString() {
    return (StringBuffer('LocalSeqDataTableData(')
          ..write('userID: $userID, ')
          ..write('seq: $seq')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(userID, seq);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is LocalSeqDataTableData &&
          other.userID == this.userID &&
          other.seq == this.seq);
}

class LocalSeqDataTableCompanion
    extends UpdateCompanion<LocalSeqDataTableData> {
  final Value<String> userID;
  final Value<int> seq;
  final Value<int> rowid;
  const LocalSeqDataTableCompanion({
    this.userID = const Value.absent(),
    this.seq = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  LocalSeqDataTableCompanion.insert({
    required String userID,
    required int seq,
    this.rowid = const Value.absent(),
  })  : userID = Value(userID),
        seq = Value(seq);
  static Insertable<LocalSeqDataTableData> custom({
    Expression<String>? userID,
    Expression<int>? seq,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (userID != null) 'user_id': userID,
      if (seq != null) 'seq': seq,
      if (rowid != null) 'rowid': rowid,
    });
  }

  LocalSeqDataTableCompanion copyWith(
      {Value<String>? userID, Value<int>? seq, Value<int>? rowid}) {
    return LocalSeqDataTableCompanion(
      userID: userID ?? this.userID,
      seq: seq ?? this.seq,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (userID.present) {
      map['user_id'] = Variable<String>(userID.value);
    }
    if (seq.present) {
      map['seq'] = Variable<int>(seq.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('LocalSeqDataTableCompanion(')
          ..write('userID: $userID, ')
          ..write('seq: $seq, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $LocalSeqTable extends LocalSeq
    with TableInfo<$LocalSeqTable, LocalSeqData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $LocalSeqTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, false,
      additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 64),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  static const VerificationMeta _minSeqMeta = const VerificationMeta('minSeq');
  @override
  late final GeneratedColumn<int> minSeq = GeneratedColumn<int>(
      'min_seq', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [id, minSeq];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'local_seq';
  @override
  VerificationContext validateIntegrity(Insertable<LocalSeqData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('min_seq')) {
      context.handle(_minSeqMeta,
          minSeq.isAcceptableOrUnknown(data['min_seq']!, _minSeqMeta));
    } else if (isInserting) {
      context.missing(_minSeqMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  LocalSeqData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return LocalSeqData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      minSeq: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}min_seq'])!,
    );
  }

  @override
  $LocalSeqTable createAlias(String alias) {
    return $LocalSeqTable(attachedDatabase, alias);
  }
}

class LocalSeqData extends DataClass implements Insertable<LocalSeqData> {
  final String id;
  final int minSeq;
  const LocalSeqData({required this.id, required this.minSeq});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['min_seq'] = Variable<int>(minSeq);
    return map;
  }

  LocalSeqCompanion toCompanion(bool nullToAbsent) {
    return LocalSeqCompanion(
      id: Value(id),
      minSeq: Value(minSeq),
    );
  }

  factory LocalSeqData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return LocalSeqData(
      id: serializer.fromJson<String>(json['id']),
      minSeq: serializer.fromJson<int>(json['minSeq']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'minSeq': serializer.toJson<int>(minSeq),
    };
  }

  LocalSeqData copyWith({String? id, int? minSeq}) => LocalSeqData(
        id: id ?? this.id,
        minSeq: minSeq ?? this.minSeq,
      );
  LocalSeqData copyWithCompanion(LocalSeqCompanion data) {
    return LocalSeqData(
      id: data.id.present ? data.id.value : this.id,
      minSeq: data.minSeq.present ? data.minSeq.value : this.minSeq,
    );
  }

  @override
  String toString() {
    return (StringBuffer('LocalSeqData(')
          ..write('id: $id, ')
          ..write('minSeq: $minSeq')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, minSeq);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is LocalSeqData &&
          other.id == this.id &&
          other.minSeq == this.minSeq);
}

class LocalSeqCompanion extends UpdateCompanion<LocalSeqData> {
  final Value<String> id;
  final Value<int> minSeq;
  final Value<int> rowid;
  const LocalSeqCompanion({
    this.id = const Value.absent(),
    this.minSeq = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  LocalSeqCompanion.insert({
    required String id,
    required int minSeq,
    this.rowid = const Value.absent(),
  })  : id = Value(id),
        minSeq = Value(minSeq);
  static Insertable<LocalSeqData> custom({
    Expression<String>? id,
    Expression<int>? minSeq,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (minSeq != null) 'min_seq': minSeq,
      if (rowid != null) 'rowid': rowid,
    });
  }

  LocalSeqCompanion copyWith(
      {Value<String>? id, Value<int>? minSeq, Value<int>? rowid}) {
    return LocalSeqCompanion(
      id: id ?? this.id,
      minSeq: minSeq ?? this.minSeq,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (minSeq.present) {
      map['min_seq'] = Variable<int>(minSeq.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('LocalSeqCompanion(')
          ..write('id: $id, ')
          ..write('minSeq: $minSeq, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $LocalChatLogTable extends LocalChatLog
    with TableInfo<$LocalChatLogTable, LocalChatLogData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $LocalChatLogTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _clientMsgIDMeta =
      const VerificationMeta('clientMsgID');
  @override
  late final GeneratedColumn<String> clientMsgID = GeneratedColumn<String>(
      'client_msg_id', aliasedName, false,
      additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 64),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  static const VerificationMeta _serverMsgIDMeta =
      const VerificationMeta('serverMsgID');
  @override
  late final GeneratedColumn<String> serverMsgID = GeneratedColumn<String>(
      'server_msg_id', aliasedName, false,
      additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 64),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  static const VerificationMeta _sendIDMeta = const VerificationMeta('sendID');
  @override
  late final GeneratedColumn<String> sendID = GeneratedColumn<String>(
      'send_id', aliasedName, false,
      additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 64),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  static const VerificationMeta _recvIDMeta = const VerificationMeta('recvID');
  @override
  late final GeneratedColumn<String> recvID = GeneratedColumn<String>(
      'recv_id', aliasedName, false,
      additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 64),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  static const VerificationMeta _senderPlatformIDMeta =
      const VerificationMeta('senderPlatformID');
  @override
  late final GeneratedColumn<int> senderPlatformID = GeneratedColumn<int>(
      'sender_platform_id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _senderNicknameMeta =
      const VerificationMeta('senderNickname');
  @override
  late final GeneratedColumn<String> senderNickname = GeneratedColumn<String>(
      'sender_nickname', aliasedName, false,
      additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 255),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  static const VerificationMeta _senderFaceURLMeta =
      const VerificationMeta('senderFaceURL');
  @override
  late final GeneratedColumn<String> senderFaceURL = GeneratedColumn<String>(
      'sender_face_url', aliasedName, false,
      additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 255),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  static const VerificationMeta _sessionTypeMeta =
      const VerificationMeta('sessionType');
  @override
  late final GeneratedColumn<int> sessionType = GeneratedColumn<int>(
      'session_type', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _msgFromMeta =
      const VerificationMeta('msgFrom');
  @override
  late final GeneratedColumn<int> msgFrom = GeneratedColumn<int>(
      'msg_from', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _contentTypeMeta =
      const VerificationMeta('contentType');
  @override
  late final GeneratedColumn<int> contentType = GeneratedColumn<int>(
      'content_type', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _contentMeta =
      const VerificationMeta('content');
  @override
  late final GeneratedColumn<String> content = GeneratedColumn<String>(
      'content', aliasedName, false,
      additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 1000),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  static const VerificationMeta _isReadMeta = const VerificationMeta('isRead');
  @override
  late final GeneratedColumn<bool> isRead = GeneratedColumn<bool>(
      'is_read', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("is_read" IN (0, 1))'));
  static const VerificationMeta _statusMeta = const VerificationMeta('status');
  @override
  late final GeneratedColumn<int> status = GeneratedColumn<int>(
      'status', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _seqMeta = const VerificationMeta('seq');
  @override
  late final GeneratedColumn<int> seq = GeneratedColumn<int>(
      'seq', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultValue: const Constant(0));
  static const VerificationMeta _sendTimeMeta =
      const VerificationMeta('sendTime');
  @override
  late final GeneratedColumn<int> sendTime = GeneratedColumn<int>(
      'send_time', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _createTimeMeta =
      const VerificationMeta('createTime');
  @override
  late final GeneratedColumn<int> createTime = GeneratedColumn<int>(
      'create_time', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _attachedInfoMeta =
      const VerificationMeta('attachedInfo');
  @override
  late final GeneratedColumn<String> attachedInfo = GeneratedColumn<String>(
      'attached_info', aliasedName, false,
      additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 1024),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  static const VerificationMeta _exMeta = const VerificationMeta('ex');
  @override
  late final GeneratedColumn<String> ex = GeneratedColumn<String>(
      'ex', aliasedName, false,
      additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 1024),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  static const VerificationMeta _localExMeta =
      const VerificationMeta('localEx');
  @override
  late final GeneratedColumn<String> localEx = GeneratedColumn<String>(
      'local_ex', aliasedName, false,
      additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 1024),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  static const VerificationMeta _isReactMeta =
      const VerificationMeta('isReact');
  @override
  late final GeneratedColumn<bool> isReact = GeneratedColumn<bool>(
      'is_react', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("is_react" IN (0, 1))'));
  static const VerificationMeta _isExternalExtensionsMeta =
      const VerificationMeta('isExternalExtensions');
  @override
  late final GeneratedColumn<bool> isExternalExtensions = GeneratedColumn<bool>(
      'is_external_extensions', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: true,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("is_external_extensions" IN (0, 1))'));
  static const VerificationMeta _msgFirstModifyTimeMeta =
      const VerificationMeta('msgFirstModifyTime');
  @override
  late final GeneratedColumn<int> msgFirstModifyTime = GeneratedColumn<int>(
      'msg_first_modify_time', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [
        clientMsgID,
        serverMsgID,
        sendID,
        recvID,
        senderPlatformID,
        senderNickname,
        senderFaceURL,
        sessionType,
        msgFrom,
        contentType,
        content,
        isRead,
        status,
        seq,
        sendTime,
        createTime,
        attachedInfo,
        ex,
        localEx,
        isReact,
        isExternalExtensions,
        msgFirstModifyTime
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'local_chat_log';
  @override
  VerificationContext validateIntegrity(Insertable<LocalChatLogData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('client_msg_id')) {
      context.handle(
          _clientMsgIDMeta,
          clientMsgID.isAcceptableOrUnknown(
              data['client_msg_id']!, _clientMsgIDMeta));
    } else if (isInserting) {
      context.missing(_clientMsgIDMeta);
    }
    if (data.containsKey('server_msg_id')) {
      context.handle(
          _serverMsgIDMeta,
          serverMsgID.isAcceptableOrUnknown(
              data['server_msg_id']!, _serverMsgIDMeta));
    } else if (isInserting) {
      context.missing(_serverMsgIDMeta);
    }
    if (data.containsKey('send_id')) {
      context.handle(_sendIDMeta,
          sendID.isAcceptableOrUnknown(data['send_id']!, _sendIDMeta));
    } else if (isInserting) {
      context.missing(_sendIDMeta);
    }
    if (data.containsKey('recv_id')) {
      context.handle(_recvIDMeta,
          recvID.isAcceptableOrUnknown(data['recv_id']!, _recvIDMeta));
    } else if (isInserting) {
      context.missing(_recvIDMeta);
    }
    if (data.containsKey('sender_platform_id')) {
      context.handle(
          _senderPlatformIDMeta,
          senderPlatformID.isAcceptableOrUnknown(
              data['sender_platform_id']!, _senderPlatformIDMeta));
    } else if (isInserting) {
      context.missing(_senderPlatformIDMeta);
    }
    if (data.containsKey('sender_nickname')) {
      context.handle(
          _senderNicknameMeta,
          senderNickname.isAcceptableOrUnknown(
              data['sender_nickname']!, _senderNicknameMeta));
    } else if (isInserting) {
      context.missing(_senderNicknameMeta);
    }
    if (data.containsKey('sender_face_url')) {
      context.handle(
          _senderFaceURLMeta,
          senderFaceURL.isAcceptableOrUnknown(
              data['sender_face_url']!, _senderFaceURLMeta));
    } else if (isInserting) {
      context.missing(_senderFaceURLMeta);
    }
    if (data.containsKey('session_type')) {
      context.handle(
          _sessionTypeMeta,
          sessionType.isAcceptableOrUnknown(
              data['session_type']!, _sessionTypeMeta));
    } else if (isInserting) {
      context.missing(_sessionTypeMeta);
    }
    if (data.containsKey('msg_from')) {
      context.handle(_msgFromMeta,
          msgFrom.isAcceptableOrUnknown(data['msg_from']!, _msgFromMeta));
    } else if (isInserting) {
      context.missing(_msgFromMeta);
    }
    if (data.containsKey('content_type')) {
      context.handle(
          _contentTypeMeta,
          contentType.isAcceptableOrUnknown(
              data['content_type']!, _contentTypeMeta));
    } else if (isInserting) {
      context.missing(_contentTypeMeta);
    }
    if (data.containsKey('content')) {
      context.handle(_contentMeta,
          content.isAcceptableOrUnknown(data['content']!, _contentMeta));
    } else if (isInserting) {
      context.missing(_contentMeta);
    }
    if (data.containsKey('is_read')) {
      context.handle(_isReadMeta,
          isRead.isAcceptableOrUnknown(data['is_read']!, _isReadMeta));
    } else if (isInserting) {
      context.missing(_isReadMeta);
    }
    if (data.containsKey('status')) {
      context.handle(_statusMeta,
          status.isAcceptableOrUnknown(data['status']!, _statusMeta));
    } else if (isInserting) {
      context.missing(_statusMeta);
    }
    if (data.containsKey('seq')) {
      context.handle(
          _seqMeta, seq.isAcceptableOrUnknown(data['seq']!, _seqMeta));
    }
    if (data.containsKey('send_time')) {
      context.handle(_sendTimeMeta,
          sendTime.isAcceptableOrUnknown(data['send_time']!, _sendTimeMeta));
    } else if (isInserting) {
      context.missing(_sendTimeMeta);
    }
    if (data.containsKey('create_time')) {
      context.handle(
          _createTimeMeta,
          createTime.isAcceptableOrUnknown(
              data['create_time']!, _createTimeMeta));
    } else if (isInserting) {
      context.missing(_createTimeMeta);
    }
    if (data.containsKey('attached_info')) {
      context.handle(
          _attachedInfoMeta,
          attachedInfo.isAcceptableOrUnknown(
              data['attached_info']!, _attachedInfoMeta));
    } else if (isInserting) {
      context.missing(_attachedInfoMeta);
    }
    if (data.containsKey('ex')) {
      context.handle(_exMeta, ex.isAcceptableOrUnknown(data['ex']!, _exMeta));
    } else if (isInserting) {
      context.missing(_exMeta);
    }
    if (data.containsKey('local_ex')) {
      context.handle(_localExMeta,
          localEx.isAcceptableOrUnknown(data['local_ex']!, _localExMeta));
    } else if (isInserting) {
      context.missing(_localExMeta);
    }
    if (data.containsKey('is_react')) {
      context.handle(_isReactMeta,
          isReact.isAcceptableOrUnknown(data['is_react']!, _isReactMeta));
    } else if (isInserting) {
      context.missing(_isReactMeta);
    }
    if (data.containsKey('is_external_extensions')) {
      context.handle(
          _isExternalExtensionsMeta,
          isExternalExtensions.isAcceptableOrUnknown(
              data['is_external_extensions']!, _isExternalExtensionsMeta));
    } else if (isInserting) {
      context.missing(_isExternalExtensionsMeta);
    }
    if (data.containsKey('msg_first_modify_time')) {
      context.handle(
          _msgFirstModifyTimeMeta,
          msgFirstModifyTime.isAcceptableOrUnknown(
              data['msg_first_modify_time']!, _msgFirstModifyTimeMeta));
    } else if (isInserting) {
      context.missing(_msgFirstModifyTimeMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {clientMsgID};
  @override
  LocalChatLogData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return LocalChatLogData(
      clientMsgID: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}client_msg_id'])!,
      serverMsgID: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}server_msg_id'])!,
      sendID: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}send_id'])!,
      recvID: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}recv_id'])!,
      senderPlatformID: attachedDatabase.typeMapping.read(
          DriftSqlType.int, data['${effectivePrefix}sender_platform_id'])!,
      senderNickname: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}sender_nickname'])!,
      senderFaceURL: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}sender_face_url'])!,
      sessionType: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}session_type'])!,
      msgFrom: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}msg_from'])!,
      contentType: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}content_type'])!,
      content: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}content'])!,
      isRead: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_read'])!,
      status: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}status'])!,
      seq: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}seq'])!,
      sendTime: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}send_time'])!,
      createTime: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}create_time'])!,
      attachedInfo: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}attached_info'])!,
      ex: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}ex'])!,
      localEx: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}local_ex'])!,
      isReact: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_react'])!,
      isExternalExtensions: attachedDatabase.typeMapping.read(
          DriftSqlType.bool, data['${effectivePrefix}is_external_extensions'])!,
      msgFirstModifyTime: attachedDatabase.typeMapping.read(
          DriftSqlType.int, data['${effectivePrefix}msg_first_modify_time'])!,
    );
  }

  @override
  $LocalChatLogTable createAlias(String alias) {
    return $LocalChatLogTable(attachedDatabase, alias);
  }
}

class LocalChatLogData extends DataClass
    implements Insertable<LocalChatLogData> {
  final String clientMsgID;
  final String serverMsgID;
  final String sendID;
  final String recvID;
  final int senderPlatformID;
  final String senderNickname;
  final String senderFaceURL;
  final int sessionType;
  final int msgFrom;
  final int contentType;
  final String content;
  final bool isRead;
  final int status;
  final int seq;
  final int sendTime;
  final int createTime;
  final String attachedInfo;
  final String ex;
  final String localEx;
  final bool isReact;
  final bool isExternalExtensions;
  final int msgFirstModifyTime;
  const LocalChatLogData(
      {required this.clientMsgID,
      required this.serverMsgID,
      required this.sendID,
      required this.recvID,
      required this.senderPlatformID,
      required this.senderNickname,
      required this.senderFaceURL,
      required this.sessionType,
      required this.msgFrom,
      required this.contentType,
      required this.content,
      required this.isRead,
      required this.status,
      required this.seq,
      required this.sendTime,
      required this.createTime,
      required this.attachedInfo,
      required this.ex,
      required this.localEx,
      required this.isReact,
      required this.isExternalExtensions,
      required this.msgFirstModifyTime});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['client_msg_id'] = Variable<String>(clientMsgID);
    map['server_msg_id'] = Variable<String>(serverMsgID);
    map['send_id'] = Variable<String>(sendID);
    map['recv_id'] = Variable<String>(recvID);
    map['sender_platform_id'] = Variable<int>(senderPlatformID);
    map['sender_nickname'] = Variable<String>(senderNickname);
    map['sender_face_url'] = Variable<String>(senderFaceURL);
    map['session_type'] = Variable<int>(sessionType);
    map['msg_from'] = Variable<int>(msgFrom);
    map['content_type'] = Variable<int>(contentType);
    map['content'] = Variable<String>(content);
    map['is_read'] = Variable<bool>(isRead);
    map['status'] = Variable<int>(status);
    map['seq'] = Variable<int>(seq);
    map['send_time'] = Variable<int>(sendTime);
    map['create_time'] = Variable<int>(createTime);
    map['attached_info'] = Variable<String>(attachedInfo);
    map['ex'] = Variable<String>(ex);
    map['local_ex'] = Variable<String>(localEx);
    map['is_react'] = Variable<bool>(isReact);
    map['is_external_extensions'] = Variable<bool>(isExternalExtensions);
    map['msg_first_modify_time'] = Variable<int>(msgFirstModifyTime);
    return map;
  }

  LocalChatLogCompanion toCompanion(bool nullToAbsent) {
    return LocalChatLogCompanion(
      clientMsgID: Value(clientMsgID),
      serverMsgID: Value(serverMsgID),
      sendID: Value(sendID),
      recvID: Value(recvID),
      senderPlatformID: Value(senderPlatformID),
      senderNickname: Value(senderNickname),
      senderFaceURL: Value(senderFaceURL),
      sessionType: Value(sessionType),
      msgFrom: Value(msgFrom),
      contentType: Value(contentType),
      content: Value(content),
      isRead: Value(isRead),
      status: Value(status),
      seq: Value(seq),
      sendTime: Value(sendTime),
      createTime: Value(createTime),
      attachedInfo: Value(attachedInfo),
      ex: Value(ex),
      localEx: Value(localEx),
      isReact: Value(isReact),
      isExternalExtensions: Value(isExternalExtensions),
      msgFirstModifyTime: Value(msgFirstModifyTime),
    );
  }

  factory LocalChatLogData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return LocalChatLogData(
      clientMsgID: serializer.fromJson<String>(json['clientMsgID']),
      serverMsgID: serializer.fromJson<String>(json['serverMsgID']),
      sendID: serializer.fromJson<String>(json['sendID']),
      recvID: serializer.fromJson<String>(json['recvID']),
      senderPlatformID: serializer.fromJson<int>(json['senderPlatformID']),
      senderNickname: serializer.fromJson<String>(json['senderNickname']),
      senderFaceURL: serializer.fromJson<String>(json['senderFaceURL']),
      sessionType: serializer.fromJson<int>(json['sessionType']),
      msgFrom: serializer.fromJson<int>(json['msgFrom']),
      contentType: serializer.fromJson<int>(json['contentType']),
      content: serializer.fromJson<String>(json['content']),
      isRead: serializer.fromJson<bool>(json['isRead']),
      status: serializer.fromJson<int>(json['status']),
      seq: serializer.fromJson<int>(json['seq']),
      sendTime: serializer.fromJson<int>(json['sendTime']),
      createTime: serializer.fromJson<int>(json['createTime']),
      attachedInfo: serializer.fromJson<String>(json['attachedInfo']),
      ex: serializer.fromJson<String>(json['ex']),
      localEx: serializer.fromJson<String>(json['localEx']),
      isReact: serializer.fromJson<bool>(json['isReact']),
      isExternalExtensions:
          serializer.fromJson<bool>(json['isExternalExtensions']),
      msgFirstModifyTime: serializer.fromJson<int>(json['msgFirstModifyTime']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'clientMsgID': serializer.toJson<String>(clientMsgID),
      'serverMsgID': serializer.toJson<String>(serverMsgID),
      'sendID': serializer.toJson<String>(sendID),
      'recvID': serializer.toJson<String>(recvID),
      'senderPlatformID': serializer.toJson<int>(senderPlatformID),
      'senderNickname': serializer.toJson<String>(senderNickname),
      'senderFaceURL': serializer.toJson<String>(senderFaceURL),
      'sessionType': serializer.toJson<int>(sessionType),
      'msgFrom': serializer.toJson<int>(msgFrom),
      'contentType': serializer.toJson<int>(contentType),
      'content': serializer.toJson<String>(content),
      'isRead': serializer.toJson<bool>(isRead),
      'status': serializer.toJson<int>(status),
      'seq': serializer.toJson<int>(seq),
      'sendTime': serializer.toJson<int>(sendTime),
      'createTime': serializer.toJson<int>(createTime),
      'attachedInfo': serializer.toJson<String>(attachedInfo),
      'ex': serializer.toJson<String>(ex),
      'localEx': serializer.toJson<String>(localEx),
      'isReact': serializer.toJson<bool>(isReact),
      'isExternalExtensions': serializer.toJson<bool>(isExternalExtensions),
      'msgFirstModifyTime': serializer.toJson<int>(msgFirstModifyTime),
    };
  }

  LocalChatLogData copyWith(
          {String? clientMsgID,
          String? serverMsgID,
          String? sendID,
          String? recvID,
          int? senderPlatformID,
          String? senderNickname,
          String? senderFaceURL,
          int? sessionType,
          int? msgFrom,
          int? contentType,
          String? content,
          bool? isRead,
          int? status,
          int? seq,
          int? sendTime,
          int? createTime,
          String? attachedInfo,
          String? ex,
          String? localEx,
          bool? isReact,
          bool? isExternalExtensions,
          int? msgFirstModifyTime}) =>
      LocalChatLogData(
        clientMsgID: clientMsgID ?? this.clientMsgID,
        serverMsgID: serverMsgID ?? this.serverMsgID,
        sendID: sendID ?? this.sendID,
        recvID: recvID ?? this.recvID,
        senderPlatformID: senderPlatformID ?? this.senderPlatformID,
        senderNickname: senderNickname ?? this.senderNickname,
        senderFaceURL: senderFaceURL ?? this.senderFaceURL,
        sessionType: sessionType ?? this.sessionType,
        msgFrom: msgFrom ?? this.msgFrom,
        contentType: contentType ?? this.contentType,
        content: content ?? this.content,
        isRead: isRead ?? this.isRead,
        status: status ?? this.status,
        seq: seq ?? this.seq,
        sendTime: sendTime ?? this.sendTime,
        createTime: createTime ?? this.createTime,
        attachedInfo: attachedInfo ?? this.attachedInfo,
        ex: ex ?? this.ex,
        localEx: localEx ?? this.localEx,
        isReact: isReact ?? this.isReact,
        isExternalExtensions: isExternalExtensions ?? this.isExternalExtensions,
        msgFirstModifyTime: msgFirstModifyTime ?? this.msgFirstModifyTime,
      );
  LocalChatLogData copyWithCompanion(LocalChatLogCompanion data) {
    return LocalChatLogData(
      clientMsgID:
          data.clientMsgID.present ? data.clientMsgID.value : this.clientMsgID,
      serverMsgID:
          data.serverMsgID.present ? data.serverMsgID.value : this.serverMsgID,
      sendID: data.sendID.present ? data.sendID.value : this.sendID,
      recvID: data.recvID.present ? data.recvID.value : this.recvID,
      senderPlatformID: data.senderPlatformID.present
          ? data.senderPlatformID.value
          : this.senderPlatformID,
      senderNickname: data.senderNickname.present
          ? data.senderNickname.value
          : this.senderNickname,
      senderFaceURL: data.senderFaceURL.present
          ? data.senderFaceURL.value
          : this.senderFaceURL,
      sessionType:
          data.sessionType.present ? data.sessionType.value : this.sessionType,
      msgFrom: data.msgFrom.present ? data.msgFrom.value : this.msgFrom,
      contentType:
          data.contentType.present ? data.contentType.value : this.contentType,
      content: data.content.present ? data.content.value : this.content,
      isRead: data.isRead.present ? data.isRead.value : this.isRead,
      status: data.status.present ? data.status.value : this.status,
      seq: data.seq.present ? data.seq.value : this.seq,
      sendTime: data.sendTime.present ? data.sendTime.value : this.sendTime,
      createTime:
          data.createTime.present ? data.createTime.value : this.createTime,
      attachedInfo: data.attachedInfo.present
          ? data.attachedInfo.value
          : this.attachedInfo,
      ex: data.ex.present ? data.ex.value : this.ex,
      localEx: data.localEx.present ? data.localEx.value : this.localEx,
      isReact: data.isReact.present ? data.isReact.value : this.isReact,
      isExternalExtensions: data.isExternalExtensions.present
          ? data.isExternalExtensions.value
          : this.isExternalExtensions,
      msgFirstModifyTime: data.msgFirstModifyTime.present
          ? data.msgFirstModifyTime.value
          : this.msgFirstModifyTime,
    );
  }

  @override
  String toString() {
    return (StringBuffer('LocalChatLogData(')
          ..write('clientMsgID: $clientMsgID, ')
          ..write('serverMsgID: $serverMsgID, ')
          ..write('sendID: $sendID, ')
          ..write('recvID: $recvID, ')
          ..write('senderPlatformID: $senderPlatformID, ')
          ..write('senderNickname: $senderNickname, ')
          ..write('senderFaceURL: $senderFaceURL, ')
          ..write('sessionType: $sessionType, ')
          ..write('msgFrom: $msgFrom, ')
          ..write('contentType: $contentType, ')
          ..write('content: $content, ')
          ..write('isRead: $isRead, ')
          ..write('status: $status, ')
          ..write('seq: $seq, ')
          ..write('sendTime: $sendTime, ')
          ..write('createTime: $createTime, ')
          ..write('attachedInfo: $attachedInfo, ')
          ..write('ex: $ex, ')
          ..write('localEx: $localEx, ')
          ..write('isReact: $isReact, ')
          ..write('isExternalExtensions: $isExternalExtensions, ')
          ..write('msgFirstModifyTime: $msgFirstModifyTime')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hashAll([
        clientMsgID,
        serverMsgID,
        sendID,
        recvID,
        senderPlatformID,
        senderNickname,
        senderFaceURL,
        sessionType,
        msgFrom,
        contentType,
        content,
        isRead,
        status,
        seq,
        sendTime,
        createTime,
        attachedInfo,
        ex,
        localEx,
        isReact,
        isExternalExtensions,
        msgFirstModifyTime
      ]);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is LocalChatLogData &&
          other.clientMsgID == this.clientMsgID &&
          other.serverMsgID == this.serverMsgID &&
          other.sendID == this.sendID &&
          other.recvID == this.recvID &&
          other.senderPlatformID == this.senderPlatformID &&
          other.senderNickname == this.senderNickname &&
          other.senderFaceURL == this.senderFaceURL &&
          other.sessionType == this.sessionType &&
          other.msgFrom == this.msgFrom &&
          other.contentType == this.contentType &&
          other.content == this.content &&
          other.isRead == this.isRead &&
          other.status == this.status &&
          other.seq == this.seq &&
          other.sendTime == this.sendTime &&
          other.createTime == this.createTime &&
          other.attachedInfo == this.attachedInfo &&
          other.ex == this.ex &&
          other.localEx == this.localEx &&
          other.isReact == this.isReact &&
          other.isExternalExtensions == this.isExternalExtensions &&
          other.msgFirstModifyTime == this.msgFirstModifyTime);
}

class LocalChatLogCompanion extends UpdateCompanion<LocalChatLogData> {
  final Value<String> clientMsgID;
  final Value<String> serverMsgID;
  final Value<String> sendID;
  final Value<String> recvID;
  final Value<int> senderPlatformID;
  final Value<String> senderNickname;
  final Value<String> senderFaceURL;
  final Value<int> sessionType;
  final Value<int> msgFrom;
  final Value<int> contentType;
  final Value<String> content;
  final Value<bool> isRead;
  final Value<int> status;
  final Value<int> seq;
  final Value<int> sendTime;
  final Value<int> createTime;
  final Value<String> attachedInfo;
  final Value<String> ex;
  final Value<String> localEx;
  final Value<bool> isReact;
  final Value<bool> isExternalExtensions;
  final Value<int> msgFirstModifyTime;
  final Value<int> rowid;
  const LocalChatLogCompanion({
    this.clientMsgID = const Value.absent(),
    this.serverMsgID = const Value.absent(),
    this.sendID = const Value.absent(),
    this.recvID = const Value.absent(),
    this.senderPlatformID = const Value.absent(),
    this.senderNickname = const Value.absent(),
    this.senderFaceURL = const Value.absent(),
    this.sessionType = const Value.absent(),
    this.msgFrom = const Value.absent(),
    this.contentType = const Value.absent(),
    this.content = const Value.absent(),
    this.isRead = const Value.absent(),
    this.status = const Value.absent(),
    this.seq = const Value.absent(),
    this.sendTime = const Value.absent(),
    this.createTime = const Value.absent(),
    this.attachedInfo = const Value.absent(),
    this.ex = const Value.absent(),
    this.localEx = const Value.absent(),
    this.isReact = const Value.absent(),
    this.isExternalExtensions = const Value.absent(),
    this.msgFirstModifyTime = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  LocalChatLogCompanion.insert({
    required String clientMsgID,
    required String serverMsgID,
    required String sendID,
    required String recvID,
    required int senderPlatformID,
    required String senderNickname,
    required String senderFaceURL,
    required int sessionType,
    required int msgFrom,
    required int contentType,
    required String content,
    required bool isRead,
    required int status,
    this.seq = const Value.absent(),
    required int sendTime,
    required int createTime,
    required String attachedInfo,
    required String ex,
    required String localEx,
    required bool isReact,
    required bool isExternalExtensions,
    required int msgFirstModifyTime,
    this.rowid = const Value.absent(),
  })  : clientMsgID = Value(clientMsgID),
        serverMsgID = Value(serverMsgID),
        sendID = Value(sendID),
        recvID = Value(recvID),
        senderPlatformID = Value(senderPlatformID),
        senderNickname = Value(senderNickname),
        senderFaceURL = Value(senderFaceURL),
        sessionType = Value(sessionType),
        msgFrom = Value(msgFrom),
        contentType = Value(contentType),
        content = Value(content),
        isRead = Value(isRead),
        status = Value(status),
        sendTime = Value(sendTime),
        createTime = Value(createTime),
        attachedInfo = Value(attachedInfo),
        ex = Value(ex),
        localEx = Value(localEx),
        isReact = Value(isReact),
        isExternalExtensions = Value(isExternalExtensions),
        msgFirstModifyTime = Value(msgFirstModifyTime);
  static Insertable<LocalChatLogData> custom({
    Expression<String>? clientMsgID,
    Expression<String>? serverMsgID,
    Expression<String>? sendID,
    Expression<String>? recvID,
    Expression<int>? senderPlatformID,
    Expression<String>? senderNickname,
    Expression<String>? senderFaceURL,
    Expression<int>? sessionType,
    Expression<int>? msgFrom,
    Expression<int>? contentType,
    Expression<String>? content,
    Expression<bool>? isRead,
    Expression<int>? status,
    Expression<int>? seq,
    Expression<int>? sendTime,
    Expression<int>? createTime,
    Expression<String>? attachedInfo,
    Expression<String>? ex,
    Expression<String>? localEx,
    Expression<bool>? isReact,
    Expression<bool>? isExternalExtensions,
    Expression<int>? msgFirstModifyTime,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (clientMsgID != null) 'client_msg_id': clientMsgID,
      if (serverMsgID != null) 'server_msg_id': serverMsgID,
      if (sendID != null) 'send_id': sendID,
      if (recvID != null) 'recv_id': recvID,
      if (senderPlatformID != null) 'sender_platform_id': senderPlatformID,
      if (senderNickname != null) 'sender_nickname': senderNickname,
      if (senderFaceURL != null) 'sender_face_url': senderFaceURL,
      if (sessionType != null) 'session_type': sessionType,
      if (msgFrom != null) 'msg_from': msgFrom,
      if (contentType != null) 'content_type': contentType,
      if (content != null) 'content': content,
      if (isRead != null) 'is_read': isRead,
      if (status != null) 'status': status,
      if (seq != null) 'seq': seq,
      if (sendTime != null) 'send_time': sendTime,
      if (createTime != null) 'create_time': createTime,
      if (attachedInfo != null) 'attached_info': attachedInfo,
      if (ex != null) 'ex': ex,
      if (localEx != null) 'local_ex': localEx,
      if (isReact != null) 'is_react': isReact,
      if (isExternalExtensions != null)
        'is_external_extensions': isExternalExtensions,
      if (msgFirstModifyTime != null)
        'msg_first_modify_time': msgFirstModifyTime,
      if (rowid != null) 'rowid': rowid,
    });
  }

  LocalChatLogCompanion copyWith(
      {Value<String>? clientMsgID,
      Value<String>? serverMsgID,
      Value<String>? sendID,
      Value<String>? recvID,
      Value<int>? senderPlatformID,
      Value<String>? senderNickname,
      Value<String>? senderFaceURL,
      Value<int>? sessionType,
      Value<int>? msgFrom,
      Value<int>? contentType,
      Value<String>? content,
      Value<bool>? isRead,
      Value<int>? status,
      Value<int>? seq,
      Value<int>? sendTime,
      Value<int>? createTime,
      Value<String>? attachedInfo,
      Value<String>? ex,
      Value<String>? localEx,
      Value<bool>? isReact,
      Value<bool>? isExternalExtensions,
      Value<int>? msgFirstModifyTime,
      Value<int>? rowid}) {
    return LocalChatLogCompanion(
      clientMsgID: clientMsgID ?? this.clientMsgID,
      serverMsgID: serverMsgID ?? this.serverMsgID,
      sendID: sendID ?? this.sendID,
      recvID: recvID ?? this.recvID,
      senderPlatformID: senderPlatformID ?? this.senderPlatformID,
      senderNickname: senderNickname ?? this.senderNickname,
      senderFaceURL: senderFaceURL ?? this.senderFaceURL,
      sessionType: sessionType ?? this.sessionType,
      msgFrom: msgFrom ?? this.msgFrom,
      contentType: contentType ?? this.contentType,
      content: content ?? this.content,
      isRead: isRead ?? this.isRead,
      status: status ?? this.status,
      seq: seq ?? this.seq,
      sendTime: sendTime ?? this.sendTime,
      createTime: createTime ?? this.createTime,
      attachedInfo: attachedInfo ?? this.attachedInfo,
      ex: ex ?? this.ex,
      localEx: localEx ?? this.localEx,
      isReact: isReact ?? this.isReact,
      isExternalExtensions: isExternalExtensions ?? this.isExternalExtensions,
      msgFirstModifyTime: msgFirstModifyTime ?? this.msgFirstModifyTime,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (clientMsgID.present) {
      map['client_msg_id'] = Variable<String>(clientMsgID.value);
    }
    if (serverMsgID.present) {
      map['server_msg_id'] = Variable<String>(serverMsgID.value);
    }
    if (sendID.present) {
      map['send_id'] = Variable<String>(sendID.value);
    }
    if (recvID.present) {
      map['recv_id'] = Variable<String>(recvID.value);
    }
    if (senderPlatformID.present) {
      map['sender_platform_id'] = Variable<int>(senderPlatformID.value);
    }
    if (senderNickname.present) {
      map['sender_nickname'] = Variable<String>(senderNickname.value);
    }
    if (senderFaceURL.present) {
      map['sender_face_url'] = Variable<String>(senderFaceURL.value);
    }
    if (sessionType.present) {
      map['session_type'] = Variable<int>(sessionType.value);
    }
    if (msgFrom.present) {
      map['msg_from'] = Variable<int>(msgFrom.value);
    }
    if (contentType.present) {
      map['content_type'] = Variable<int>(contentType.value);
    }
    if (content.present) {
      map['content'] = Variable<String>(content.value);
    }
    if (isRead.present) {
      map['is_read'] = Variable<bool>(isRead.value);
    }
    if (status.present) {
      map['status'] = Variable<int>(status.value);
    }
    if (seq.present) {
      map['seq'] = Variable<int>(seq.value);
    }
    if (sendTime.present) {
      map['send_time'] = Variable<int>(sendTime.value);
    }
    if (createTime.present) {
      map['create_time'] = Variable<int>(createTime.value);
    }
    if (attachedInfo.present) {
      map['attached_info'] = Variable<String>(attachedInfo.value);
    }
    if (ex.present) {
      map['ex'] = Variable<String>(ex.value);
    }
    if (localEx.present) {
      map['local_ex'] = Variable<String>(localEx.value);
    }
    if (isReact.present) {
      map['is_react'] = Variable<bool>(isReact.value);
    }
    if (isExternalExtensions.present) {
      map['is_external_extensions'] =
          Variable<bool>(isExternalExtensions.value);
    }
    if (msgFirstModifyTime.present) {
      map['msg_first_modify_time'] = Variable<int>(msgFirstModifyTime.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('LocalChatLogCompanion(')
          ..write('clientMsgID: $clientMsgID, ')
          ..write('serverMsgID: $serverMsgID, ')
          ..write('sendID: $sendID, ')
          ..write('recvID: $recvID, ')
          ..write('senderPlatformID: $senderPlatformID, ')
          ..write('senderNickname: $senderNickname, ')
          ..write('senderFaceURL: $senderFaceURL, ')
          ..write('sessionType: $sessionType, ')
          ..write('msgFrom: $msgFrom, ')
          ..write('contentType: $contentType, ')
          ..write('content: $content, ')
          ..write('isRead: $isRead, ')
          ..write('status: $status, ')
          ..write('seq: $seq, ')
          ..write('sendTime: $sendTime, ')
          ..write('createTime: $createTime, ')
          ..write('attachedInfo: $attachedInfo, ')
          ..write('ex: $ex, ')
          ..write('localEx: $localEx, ')
          ..write('isReact: $isReact, ')
          ..write('isExternalExtensions: $isExternalExtensions, ')
          ..write('msgFirstModifyTime: $msgFirstModifyTime, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $LocalErrChatLogTable extends LocalErrChatLog
    with TableInfo<$LocalErrChatLogTable, LocalErrChatLogData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $LocalErrChatLogTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _seqMeta = const VerificationMeta('seq');
  @override
  late final GeneratedColumn<int> seq = GeneratedColumn<int>(
      'seq', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _clientMsgIDMeta =
      const VerificationMeta('clientMsgID');
  @override
  late final GeneratedColumn<String> clientMsgID = GeneratedColumn<String>(
      'client_msg_id', aliasedName, false,
      additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 64),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  static const VerificationMeta _serverMsgIDMeta =
      const VerificationMeta('serverMsgID');
  @override
  late final GeneratedColumn<String> serverMsgID = GeneratedColumn<String>(
      'server_msg_id', aliasedName, false,
      additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 64),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  static const VerificationMeta _sendIDMeta = const VerificationMeta('sendID');
  @override
  late final GeneratedColumn<String> sendID = GeneratedColumn<String>(
      'send_id', aliasedName, false,
      additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 64),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  static const VerificationMeta _recvIDMeta = const VerificationMeta('recvID');
  @override
  late final GeneratedColumn<String> recvID = GeneratedColumn<String>(
      'recv_id', aliasedName, false,
      additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 64),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  static const VerificationMeta _senderPlatformIDMeta =
      const VerificationMeta('senderPlatformID');
  @override
  late final GeneratedColumn<int> senderPlatformID = GeneratedColumn<int>(
      'sender_platform_id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _senderNicknameMeta =
      const VerificationMeta('senderNickname');
  @override
  late final GeneratedColumn<String> senderNickname = GeneratedColumn<String>(
      'sender_nickname', aliasedName, false,
      additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 255),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  static const VerificationMeta _senderFaceURLMeta =
      const VerificationMeta('senderFaceURL');
  @override
  late final GeneratedColumn<String> senderFaceURL = GeneratedColumn<String>(
      'sender_face_url', aliasedName, false,
      additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 255),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  static const VerificationMeta _sessionTypeMeta =
      const VerificationMeta('sessionType');
  @override
  late final GeneratedColumn<int> sessionType = GeneratedColumn<int>(
      'session_type', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _msgFromMeta =
      const VerificationMeta('msgFrom');
  @override
  late final GeneratedColumn<int> msgFrom = GeneratedColumn<int>(
      'msg_from', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _contentTypeMeta =
      const VerificationMeta('contentType');
  @override
  late final GeneratedColumn<int> contentType = GeneratedColumn<int>(
      'content_type', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _contentMeta =
      const VerificationMeta('content');
  @override
  late final GeneratedColumn<String> content = GeneratedColumn<String>(
      'content', aliasedName, false,
      additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 1000),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  static const VerificationMeta _isReadMeta = const VerificationMeta('isRead');
  @override
  late final GeneratedColumn<bool> isRead = GeneratedColumn<bool>(
      'is_read', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("is_read" IN (0, 1))'));
  static const VerificationMeta _statusMeta = const VerificationMeta('status');
  @override
  late final GeneratedColumn<int> status = GeneratedColumn<int>(
      'status', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _sendTimeMeta =
      const VerificationMeta('sendTime');
  @override
  late final GeneratedColumn<int> sendTime = GeneratedColumn<int>(
      'send_time', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _createTimeMeta =
      const VerificationMeta('createTime');
  @override
  late final GeneratedColumn<int> createTime = GeneratedColumn<int>(
      'create_time', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _attachedInfoMeta =
      const VerificationMeta('attachedInfo');
  @override
  late final GeneratedColumn<String> attachedInfo = GeneratedColumn<String>(
      'attached_info', aliasedName, false,
      additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 1024),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  static const VerificationMeta _exMeta = const VerificationMeta('ex');
  @override
  late final GeneratedColumn<String> ex = GeneratedColumn<String>(
      'ex', aliasedName, false,
      additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 1024),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [
        seq,
        clientMsgID,
        serverMsgID,
        sendID,
        recvID,
        senderPlatformID,
        senderNickname,
        senderFaceURL,
        sessionType,
        msgFrom,
        contentType,
        content,
        isRead,
        status,
        sendTime,
        createTime,
        attachedInfo,
        ex
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'local_err_chat_log';
  @override
  VerificationContext validateIntegrity(
      Insertable<LocalErrChatLogData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('seq')) {
      context.handle(
          _seqMeta, seq.isAcceptableOrUnknown(data['seq']!, _seqMeta));
    }
    if (data.containsKey('client_msg_id')) {
      context.handle(
          _clientMsgIDMeta,
          clientMsgID.isAcceptableOrUnknown(
              data['client_msg_id']!, _clientMsgIDMeta));
    } else if (isInserting) {
      context.missing(_clientMsgIDMeta);
    }
    if (data.containsKey('server_msg_id')) {
      context.handle(
          _serverMsgIDMeta,
          serverMsgID.isAcceptableOrUnknown(
              data['server_msg_id']!, _serverMsgIDMeta));
    } else if (isInserting) {
      context.missing(_serverMsgIDMeta);
    }
    if (data.containsKey('send_id')) {
      context.handle(_sendIDMeta,
          sendID.isAcceptableOrUnknown(data['send_id']!, _sendIDMeta));
    } else if (isInserting) {
      context.missing(_sendIDMeta);
    }
    if (data.containsKey('recv_id')) {
      context.handle(_recvIDMeta,
          recvID.isAcceptableOrUnknown(data['recv_id']!, _recvIDMeta));
    } else if (isInserting) {
      context.missing(_recvIDMeta);
    }
    if (data.containsKey('sender_platform_id')) {
      context.handle(
          _senderPlatformIDMeta,
          senderPlatformID.isAcceptableOrUnknown(
              data['sender_platform_id']!, _senderPlatformIDMeta));
    } else if (isInserting) {
      context.missing(_senderPlatformIDMeta);
    }
    if (data.containsKey('sender_nickname')) {
      context.handle(
          _senderNicknameMeta,
          senderNickname.isAcceptableOrUnknown(
              data['sender_nickname']!, _senderNicknameMeta));
    } else if (isInserting) {
      context.missing(_senderNicknameMeta);
    }
    if (data.containsKey('sender_face_url')) {
      context.handle(
          _senderFaceURLMeta,
          senderFaceURL.isAcceptableOrUnknown(
              data['sender_face_url']!, _senderFaceURLMeta));
    } else if (isInserting) {
      context.missing(_senderFaceURLMeta);
    }
    if (data.containsKey('session_type')) {
      context.handle(
          _sessionTypeMeta,
          sessionType.isAcceptableOrUnknown(
              data['session_type']!, _sessionTypeMeta));
    } else if (isInserting) {
      context.missing(_sessionTypeMeta);
    }
    if (data.containsKey('msg_from')) {
      context.handle(_msgFromMeta,
          msgFrom.isAcceptableOrUnknown(data['msg_from']!, _msgFromMeta));
    } else if (isInserting) {
      context.missing(_msgFromMeta);
    }
    if (data.containsKey('content_type')) {
      context.handle(
          _contentTypeMeta,
          contentType.isAcceptableOrUnknown(
              data['content_type']!, _contentTypeMeta));
    } else if (isInserting) {
      context.missing(_contentTypeMeta);
    }
    if (data.containsKey('content')) {
      context.handle(_contentMeta,
          content.isAcceptableOrUnknown(data['content']!, _contentMeta));
    } else if (isInserting) {
      context.missing(_contentMeta);
    }
    if (data.containsKey('is_read')) {
      context.handle(_isReadMeta,
          isRead.isAcceptableOrUnknown(data['is_read']!, _isReadMeta));
    } else if (isInserting) {
      context.missing(_isReadMeta);
    }
    if (data.containsKey('status')) {
      context.handle(_statusMeta,
          status.isAcceptableOrUnknown(data['status']!, _statusMeta));
    } else if (isInserting) {
      context.missing(_statusMeta);
    }
    if (data.containsKey('send_time')) {
      context.handle(_sendTimeMeta,
          sendTime.isAcceptableOrUnknown(data['send_time']!, _sendTimeMeta));
    } else if (isInserting) {
      context.missing(_sendTimeMeta);
    }
    if (data.containsKey('create_time')) {
      context.handle(
          _createTimeMeta,
          createTime.isAcceptableOrUnknown(
              data['create_time']!, _createTimeMeta));
    } else if (isInserting) {
      context.missing(_createTimeMeta);
    }
    if (data.containsKey('attached_info')) {
      context.handle(
          _attachedInfoMeta,
          attachedInfo.isAcceptableOrUnknown(
              data['attached_info']!, _attachedInfoMeta));
    } else if (isInserting) {
      context.missing(_attachedInfoMeta);
    }
    if (data.containsKey('ex')) {
      context.handle(_exMeta, ex.isAcceptableOrUnknown(data['ex']!, _exMeta));
    } else if (isInserting) {
      context.missing(_exMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {seq};
  @override
  LocalErrChatLogData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return LocalErrChatLogData(
      seq: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}seq'])!,
      clientMsgID: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}client_msg_id'])!,
      serverMsgID: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}server_msg_id'])!,
      sendID: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}send_id'])!,
      recvID: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}recv_id'])!,
      senderPlatformID: attachedDatabase.typeMapping.read(
          DriftSqlType.int, data['${effectivePrefix}sender_platform_id'])!,
      senderNickname: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}sender_nickname'])!,
      senderFaceURL: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}sender_face_url'])!,
      sessionType: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}session_type'])!,
      msgFrom: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}msg_from'])!,
      contentType: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}content_type'])!,
      content: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}content'])!,
      isRead: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_read'])!,
      status: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}status'])!,
      sendTime: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}send_time'])!,
      createTime: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}create_time'])!,
      attachedInfo: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}attached_info'])!,
      ex: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}ex'])!,
    );
  }

  @override
  $LocalErrChatLogTable createAlias(String alias) {
    return $LocalErrChatLogTable(attachedDatabase, alias);
  }
}

class LocalErrChatLogData extends DataClass
    implements Insertable<LocalErrChatLogData> {
  final int seq;
  final String clientMsgID;
  final String serverMsgID;
  final String sendID;
  final String recvID;
  final int senderPlatformID;
  final String senderNickname;
  final String senderFaceURL;
  final int sessionType;
  final int msgFrom;
  final int contentType;
  final String content;
  final bool isRead;
  final int status;
  final int sendTime;
  final int createTime;
  final String attachedInfo;
  final String ex;
  const LocalErrChatLogData(
      {required this.seq,
      required this.clientMsgID,
      required this.serverMsgID,
      required this.sendID,
      required this.recvID,
      required this.senderPlatformID,
      required this.senderNickname,
      required this.senderFaceURL,
      required this.sessionType,
      required this.msgFrom,
      required this.contentType,
      required this.content,
      required this.isRead,
      required this.status,
      required this.sendTime,
      required this.createTime,
      required this.attachedInfo,
      required this.ex});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['seq'] = Variable<int>(seq);
    map['client_msg_id'] = Variable<String>(clientMsgID);
    map['server_msg_id'] = Variable<String>(serverMsgID);
    map['send_id'] = Variable<String>(sendID);
    map['recv_id'] = Variable<String>(recvID);
    map['sender_platform_id'] = Variable<int>(senderPlatformID);
    map['sender_nickname'] = Variable<String>(senderNickname);
    map['sender_face_url'] = Variable<String>(senderFaceURL);
    map['session_type'] = Variable<int>(sessionType);
    map['msg_from'] = Variable<int>(msgFrom);
    map['content_type'] = Variable<int>(contentType);
    map['content'] = Variable<String>(content);
    map['is_read'] = Variable<bool>(isRead);
    map['status'] = Variable<int>(status);
    map['send_time'] = Variable<int>(sendTime);
    map['create_time'] = Variable<int>(createTime);
    map['attached_info'] = Variable<String>(attachedInfo);
    map['ex'] = Variable<String>(ex);
    return map;
  }

  LocalErrChatLogCompanion toCompanion(bool nullToAbsent) {
    return LocalErrChatLogCompanion(
      seq: Value(seq),
      clientMsgID: Value(clientMsgID),
      serverMsgID: Value(serverMsgID),
      sendID: Value(sendID),
      recvID: Value(recvID),
      senderPlatformID: Value(senderPlatformID),
      senderNickname: Value(senderNickname),
      senderFaceURL: Value(senderFaceURL),
      sessionType: Value(sessionType),
      msgFrom: Value(msgFrom),
      contentType: Value(contentType),
      content: Value(content),
      isRead: Value(isRead),
      status: Value(status),
      sendTime: Value(sendTime),
      createTime: Value(createTime),
      attachedInfo: Value(attachedInfo),
      ex: Value(ex),
    );
  }

  factory LocalErrChatLogData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return LocalErrChatLogData(
      seq: serializer.fromJson<int>(json['seq']),
      clientMsgID: serializer.fromJson<String>(json['clientMsgID']),
      serverMsgID: serializer.fromJson<String>(json['serverMsgID']),
      sendID: serializer.fromJson<String>(json['sendID']),
      recvID: serializer.fromJson<String>(json['recvID']),
      senderPlatformID: serializer.fromJson<int>(json['senderPlatformID']),
      senderNickname: serializer.fromJson<String>(json['senderNickname']),
      senderFaceURL: serializer.fromJson<String>(json['senderFaceURL']),
      sessionType: serializer.fromJson<int>(json['sessionType']),
      msgFrom: serializer.fromJson<int>(json['msgFrom']),
      contentType: serializer.fromJson<int>(json['contentType']),
      content: serializer.fromJson<String>(json['content']),
      isRead: serializer.fromJson<bool>(json['isRead']),
      status: serializer.fromJson<int>(json['status']),
      sendTime: serializer.fromJson<int>(json['sendTime']),
      createTime: serializer.fromJson<int>(json['createTime']),
      attachedInfo: serializer.fromJson<String>(json['attachedInfo']),
      ex: serializer.fromJson<String>(json['ex']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'seq': serializer.toJson<int>(seq),
      'clientMsgID': serializer.toJson<String>(clientMsgID),
      'serverMsgID': serializer.toJson<String>(serverMsgID),
      'sendID': serializer.toJson<String>(sendID),
      'recvID': serializer.toJson<String>(recvID),
      'senderPlatformID': serializer.toJson<int>(senderPlatformID),
      'senderNickname': serializer.toJson<String>(senderNickname),
      'senderFaceURL': serializer.toJson<String>(senderFaceURL),
      'sessionType': serializer.toJson<int>(sessionType),
      'msgFrom': serializer.toJson<int>(msgFrom),
      'contentType': serializer.toJson<int>(contentType),
      'content': serializer.toJson<String>(content),
      'isRead': serializer.toJson<bool>(isRead),
      'status': serializer.toJson<int>(status),
      'sendTime': serializer.toJson<int>(sendTime),
      'createTime': serializer.toJson<int>(createTime),
      'attachedInfo': serializer.toJson<String>(attachedInfo),
      'ex': serializer.toJson<String>(ex),
    };
  }

  LocalErrChatLogData copyWith(
          {int? seq,
          String? clientMsgID,
          String? serverMsgID,
          String? sendID,
          String? recvID,
          int? senderPlatformID,
          String? senderNickname,
          String? senderFaceURL,
          int? sessionType,
          int? msgFrom,
          int? contentType,
          String? content,
          bool? isRead,
          int? status,
          int? sendTime,
          int? createTime,
          String? attachedInfo,
          String? ex}) =>
      LocalErrChatLogData(
        seq: seq ?? this.seq,
        clientMsgID: clientMsgID ?? this.clientMsgID,
        serverMsgID: serverMsgID ?? this.serverMsgID,
        sendID: sendID ?? this.sendID,
        recvID: recvID ?? this.recvID,
        senderPlatformID: senderPlatformID ?? this.senderPlatformID,
        senderNickname: senderNickname ?? this.senderNickname,
        senderFaceURL: senderFaceURL ?? this.senderFaceURL,
        sessionType: sessionType ?? this.sessionType,
        msgFrom: msgFrom ?? this.msgFrom,
        contentType: contentType ?? this.contentType,
        content: content ?? this.content,
        isRead: isRead ?? this.isRead,
        status: status ?? this.status,
        sendTime: sendTime ?? this.sendTime,
        createTime: createTime ?? this.createTime,
        attachedInfo: attachedInfo ?? this.attachedInfo,
        ex: ex ?? this.ex,
      );
  LocalErrChatLogData copyWithCompanion(LocalErrChatLogCompanion data) {
    return LocalErrChatLogData(
      seq: data.seq.present ? data.seq.value : this.seq,
      clientMsgID:
          data.clientMsgID.present ? data.clientMsgID.value : this.clientMsgID,
      serverMsgID:
          data.serverMsgID.present ? data.serverMsgID.value : this.serverMsgID,
      sendID: data.sendID.present ? data.sendID.value : this.sendID,
      recvID: data.recvID.present ? data.recvID.value : this.recvID,
      senderPlatformID: data.senderPlatformID.present
          ? data.senderPlatformID.value
          : this.senderPlatformID,
      senderNickname: data.senderNickname.present
          ? data.senderNickname.value
          : this.senderNickname,
      senderFaceURL: data.senderFaceURL.present
          ? data.senderFaceURL.value
          : this.senderFaceURL,
      sessionType:
          data.sessionType.present ? data.sessionType.value : this.sessionType,
      msgFrom: data.msgFrom.present ? data.msgFrom.value : this.msgFrom,
      contentType:
          data.contentType.present ? data.contentType.value : this.contentType,
      content: data.content.present ? data.content.value : this.content,
      isRead: data.isRead.present ? data.isRead.value : this.isRead,
      status: data.status.present ? data.status.value : this.status,
      sendTime: data.sendTime.present ? data.sendTime.value : this.sendTime,
      createTime:
          data.createTime.present ? data.createTime.value : this.createTime,
      attachedInfo: data.attachedInfo.present
          ? data.attachedInfo.value
          : this.attachedInfo,
      ex: data.ex.present ? data.ex.value : this.ex,
    );
  }

  @override
  String toString() {
    return (StringBuffer('LocalErrChatLogData(')
          ..write('seq: $seq, ')
          ..write('clientMsgID: $clientMsgID, ')
          ..write('serverMsgID: $serverMsgID, ')
          ..write('sendID: $sendID, ')
          ..write('recvID: $recvID, ')
          ..write('senderPlatformID: $senderPlatformID, ')
          ..write('senderNickname: $senderNickname, ')
          ..write('senderFaceURL: $senderFaceURL, ')
          ..write('sessionType: $sessionType, ')
          ..write('msgFrom: $msgFrom, ')
          ..write('contentType: $contentType, ')
          ..write('content: $content, ')
          ..write('isRead: $isRead, ')
          ..write('status: $status, ')
          ..write('sendTime: $sendTime, ')
          ..write('createTime: $createTime, ')
          ..write('attachedInfo: $attachedInfo, ')
          ..write('ex: $ex')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      seq,
      clientMsgID,
      serverMsgID,
      sendID,
      recvID,
      senderPlatformID,
      senderNickname,
      senderFaceURL,
      sessionType,
      msgFrom,
      contentType,
      content,
      isRead,
      status,
      sendTime,
      createTime,
      attachedInfo,
      ex);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is LocalErrChatLogData &&
          other.seq == this.seq &&
          other.clientMsgID == this.clientMsgID &&
          other.serverMsgID == this.serverMsgID &&
          other.sendID == this.sendID &&
          other.recvID == this.recvID &&
          other.senderPlatformID == this.senderPlatformID &&
          other.senderNickname == this.senderNickname &&
          other.senderFaceURL == this.senderFaceURL &&
          other.sessionType == this.sessionType &&
          other.msgFrom == this.msgFrom &&
          other.contentType == this.contentType &&
          other.content == this.content &&
          other.isRead == this.isRead &&
          other.status == this.status &&
          other.sendTime == this.sendTime &&
          other.createTime == this.createTime &&
          other.attachedInfo == this.attachedInfo &&
          other.ex == this.ex);
}

class LocalErrChatLogCompanion extends UpdateCompanion<LocalErrChatLogData> {
  final Value<int> seq;
  final Value<String> clientMsgID;
  final Value<String> serverMsgID;
  final Value<String> sendID;
  final Value<String> recvID;
  final Value<int> senderPlatformID;
  final Value<String> senderNickname;
  final Value<String> senderFaceURL;
  final Value<int> sessionType;
  final Value<int> msgFrom;
  final Value<int> contentType;
  final Value<String> content;
  final Value<bool> isRead;
  final Value<int> status;
  final Value<int> sendTime;
  final Value<int> createTime;
  final Value<String> attachedInfo;
  final Value<String> ex;
  const LocalErrChatLogCompanion({
    this.seq = const Value.absent(),
    this.clientMsgID = const Value.absent(),
    this.serverMsgID = const Value.absent(),
    this.sendID = const Value.absent(),
    this.recvID = const Value.absent(),
    this.senderPlatformID = const Value.absent(),
    this.senderNickname = const Value.absent(),
    this.senderFaceURL = const Value.absent(),
    this.sessionType = const Value.absent(),
    this.msgFrom = const Value.absent(),
    this.contentType = const Value.absent(),
    this.content = const Value.absent(),
    this.isRead = const Value.absent(),
    this.status = const Value.absent(),
    this.sendTime = const Value.absent(),
    this.createTime = const Value.absent(),
    this.attachedInfo = const Value.absent(),
    this.ex = const Value.absent(),
  });
  LocalErrChatLogCompanion.insert({
    this.seq = const Value.absent(),
    required String clientMsgID,
    required String serverMsgID,
    required String sendID,
    required String recvID,
    required int senderPlatformID,
    required String senderNickname,
    required String senderFaceURL,
    required int sessionType,
    required int msgFrom,
    required int contentType,
    required String content,
    required bool isRead,
    required int status,
    required int sendTime,
    required int createTime,
    required String attachedInfo,
    required String ex,
  })  : clientMsgID = Value(clientMsgID),
        serverMsgID = Value(serverMsgID),
        sendID = Value(sendID),
        recvID = Value(recvID),
        senderPlatformID = Value(senderPlatformID),
        senderNickname = Value(senderNickname),
        senderFaceURL = Value(senderFaceURL),
        sessionType = Value(sessionType),
        msgFrom = Value(msgFrom),
        contentType = Value(contentType),
        content = Value(content),
        isRead = Value(isRead),
        status = Value(status),
        sendTime = Value(sendTime),
        createTime = Value(createTime),
        attachedInfo = Value(attachedInfo),
        ex = Value(ex);
  static Insertable<LocalErrChatLogData> custom({
    Expression<int>? seq,
    Expression<String>? clientMsgID,
    Expression<String>? serverMsgID,
    Expression<String>? sendID,
    Expression<String>? recvID,
    Expression<int>? senderPlatformID,
    Expression<String>? senderNickname,
    Expression<String>? senderFaceURL,
    Expression<int>? sessionType,
    Expression<int>? msgFrom,
    Expression<int>? contentType,
    Expression<String>? content,
    Expression<bool>? isRead,
    Expression<int>? status,
    Expression<int>? sendTime,
    Expression<int>? createTime,
    Expression<String>? attachedInfo,
    Expression<String>? ex,
  }) {
    return RawValuesInsertable({
      if (seq != null) 'seq': seq,
      if (clientMsgID != null) 'client_msg_id': clientMsgID,
      if (serverMsgID != null) 'server_msg_id': serverMsgID,
      if (sendID != null) 'send_id': sendID,
      if (recvID != null) 'recv_id': recvID,
      if (senderPlatformID != null) 'sender_platform_id': senderPlatformID,
      if (senderNickname != null) 'sender_nickname': senderNickname,
      if (senderFaceURL != null) 'sender_face_url': senderFaceURL,
      if (sessionType != null) 'session_type': sessionType,
      if (msgFrom != null) 'msg_from': msgFrom,
      if (contentType != null) 'content_type': contentType,
      if (content != null) 'content': content,
      if (isRead != null) 'is_read': isRead,
      if (status != null) 'status': status,
      if (sendTime != null) 'send_time': sendTime,
      if (createTime != null) 'create_time': createTime,
      if (attachedInfo != null) 'attached_info': attachedInfo,
      if (ex != null) 'ex': ex,
    });
  }

  LocalErrChatLogCompanion copyWith(
      {Value<int>? seq,
      Value<String>? clientMsgID,
      Value<String>? serverMsgID,
      Value<String>? sendID,
      Value<String>? recvID,
      Value<int>? senderPlatformID,
      Value<String>? senderNickname,
      Value<String>? senderFaceURL,
      Value<int>? sessionType,
      Value<int>? msgFrom,
      Value<int>? contentType,
      Value<String>? content,
      Value<bool>? isRead,
      Value<int>? status,
      Value<int>? sendTime,
      Value<int>? createTime,
      Value<String>? attachedInfo,
      Value<String>? ex}) {
    return LocalErrChatLogCompanion(
      seq: seq ?? this.seq,
      clientMsgID: clientMsgID ?? this.clientMsgID,
      serverMsgID: serverMsgID ?? this.serverMsgID,
      sendID: sendID ?? this.sendID,
      recvID: recvID ?? this.recvID,
      senderPlatformID: senderPlatformID ?? this.senderPlatformID,
      senderNickname: senderNickname ?? this.senderNickname,
      senderFaceURL: senderFaceURL ?? this.senderFaceURL,
      sessionType: sessionType ?? this.sessionType,
      msgFrom: msgFrom ?? this.msgFrom,
      contentType: contentType ?? this.contentType,
      content: content ?? this.content,
      isRead: isRead ?? this.isRead,
      status: status ?? this.status,
      sendTime: sendTime ?? this.sendTime,
      createTime: createTime ?? this.createTime,
      attachedInfo: attachedInfo ?? this.attachedInfo,
      ex: ex ?? this.ex,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (seq.present) {
      map['seq'] = Variable<int>(seq.value);
    }
    if (clientMsgID.present) {
      map['client_msg_id'] = Variable<String>(clientMsgID.value);
    }
    if (serverMsgID.present) {
      map['server_msg_id'] = Variable<String>(serverMsgID.value);
    }
    if (sendID.present) {
      map['send_id'] = Variable<String>(sendID.value);
    }
    if (recvID.present) {
      map['recv_id'] = Variable<String>(recvID.value);
    }
    if (senderPlatformID.present) {
      map['sender_platform_id'] = Variable<int>(senderPlatformID.value);
    }
    if (senderNickname.present) {
      map['sender_nickname'] = Variable<String>(senderNickname.value);
    }
    if (senderFaceURL.present) {
      map['sender_face_url'] = Variable<String>(senderFaceURL.value);
    }
    if (sessionType.present) {
      map['session_type'] = Variable<int>(sessionType.value);
    }
    if (msgFrom.present) {
      map['msg_from'] = Variable<int>(msgFrom.value);
    }
    if (contentType.present) {
      map['content_type'] = Variable<int>(contentType.value);
    }
    if (content.present) {
      map['content'] = Variable<String>(content.value);
    }
    if (isRead.present) {
      map['is_read'] = Variable<bool>(isRead.value);
    }
    if (status.present) {
      map['status'] = Variable<int>(status.value);
    }
    if (sendTime.present) {
      map['send_time'] = Variable<int>(sendTime.value);
    }
    if (createTime.present) {
      map['create_time'] = Variable<int>(createTime.value);
    }
    if (attachedInfo.present) {
      map['attached_info'] = Variable<String>(attachedInfo.value);
    }
    if (ex.present) {
      map['ex'] = Variable<String>(ex.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('LocalErrChatLogCompanion(')
          ..write('seq: $seq, ')
          ..write('clientMsgID: $clientMsgID, ')
          ..write('serverMsgID: $serverMsgID, ')
          ..write('sendID: $sendID, ')
          ..write('recvID: $recvID, ')
          ..write('senderPlatformID: $senderPlatformID, ')
          ..write('senderNickname: $senderNickname, ')
          ..write('senderFaceURL: $senderFaceURL, ')
          ..write('sessionType: $sessionType, ')
          ..write('msgFrom: $msgFrom, ')
          ..write('contentType: $contentType, ')
          ..write('content: $content, ')
          ..write('isRead: $isRead, ')
          ..write('status: $status, ')
          ..write('sendTime: $sendTime, ')
          ..write('createTime: $createTime, ')
          ..write('attachedInfo: $attachedInfo, ')
          ..write('ex: $ex')
          ..write(')'))
        .toString();
  }
}

class $TempCacheLocalChatLogTable extends TempCacheLocalChatLog
    with TableInfo<$TempCacheLocalChatLogTable, TempCacheLocalChatLogData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $TempCacheLocalChatLogTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _clientMsgIDMeta =
      const VerificationMeta('clientMsgID');
  @override
  late final GeneratedColumn<String> clientMsgID = GeneratedColumn<String>(
      'client_msg_id', aliasedName, false,
      additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 64),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  static const VerificationMeta _serverMsgIDMeta =
      const VerificationMeta('serverMsgID');
  @override
  late final GeneratedColumn<String> serverMsgID = GeneratedColumn<String>(
      'server_msg_id', aliasedName, false,
      additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 64),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  static const VerificationMeta _sendIDMeta = const VerificationMeta('sendID');
  @override
  late final GeneratedColumn<String> sendID = GeneratedColumn<String>(
      'send_id', aliasedName, false,
      additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 64),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  static const VerificationMeta _recvIDMeta = const VerificationMeta('recvID');
  @override
  late final GeneratedColumn<String> recvID = GeneratedColumn<String>(
      'recv_id', aliasedName, false,
      additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 64),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  static const VerificationMeta _senderPlatformIDMeta =
      const VerificationMeta('senderPlatformID');
  @override
  late final GeneratedColumn<int> senderPlatformID = GeneratedColumn<int>(
      'sender_platform_id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _senderNicknameMeta =
      const VerificationMeta('senderNickname');
  @override
  late final GeneratedColumn<String> senderNickname = GeneratedColumn<String>(
      'sender_nickname', aliasedName, false,
      additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 255),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  static const VerificationMeta _senderFaceURLMeta =
      const VerificationMeta('senderFaceURL');
  @override
  late final GeneratedColumn<String> senderFaceURL = GeneratedColumn<String>(
      'sender_face_url', aliasedName, false,
      additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 255),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  static const VerificationMeta _sessionTypeMeta =
      const VerificationMeta('sessionType');
  @override
  late final GeneratedColumn<int> sessionType = GeneratedColumn<int>(
      'session_type', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _msgFromMeta =
      const VerificationMeta('msgFrom');
  @override
  late final GeneratedColumn<int> msgFrom = GeneratedColumn<int>(
      'msg_from', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _contentTypeMeta =
      const VerificationMeta('contentType');
  @override
  late final GeneratedColumn<int> contentType = GeneratedColumn<int>(
      'content_type', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _contentMeta =
      const VerificationMeta('content');
  @override
  late final GeneratedColumn<String> content = GeneratedColumn<String>(
      'content', aliasedName, false,
      additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 1000),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  static const VerificationMeta _isReadMeta = const VerificationMeta('isRead');
  @override
  late final GeneratedColumn<bool> isRead = GeneratedColumn<bool>(
      'is_read', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("is_read" IN (0, 1))'));
  static const VerificationMeta _statusMeta = const VerificationMeta('status');
  @override
  late final GeneratedColumn<int> status = GeneratedColumn<int>(
      'status', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _seqMeta = const VerificationMeta('seq');
  @override
  late final GeneratedColumn<int> seq = GeneratedColumn<int>(
      'seq', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultValue: const Constant(0));
  static const VerificationMeta _sendTimeMeta =
      const VerificationMeta('sendTime');
  @override
  late final GeneratedColumn<int> sendTime = GeneratedColumn<int>(
      'send_time', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _createTimeMeta =
      const VerificationMeta('createTime');
  @override
  late final GeneratedColumn<int> createTime = GeneratedColumn<int>(
      'create_time', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _attachedInfoMeta =
      const VerificationMeta('attachedInfo');
  @override
  late final GeneratedColumn<String> attachedInfo = GeneratedColumn<String>(
      'attached_info', aliasedName, false,
      additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 1024),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  static const VerificationMeta _exMeta = const VerificationMeta('ex');
  @override
  late final GeneratedColumn<String> ex = GeneratedColumn<String>(
      'ex', aliasedName, false,
      additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 1024),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [
        clientMsgID,
        serverMsgID,
        sendID,
        recvID,
        senderPlatformID,
        senderNickname,
        senderFaceURL,
        sessionType,
        msgFrom,
        contentType,
        content,
        isRead,
        status,
        seq,
        sendTime,
        createTime,
        attachedInfo,
        ex
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'temp_cache_local_chat_log';
  @override
  VerificationContext validateIntegrity(
      Insertable<TempCacheLocalChatLogData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('client_msg_id')) {
      context.handle(
          _clientMsgIDMeta,
          clientMsgID.isAcceptableOrUnknown(
              data['client_msg_id']!, _clientMsgIDMeta));
    } else if (isInserting) {
      context.missing(_clientMsgIDMeta);
    }
    if (data.containsKey('server_msg_id')) {
      context.handle(
          _serverMsgIDMeta,
          serverMsgID.isAcceptableOrUnknown(
              data['server_msg_id']!, _serverMsgIDMeta));
    } else if (isInserting) {
      context.missing(_serverMsgIDMeta);
    }
    if (data.containsKey('send_id')) {
      context.handle(_sendIDMeta,
          sendID.isAcceptableOrUnknown(data['send_id']!, _sendIDMeta));
    } else if (isInserting) {
      context.missing(_sendIDMeta);
    }
    if (data.containsKey('recv_id')) {
      context.handle(_recvIDMeta,
          recvID.isAcceptableOrUnknown(data['recv_id']!, _recvIDMeta));
    } else if (isInserting) {
      context.missing(_recvIDMeta);
    }
    if (data.containsKey('sender_platform_id')) {
      context.handle(
          _senderPlatformIDMeta,
          senderPlatformID.isAcceptableOrUnknown(
              data['sender_platform_id']!, _senderPlatformIDMeta));
    } else if (isInserting) {
      context.missing(_senderPlatformIDMeta);
    }
    if (data.containsKey('sender_nickname')) {
      context.handle(
          _senderNicknameMeta,
          senderNickname.isAcceptableOrUnknown(
              data['sender_nickname']!, _senderNicknameMeta));
    } else if (isInserting) {
      context.missing(_senderNicknameMeta);
    }
    if (data.containsKey('sender_face_url')) {
      context.handle(
          _senderFaceURLMeta,
          senderFaceURL.isAcceptableOrUnknown(
              data['sender_face_url']!, _senderFaceURLMeta));
    } else if (isInserting) {
      context.missing(_senderFaceURLMeta);
    }
    if (data.containsKey('session_type')) {
      context.handle(
          _sessionTypeMeta,
          sessionType.isAcceptableOrUnknown(
              data['session_type']!, _sessionTypeMeta));
    } else if (isInserting) {
      context.missing(_sessionTypeMeta);
    }
    if (data.containsKey('msg_from')) {
      context.handle(_msgFromMeta,
          msgFrom.isAcceptableOrUnknown(data['msg_from']!, _msgFromMeta));
    } else if (isInserting) {
      context.missing(_msgFromMeta);
    }
    if (data.containsKey('content_type')) {
      context.handle(
          _contentTypeMeta,
          contentType.isAcceptableOrUnknown(
              data['content_type']!, _contentTypeMeta));
    } else if (isInserting) {
      context.missing(_contentTypeMeta);
    }
    if (data.containsKey('content')) {
      context.handle(_contentMeta,
          content.isAcceptableOrUnknown(data['content']!, _contentMeta));
    } else if (isInserting) {
      context.missing(_contentMeta);
    }
    if (data.containsKey('is_read')) {
      context.handle(_isReadMeta,
          isRead.isAcceptableOrUnknown(data['is_read']!, _isReadMeta));
    } else if (isInserting) {
      context.missing(_isReadMeta);
    }
    if (data.containsKey('status')) {
      context.handle(_statusMeta,
          status.isAcceptableOrUnknown(data['status']!, _statusMeta));
    } else if (isInserting) {
      context.missing(_statusMeta);
    }
    if (data.containsKey('seq')) {
      context.handle(
          _seqMeta, seq.isAcceptableOrUnknown(data['seq']!, _seqMeta));
    }
    if (data.containsKey('send_time')) {
      context.handle(_sendTimeMeta,
          sendTime.isAcceptableOrUnknown(data['send_time']!, _sendTimeMeta));
    } else if (isInserting) {
      context.missing(_sendTimeMeta);
    }
    if (data.containsKey('create_time')) {
      context.handle(
          _createTimeMeta,
          createTime.isAcceptableOrUnknown(
              data['create_time']!, _createTimeMeta));
    } else if (isInserting) {
      context.missing(_createTimeMeta);
    }
    if (data.containsKey('attached_info')) {
      context.handle(
          _attachedInfoMeta,
          attachedInfo.isAcceptableOrUnknown(
              data['attached_info']!, _attachedInfoMeta));
    } else if (isInserting) {
      context.missing(_attachedInfoMeta);
    }
    if (data.containsKey('ex')) {
      context.handle(_exMeta, ex.isAcceptableOrUnknown(data['ex']!, _exMeta));
    } else if (isInserting) {
      context.missing(_exMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {clientMsgID};
  @override
  TempCacheLocalChatLogData map(Map<String, dynamic> data,
      {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return TempCacheLocalChatLogData(
      clientMsgID: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}client_msg_id'])!,
      serverMsgID: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}server_msg_id'])!,
      sendID: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}send_id'])!,
      recvID: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}recv_id'])!,
      senderPlatformID: attachedDatabase.typeMapping.read(
          DriftSqlType.int, data['${effectivePrefix}sender_platform_id'])!,
      senderNickname: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}sender_nickname'])!,
      senderFaceURL: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}sender_face_url'])!,
      sessionType: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}session_type'])!,
      msgFrom: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}msg_from'])!,
      contentType: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}content_type'])!,
      content: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}content'])!,
      isRead: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_read'])!,
      status: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}status'])!,
      seq: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}seq'])!,
      sendTime: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}send_time'])!,
      createTime: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}create_time'])!,
      attachedInfo: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}attached_info'])!,
      ex: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}ex'])!,
    );
  }

  @override
  $TempCacheLocalChatLogTable createAlias(String alias) {
    return $TempCacheLocalChatLogTable(attachedDatabase, alias);
  }
}

class TempCacheLocalChatLogData extends DataClass
    implements Insertable<TempCacheLocalChatLogData> {
  final String clientMsgID;
  final String serverMsgID;
  final String sendID;
  final String recvID;
  final int senderPlatformID;
  final String senderNickname;
  final String senderFaceURL;
  final int sessionType;
  final int msgFrom;
  final int contentType;
  final String content;
  final bool isRead;
  final int status;
  final int seq;
  final int sendTime;
  final int createTime;
  final String attachedInfo;
  final String ex;
  const TempCacheLocalChatLogData(
      {required this.clientMsgID,
      required this.serverMsgID,
      required this.sendID,
      required this.recvID,
      required this.senderPlatformID,
      required this.senderNickname,
      required this.senderFaceURL,
      required this.sessionType,
      required this.msgFrom,
      required this.contentType,
      required this.content,
      required this.isRead,
      required this.status,
      required this.seq,
      required this.sendTime,
      required this.createTime,
      required this.attachedInfo,
      required this.ex});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['client_msg_id'] = Variable<String>(clientMsgID);
    map['server_msg_id'] = Variable<String>(serverMsgID);
    map['send_id'] = Variable<String>(sendID);
    map['recv_id'] = Variable<String>(recvID);
    map['sender_platform_id'] = Variable<int>(senderPlatformID);
    map['sender_nickname'] = Variable<String>(senderNickname);
    map['sender_face_url'] = Variable<String>(senderFaceURL);
    map['session_type'] = Variable<int>(sessionType);
    map['msg_from'] = Variable<int>(msgFrom);
    map['content_type'] = Variable<int>(contentType);
    map['content'] = Variable<String>(content);
    map['is_read'] = Variable<bool>(isRead);
    map['status'] = Variable<int>(status);
    map['seq'] = Variable<int>(seq);
    map['send_time'] = Variable<int>(sendTime);
    map['create_time'] = Variable<int>(createTime);
    map['attached_info'] = Variable<String>(attachedInfo);
    map['ex'] = Variable<String>(ex);
    return map;
  }

  TempCacheLocalChatLogCompanion toCompanion(bool nullToAbsent) {
    return TempCacheLocalChatLogCompanion(
      clientMsgID: Value(clientMsgID),
      serverMsgID: Value(serverMsgID),
      sendID: Value(sendID),
      recvID: Value(recvID),
      senderPlatformID: Value(senderPlatformID),
      senderNickname: Value(senderNickname),
      senderFaceURL: Value(senderFaceURL),
      sessionType: Value(sessionType),
      msgFrom: Value(msgFrom),
      contentType: Value(contentType),
      content: Value(content),
      isRead: Value(isRead),
      status: Value(status),
      seq: Value(seq),
      sendTime: Value(sendTime),
      createTime: Value(createTime),
      attachedInfo: Value(attachedInfo),
      ex: Value(ex),
    );
  }

  factory TempCacheLocalChatLogData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return TempCacheLocalChatLogData(
      clientMsgID: serializer.fromJson<String>(json['clientMsgID']),
      serverMsgID: serializer.fromJson<String>(json['serverMsgID']),
      sendID: serializer.fromJson<String>(json['sendID']),
      recvID: serializer.fromJson<String>(json['recvID']),
      senderPlatformID: serializer.fromJson<int>(json['senderPlatformID']),
      senderNickname: serializer.fromJson<String>(json['senderNickname']),
      senderFaceURL: serializer.fromJson<String>(json['senderFaceURL']),
      sessionType: serializer.fromJson<int>(json['sessionType']),
      msgFrom: serializer.fromJson<int>(json['msgFrom']),
      contentType: serializer.fromJson<int>(json['contentType']),
      content: serializer.fromJson<String>(json['content']),
      isRead: serializer.fromJson<bool>(json['isRead']),
      status: serializer.fromJson<int>(json['status']),
      seq: serializer.fromJson<int>(json['seq']),
      sendTime: serializer.fromJson<int>(json['sendTime']),
      createTime: serializer.fromJson<int>(json['createTime']),
      attachedInfo: serializer.fromJson<String>(json['attachedInfo']),
      ex: serializer.fromJson<String>(json['ex']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'clientMsgID': serializer.toJson<String>(clientMsgID),
      'serverMsgID': serializer.toJson<String>(serverMsgID),
      'sendID': serializer.toJson<String>(sendID),
      'recvID': serializer.toJson<String>(recvID),
      'senderPlatformID': serializer.toJson<int>(senderPlatformID),
      'senderNickname': serializer.toJson<String>(senderNickname),
      'senderFaceURL': serializer.toJson<String>(senderFaceURL),
      'sessionType': serializer.toJson<int>(sessionType),
      'msgFrom': serializer.toJson<int>(msgFrom),
      'contentType': serializer.toJson<int>(contentType),
      'content': serializer.toJson<String>(content),
      'isRead': serializer.toJson<bool>(isRead),
      'status': serializer.toJson<int>(status),
      'seq': serializer.toJson<int>(seq),
      'sendTime': serializer.toJson<int>(sendTime),
      'createTime': serializer.toJson<int>(createTime),
      'attachedInfo': serializer.toJson<String>(attachedInfo),
      'ex': serializer.toJson<String>(ex),
    };
  }

  TempCacheLocalChatLogData copyWith(
          {String? clientMsgID,
          String? serverMsgID,
          String? sendID,
          String? recvID,
          int? senderPlatformID,
          String? senderNickname,
          String? senderFaceURL,
          int? sessionType,
          int? msgFrom,
          int? contentType,
          String? content,
          bool? isRead,
          int? status,
          int? seq,
          int? sendTime,
          int? createTime,
          String? attachedInfo,
          String? ex}) =>
      TempCacheLocalChatLogData(
        clientMsgID: clientMsgID ?? this.clientMsgID,
        serverMsgID: serverMsgID ?? this.serverMsgID,
        sendID: sendID ?? this.sendID,
        recvID: recvID ?? this.recvID,
        senderPlatformID: senderPlatformID ?? this.senderPlatformID,
        senderNickname: senderNickname ?? this.senderNickname,
        senderFaceURL: senderFaceURL ?? this.senderFaceURL,
        sessionType: sessionType ?? this.sessionType,
        msgFrom: msgFrom ?? this.msgFrom,
        contentType: contentType ?? this.contentType,
        content: content ?? this.content,
        isRead: isRead ?? this.isRead,
        status: status ?? this.status,
        seq: seq ?? this.seq,
        sendTime: sendTime ?? this.sendTime,
        createTime: createTime ?? this.createTime,
        attachedInfo: attachedInfo ?? this.attachedInfo,
        ex: ex ?? this.ex,
      );
  TempCacheLocalChatLogData copyWithCompanion(
      TempCacheLocalChatLogCompanion data) {
    return TempCacheLocalChatLogData(
      clientMsgID:
          data.clientMsgID.present ? data.clientMsgID.value : this.clientMsgID,
      serverMsgID:
          data.serverMsgID.present ? data.serverMsgID.value : this.serverMsgID,
      sendID: data.sendID.present ? data.sendID.value : this.sendID,
      recvID: data.recvID.present ? data.recvID.value : this.recvID,
      senderPlatformID: data.senderPlatformID.present
          ? data.senderPlatformID.value
          : this.senderPlatformID,
      senderNickname: data.senderNickname.present
          ? data.senderNickname.value
          : this.senderNickname,
      senderFaceURL: data.senderFaceURL.present
          ? data.senderFaceURL.value
          : this.senderFaceURL,
      sessionType:
          data.sessionType.present ? data.sessionType.value : this.sessionType,
      msgFrom: data.msgFrom.present ? data.msgFrom.value : this.msgFrom,
      contentType:
          data.contentType.present ? data.contentType.value : this.contentType,
      content: data.content.present ? data.content.value : this.content,
      isRead: data.isRead.present ? data.isRead.value : this.isRead,
      status: data.status.present ? data.status.value : this.status,
      seq: data.seq.present ? data.seq.value : this.seq,
      sendTime: data.sendTime.present ? data.sendTime.value : this.sendTime,
      createTime:
          data.createTime.present ? data.createTime.value : this.createTime,
      attachedInfo: data.attachedInfo.present
          ? data.attachedInfo.value
          : this.attachedInfo,
      ex: data.ex.present ? data.ex.value : this.ex,
    );
  }

  @override
  String toString() {
    return (StringBuffer('TempCacheLocalChatLogData(')
          ..write('clientMsgID: $clientMsgID, ')
          ..write('serverMsgID: $serverMsgID, ')
          ..write('sendID: $sendID, ')
          ..write('recvID: $recvID, ')
          ..write('senderPlatformID: $senderPlatformID, ')
          ..write('senderNickname: $senderNickname, ')
          ..write('senderFaceURL: $senderFaceURL, ')
          ..write('sessionType: $sessionType, ')
          ..write('msgFrom: $msgFrom, ')
          ..write('contentType: $contentType, ')
          ..write('content: $content, ')
          ..write('isRead: $isRead, ')
          ..write('status: $status, ')
          ..write('seq: $seq, ')
          ..write('sendTime: $sendTime, ')
          ..write('createTime: $createTime, ')
          ..write('attachedInfo: $attachedInfo, ')
          ..write('ex: $ex')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      clientMsgID,
      serverMsgID,
      sendID,
      recvID,
      senderPlatformID,
      senderNickname,
      senderFaceURL,
      sessionType,
      msgFrom,
      contentType,
      content,
      isRead,
      status,
      seq,
      sendTime,
      createTime,
      attachedInfo,
      ex);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is TempCacheLocalChatLogData &&
          other.clientMsgID == this.clientMsgID &&
          other.serverMsgID == this.serverMsgID &&
          other.sendID == this.sendID &&
          other.recvID == this.recvID &&
          other.senderPlatformID == this.senderPlatformID &&
          other.senderNickname == this.senderNickname &&
          other.senderFaceURL == this.senderFaceURL &&
          other.sessionType == this.sessionType &&
          other.msgFrom == this.msgFrom &&
          other.contentType == this.contentType &&
          other.content == this.content &&
          other.isRead == this.isRead &&
          other.status == this.status &&
          other.seq == this.seq &&
          other.sendTime == this.sendTime &&
          other.createTime == this.createTime &&
          other.attachedInfo == this.attachedInfo &&
          other.ex == this.ex);
}

class TempCacheLocalChatLogCompanion
    extends UpdateCompanion<TempCacheLocalChatLogData> {
  final Value<String> clientMsgID;
  final Value<String> serverMsgID;
  final Value<String> sendID;
  final Value<String> recvID;
  final Value<int> senderPlatformID;
  final Value<String> senderNickname;
  final Value<String> senderFaceURL;
  final Value<int> sessionType;
  final Value<int> msgFrom;
  final Value<int> contentType;
  final Value<String> content;
  final Value<bool> isRead;
  final Value<int> status;
  final Value<int> seq;
  final Value<int> sendTime;
  final Value<int> createTime;
  final Value<String> attachedInfo;
  final Value<String> ex;
  final Value<int> rowid;
  const TempCacheLocalChatLogCompanion({
    this.clientMsgID = const Value.absent(),
    this.serverMsgID = const Value.absent(),
    this.sendID = const Value.absent(),
    this.recvID = const Value.absent(),
    this.senderPlatformID = const Value.absent(),
    this.senderNickname = const Value.absent(),
    this.senderFaceURL = const Value.absent(),
    this.sessionType = const Value.absent(),
    this.msgFrom = const Value.absent(),
    this.contentType = const Value.absent(),
    this.content = const Value.absent(),
    this.isRead = const Value.absent(),
    this.status = const Value.absent(),
    this.seq = const Value.absent(),
    this.sendTime = const Value.absent(),
    this.createTime = const Value.absent(),
    this.attachedInfo = const Value.absent(),
    this.ex = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  TempCacheLocalChatLogCompanion.insert({
    required String clientMsgID,
    required String serverMsgID,
    required String sendID,
    required String recvID,
    required int senderPlatformID,
    required String senderNickname,
    required String senderFaceURL,
    required int sessionType,
    required int msgFrom,
    required int contentType,
    required String content,
    required bool isRead,
    required int status,
    this.seq = const Value.absent(),
    required int sendTime,
    required int createTime,
    required String attachedInfo,
    required String ex,
    this.rowid = const Value.absent(),
  })  : clientMsgID = Value(clientMsgID),
        serverMsgID = Value(serverMsgID),
        sendID = Value(sendID),
        recvID = Value(recvID),
        senderPlatformID = Value(senderPlatformID),
        senderNickname = Value(senderNickname),
        senderFaceURL = Value(senderFaceURL),
        sessionType = Value(sessionType),
        msgFrom = Value(msgFrom),
        contentType = Value(contentType),
        content = Value(content),
        isRead = Value(isRead),
        status = Value(status),
        sendTime = Value(sendTime),
        createTime = Value(createTime),
        attachedInfo = Value(attachedInfo),
        ex = Value(ex);
  static Insertable<TempCacheLocalChatLogData> custom({
    Expression<String>? clientMsgID,
    Expression<String>? serverMsgID,
    Expression<String>? sendID,
    Expression<String>? recvID,
    Expression<int>? senderPlatformID,
    Expression<String>? senderNickname,
    Expression<String>? senderFaceURL,
    Expression<int>? sessionType,
    Expression<int>? msgFrom,
    Expression<int>? contentType,
    Expression<String>? content,
    Expression<bool>? isRead,
    Expression<int>? status,
    Expression<int>? seq,
    Expression<int>? sendTime,
    Expression<int>? createTime,
    Expression<String>? attachedInfo,
    Expression<String>? ex,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (clientMsgID != null) 'client_msg_id': clientMsgID,
      if (serverMsgID != null) 'server_msg_id': serverMsgID,
      if (sendID != null) 'send_id': sendID,
      if (recvID != null) 'recv_id': recvID,
      if (senderPlatformID != null) 'sender_platform_id': senderPlatformID,
      if (senderNickname != null) 'sender_nickname': senderNickname,
      if (senderFaceURL != null) 'sender_face_url': senderFaceURL,
      if (sessionType != null) 'session_type': sessionType,
      if (msgFrom != null) 'msg_from': msgFrom,
      if (contentType != null) 'content_type': contentType,
      if (content != null) 'content': content,
      if (isRead != null) 'is_read': isRead,
      if (status != null) 'status': status,
      if (seq != null) 'seq': seq,
      if (sendTime != null) 'send_time': sendTime,
      if (createTime != null) 'create_time': createTime,
      if (attachedInfo != null) 'attached_info': attachedInfo,
      if (ex != null) 'ex': ex,
      if (rowid != null) 'rowid': rowid,
    });
  }

  TempCacheLocalChatLogCompanion copyWith(
      {Value<String>? clientMsgID,
      Value<String>? serverMsgID,
      Value<String>? sendID,
      Value<String>? recvID,
      Value<int>? senderPlatformID,
      Value<String>? senderNickname,
      Value<String>? senderFaceURL,
      Value<int>? sessionType,
      Value<int>? msgFrom,
      Value<int>? contentType,
      Value<String>? content,
      Value<bool>? isRead,
      Value<int>? status,
      Value<int>? seq,
      Value<int>? sendTime,
      Value<int>? createTime,
      Value<String>? attachedInfo,
      Value<String>? ex,
      Value<int>? rowid}) {
    return TempCacheLocalChatLogCompanion(
      clientMsgID: clientMsgID ?? this.clientMsgID,
      serverMsgID: serverMsgID ?? this.serverMsgID,
      sendID: sendID ?? this.sendID,
      recvID: recvID ?? this.recvID,
      senderPlatformID: senderPlatformID ?? this.senderPlatformID,
      senderNickname: senderNickname ?? this.senderNickname,
      senderFaceURL: senderFaceURL ?? this.senderFaceURL,
      sessionType: sessionType ?? this.sessionType,
      msgFrom: msgFrom ?? this.msgFrom,
      contentType: contentType ?? this.contentType,
      content: content ?? this.content,
      isRead: isRead ?? this.isRead,
      status: status ?? this.status,
      seq: seq ?? this.seq,
      sendTime: sendTime ?? this.sendTime,
      createTime: createTime ?? this.createTime,
      attachedInfo: attachedInfo ?? this.attachedInfo,
      ex: ex ?? this.ex,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (clientMsgID.present) {
      map['client_msg_id'] = Variable<String>(clientMsgID.value);
    }
    if (serverMsgID.present) {
      map['server_msg_id'] = Variable<String>(serverMsgID.value);
    }
    if (sendID.present) {
      map['send_id'] = Variable<String>(sendID.value);
    }
    if (recvID.present) {
      map['recv_id'] = Variable<String>(recvID.value);
    }
    if (senderPlatformID.present) {
      map['sender_platform_id'] = Variable<int>(senderPlatformID.value);
    }
    if (senderNickname.present) {
      map['sender_nickname'] = Variable<String>(senderNickname.value);
    }
    if (senderFaceURL.present) {
      map['sender_face_url'] = Variable<String>(senderFaceURL.value);
    }
    if (sessionType.present) {
      map['session_type'] = Variable<int>(sessionType.value);
    }
    if (msgFrom.present) {
      map['msg_from'] = Variable<int>(msgFrom.value);
    }
    if (contentType.present) {
      map['content_type'] = Variable<int>(contentType.value);
    }
    if (content.present) {
      map['content'] = Variable<String>(content.value);
    }
    if (isRead.present) {
      map['is_read'] = Variable<bool>(isRead.value);
    }
    if (status.present) {
      map['status'] = Variable<int>(status.value);
    }
    if (seq.present) {
      map['seq'] = Variable<int>(seq.value);
    }
    if (sendTime.present) {
      map['send_time'] = Variable<int>(sendTime.value);
    }
    if (createTime.present) {
      map['create_time'] = Variable<int>(createTime.value);
    }
    if (attachedInfo.present) {
      map['attached_info'] = Variable<String>(attachedInfo.value);
    }
    if (ex.present) {
      map['ex'] = Variable<String>(ex.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('TempCacheLocalChatLogCompanion(')
          ..write('clientMsgID: $clientMsgID, ')
          ..write('serverMsgID: $serverMsgID, ')
          ..write('sendID: $sendID, ')
          ..write('recvID: $recvID, ')
          ..write('senderPlatformID: $senderPlatformID, ')
          ..write('senderNickname: $senderNickname, ')
          ..write('senderFaceURL: $senderFaceURL, ')
          ..write('sessionType: $sessionType, ')
          ..write('msgFrom: $msgFrom, ')
          ..write('contentType: $contentType, ')
          ..write('content: $content, ')
          ..write('isRead: $isRead, ')
          ..write('status: $status, ')
          ..write('seq: $seq, ')
          ..write('sendTime: $sendTime, ')
          ..write('createTime: $createTime, ')
          ..write('attachedInfo: $attachedInfo, ')
          ..write('ex: $ex, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $LocalConversationTable extends LocalConversation
    with TableInfo<$LocalConversationTable, LocalConversationData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $LocalConversationTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _conversationIDMeta =
      const VerificationMeta('conversationID');
  @override
  late final GeneratedColumn<String> conversationID = GeneratedColumn<String>(
      'conversation_id', aliasedName, false,
      additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 128),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  static const VerificationMeta _conversationTypeMeta =
      const VerificationMeta('conversationType');
  @override
  late final GeneratedColumn<int> conversationType = GeneratedColumn<int>(
      'conversation_type', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _userIDMeta = const VerificationMeta('userID');
  @override
  late final GeneratedColumn<String> userID = GeneratedColumn<String>(
      'user_id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _groupIDMeta =
      const VerificationMeta('groupID');
  @override
  late final GeneratedColumn<String> groupID = GeneratedColumn<String>(
      'group_id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _showNameMeta =
      const VerificationMeta('showName');
  @override
  late final GeneratedColumn<String> showName = GeneratedColumn<String>(
      'show_name', aliasedName, false,
      additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 255),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  static const VerificationMeta _faceURLMeta =
      const VerificationMeta('faceURL');
  @override
  late final GeneratedColumn<String> faceURL = GeneratedColumn<String>(
      'face_url', aliasedName, false,
      additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 255),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  static const VerificationMeta _recvMsgOptMeta =
      const VerificationMeta('recvMsgOpt');
  @override
  late final GeneratedColumn<int> recvMsgOpt = GeneratedColumn<int>(
      'recv_msg_opt', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _unreadCountMeta =
      const VerificationMeta('unreadCount');
  @override
  late final GeneratedColumn<int> unreadCount = GeneratedColumn<int>(
      'unread_count', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _groupAtTypeMeta =
      const VerificationMeta('groupAtType');
  @override
  late final GeneratedColumn<int> groupAtType = GeneratedColumn<int>(
      'group_at_type', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _latestMsgMeta =
      const VerificationMeta('latestMsg');
  @override
  late final GeneratedColumn<String> latestMsg = GeneratedColumn<String>(
      'latest_msg', aliasedName, false,
      additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 1000),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  static const VerificationMeta _latestMsgSendTimeMeta =
      const VerificationMeta('latestMsgSendTime');
  @override
  late final GeneratedColumn<int> latestMsgSendTime = GeneratedColumn<int>(
      'latest_msg_send_time', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _draftTextMeta =
      const VerificationMeta('draftText');
  @override
  late final GeneratedColumn<String> draftText = GeneratedColumn<String>(
      'draft_text', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _draftTextTimeMeta =
      const VerificationMeta('draftTextTime');
  @override
  late final GeneratedColumn<int> draftTextTime = GeneratedColumn<int>(
      'draft_text_time', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _isPinnedMeta =
      const VerificationMeta('isPinned');
  @override
  late final GeneratedColumn<bool> isPinned = GeneratedColumn<bool>(
      'is_pinned', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("is_pinned" IN (0, 1))'));
  static const VerificationMeta _isPrivateChatMeta =
      const VerificationMeta('isPrivateChat');
  @override
  late final GeneratedColumn<bool> isPrivateChat = GeneratedColumn<bool>(
      'is_private_chat', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: true,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("is_private_chat" IN (0, 1))'));
  static const VerificationMeta _burnDurationMeta =
      const VerificationMeta('burnDuration');
  @override
  late final GeneratedColumn<int> burnDuration = GeneratedColumn<int>(
      'burn_duration', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultValue: const Constant(30));
  static const VerificationMeta _isNotInGroupMeta =
      const VerificationMeta('isNotInGroup');
  @override
  late final GeneratedColumn<bool> isNotInGroup = GeneratedColumn<bool>(
      'is_not_in_group', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: true,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("is_not_in_group" IN (0, 1))'));
  static const VerificationMeta _updateUnreadCountTimeMeta =
      const VerificationMeta('updateUnreadCountTime');
  @override
  late final GeneratedColumn<int> updateUnreadCountTime = GeneratedColumn<int>(
      'update_unread_count_time', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _attachedInfoMeta =
      const VerificationMeta('attachedInfo');
  @override
  late final GeneratedColumn<String> attachedInfo = GeneratedColumn<String>(
      'attached_info', aliasedName, false,
      additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 1024),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  static const VerificationMeta _exMeta = const VerificationMeta('ex');
  @override
  late final GeneratedColumn<String> ex = GeneratedColumn<String>(
      'ex', aliasedName, false,
      additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 1024),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  static const VerificationMeta _maxSeqMeta = const VerificationMeta('maxSeq');
  @override
  late final GeneratedColumn<int> maxSeq = GeneratedColumn<int>(
      'max_seq', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _minSeqMeta = const VerificationMeta('minSeq');
  @override
  late final GeneratedColumn<int> minSeq = GeneratedColumn<int>(
      'min_seq', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _hasReadSeqMeta =
      const VerificationMeta('hasReadSeq');
  @override
  late final GeneratedColumn<int> hasReadSeq = GeneratedColumn<int>(
      'has_read_seq', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _msgDestructTimeMeta =
      const VerificationMeta('msgDestructTime');
  @override
  late final GeneratedColumn<int> msgDestructTime = GeneratedColumn<int>(
      'msg_destruct_time', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultValue: const Constant(604800));
  static const VerificationMeta _isMsgDestructMeta =
      const VerificationMeta('isMsgDestruct');
  @override
  late final GeneratedColumn<bool> isMsgDestruct = GeneratedColumn<bool>(
      'is_msg_destruct', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("is_msg_destruct" IN (0, 1))'),
      defaultValue: const Constant(false));
  @override
  List<GeneratedColumn> get $columns => [
        conversationID,
        conversationType,
        userID,
        groupID,
        showName,
        faceURL,
        recvMsgOpt,
        unreadCount,
        groupAtType,
        latestMsg,
        latestMsgSendTime,
        draftText,
        draftTextTime,
        isPinned,
        isPrivateChat,
        burnDuration,
        isNotInGroup,
        updateUnreadCountTime,
        attachedInfo,
        ex,
        maxSeq,
        minSeq,
        hasReadSeq,
        msgDestructTime,
        isMsgDestruct
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'local_conversations';
  @override
  VerificationContext validateIntegrity(
      Insertable<LocalConversationData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('conversation_id')) {
      context.handle(
          _conversationIDMeta,
          conversationID.isAcceptableOrUnknown(
              data['conversation_id']!, _conversationIDMeta));
    } else if (isInserting) {
      context.missing(_conversationIDMeta);
    }
    if (data.containsKey('conversation_type')) {
      context.handle(
          _conversationTypeMeta,
          conversationType.isAcceptableOrUnknown(
              data['conversation_type']!, _conversationTypeMeta));
    } else if (isInserting) {
      context.missing(_conversationTypeMeta);
    }
    if (data.containsKey('user_id')) {
      context.handle(_userIDMeta,
          userID.isAcceptableOrUnknown(data['user_id']!, _userIDMeta));
    } else if (isInserting) {
      context.missing(_userIDMeta);
    }
    if (data.containsKey('group_id')) {
      context.handle(_groupIDMeta,
          groupID.isAcceptableOrUnknown(data['group_id']!, _groupIDMeta));
    } else if (isInserting) {
      context.missing(_groupIDMeta);
    }
    if (data.containsKey('show_name')) {
      context.handle(_showNameMeta,
          showName.isAcceptableOrUnknown(data['show_name']!, _showNameMeta));
    } else if (isInserting) {
      context.missing(_showNameMeta);
    }
    if (data.containsKey('face_url')) {
      context.handle(_faceURLMeta,
          faceURL.isAcceptableOrUnknown(data['face_url']!, _faceURLMeta));
    } else if (isInserting) {
      context.missing(_faceURLMeta);
    }
    if (data.containsKey('recv_msg_opt')) {
      context.handle(
          _recvMsgOptMeta,
          recvMsgOpt.isAcceptableOrUnknown(
              data['recv_msg_opt']!, _recvMsgOptMeta));
    } else if (isInserting) {
      context.missing(_recvMsgOptMeta);
    }
    if (data.containsKey('unread_count')) {
      context.handle(
          _unreadCountMeta,
          unreadCount.isAcceptableOrUnknown(
              data['unread_count']!, _unreadCountMeta));
    } else if (isInserting) {
      context.missing(_unreadCountMeta);
    }
    if (data.containsKey('group_at_type')) {
      context.handle(
          _groupAtTypeMeta,
          groupAtType.isAcceptableOrUnknown(
              data['group_at_type']!, _groupAtTypeMeta));
    } else if (isInserting) {
      context.missing(_groupAtTypeMeta);
    }
    if (data.containsKey('latest_msg')) {
      context.handle(_latestMsgMeta,
          latestMsg.isAcceptableOrUnknown(data['latest_msg']!, _latestMsgMeta));
    } else if (isInserting) {
      context.missing(_latestMsgMeta);
    }
    if (data.containsKey('latest_msg_send_time')) {
      context.handle(
          _latestMsgSendTimeMeta,
          latestMsgSendTime.isAcceptableOrUnknown(
              data['latest_msg_send_time']!, _latestMsgSendTimeMeta));
    } else if (isInserting) {
      context.missing(_latestMsgSendTimeMeta);
    }
    if (data.containsKey('draft_text')) {
      context.handle(_draftTextMeta,
          draftText.isAcceptableOrUnknown(data['draft_text']!, _draftTextMeta));
    } else if (isInserting) {
      context.missing(_draftTextMeta);
    }
    if (data.containsKey('draft_text_time')) {
      context.handle(
          _draftTextTimeMeta,
          draftTextTime.isAcceptableOrUnknown(
              data['draft_text_time']!, _draftTextTimeMeta));
    } else if (isInserting) {
      context.missing(_draftTextTimeMeta);
    }
    if (data.containsKey('is_pinned')) {
      context.handle(_isPinnedMeta,
          isPinned.isAcceptableOrUnknown(data['is_pinned']!, _isPinnedMeta));
    } else if (isInserting) {
      context.missing(_isPinnedMeta);
    }
    if (data.containsKey('is_private_chat')) {
      context.handle(
          _isPrivateChatMeta,
          isPrivateChat.isAcceptableOrUnknown(
              data['is_private_chat']!, _isPrivateChatMeta));
    } else if (isInserting) {
      context.missing(_isPrivateChatMeta);
    }
    if (data.containsKey('burn_duration')) {
      context.handle(
          _burnDurationMeta,
          burnDuration.isAcceptableOrUnknown(
              data['burn_duration']!, _burnDurationMeta));
    }
    if (data.containsKey('is_not_in_group')) {
      context.handle(
          _isNotInGroupMeta,
          isNotInGroup.isAcceptableOrUnknown(
              data['is_not_in_group']!, _isNotInGroupMeta));
    } else if (isInserting) {
      context.missing(_isNotInGroupMeta);
    }
    if (data.containsKey('update_unread_count_time')) {
      context.handle(
          _updateUnreadCountTimeMeta,
          updateUnreadCountTime.isAcceptableOrUnknown(
              data['update_unread_count_time']!, _updateUnreadCountTimeMeta));
    } else if (isInserting) {
      context.missing(_updateUnreadCountTimeMeta);
    }
    if (data.containsKey('attached_info')) {
      context.handle(
          _attachedInfoMeta,
          attachedInfo.isAcceptableOrUnknown(
              data['attached_info']!, _attachedInfoMeta));
    } else if (isInserting) {
      context.missing(_attachedInfoMeta);
    }
    if (data.containsKey('ex')) {
      context.handle(_exMeta, ex.isAcceptableOrUnknown(data['ex']!, _exMeta));
    } else if (isInserting) {
      context.missing(_exMeta);
    }
    if (data.containsKey('max_seq')) {
      context.handle(_maxSeqMeta,
          maxSeq.isAcceptableOrUnknown(data['max_seq']!, _maxSeqMeta));
    } else if (isInserting) {
      context.missing(_maxSeqMeta);
    }
    if (data.containsKey('min_seq')) {
      context.handle(_minSeqMeta,
          minSeq.isAcceptableOrUnknown(data['min_seq']!, _minSeqMeta));
    } else if (isInserting) {
      context.missing(_minSeqMeta);
    }
    if (data.containsKey('has_read_seq')) {
      context.handle(
          _hasReadSeqMeta,
          hasReadSeq.isAcceptableOrUnknown(
              data['has_read_seq']!, _hasReadSeqMeta));
    } else if (isInserting) {
      context.missing(_hasReadSeqMeta);
    }
    if (data.containsKey('msg_destruct_time')) {
      context.handle(
          _msgDestructTimeMeta,
          msgDestructTime.isAcceptableOrUnknown(
              data['msg_destruct_time']!, _msgDestructTimeMeta));
    }
    if (data.containsKey('is_msg_destruct')) {
      context.handle(
          _isMsgDestructMeta,
          isMsgDestruct.isAcceptableOrUnknown(
              data['is_msg_destruct']!, _isMsgDestructMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {conversationID};
  @override
  LocalConversationData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return LocalConversationData(
      conversationID: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}conversation_id'])!,
      conversationType: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}conversation_type'])!,
      userID: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}user_id'])!,
      groupID: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}group_id'])!,
      showName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}show_name'])!,
      faceURL: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}face_url'])!,
      recvMsgOpt: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}recv_msg_opt'])!,
      unreadCount: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}unread_count'])!,
      groupAtType: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}group_at_type'])!,
      latestMsg: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}latest_msg'])!,
      latestMsgSendTime: attachedDatabase.typeMapping.read(
          DriftSqlType.int, data['${effectivePrefix}latest_msg_send_time'])!,
      draftText: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}draft_text'])!,
      draftTextTime: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}draft_text_time'])!,
      isPinned: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_pinned'])!,
      isPrivateChat: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_private_chat'])!,
      burnDuration: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}burn_duration'])!,
      isNotInGroup: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_not_in_group'])!,
      updateUnreadCountTime: attachedDatabase.typeMapping.read(DriftSqlType.int,
          data['${effectivePrefix}update_unread_count_time'])!,
      attachedInfo: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}attached_info'])!,
      ex: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}ex'])!,
      maxSeq: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}max_seq'])!,
      minSeq: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}min_seq'])!,
      hasReadSeq: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}has_read_seq'])!,
      msgDestructTime: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}msg_destruct_time'])!,
      isMsgDestruct: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_msg_destruct'])!,
    );
  }

  @override
  $LocalConversationTable createAlias(String alias) {
    return $LocalConversationTable(attachedDatabase, alias);
  }
}

class LocalConversationData extends DataClass
    implements Insertable<LocalConversationData> {
  final String conversationID;
  final int conversationType;
  final String userID;
  final String groupID;
  final String showName;
  final String faceURL;
  final int recvMsgOpt;
  final int unreadCount;
  final int groupAtType;
  final String latestMsg;
  final int latestMsgSendTime;
  final String draftText;
  final int draftTextTime;
  final bool isPinned;
  final bool isPrivateChat;
  final int burnDuration;
  final bool isNotInGroup;
  final int updateUnreadCountTime;
  final String attachedInfo;
  final String ex;
  final int maxSeq;
  final int minSeq;
  final int hasReadSeq;
  final int msgDestructTime;
  final bool isMsgDestruct;
  const LocalConversationData(
      {required this.conversationID,
      required this.conversationType,
      required this.userID,
      required this.groupID,
      required this.showName,
      required this.faceURL,
      required this.recvMsgOpt,
      required this.unreadCount,
      required this.groupAtType,
      required this.latestMsg,
      required this.latestMsgSendTime,
      required this.draftText,
      required this.draftTextTime,
      required this.isPinned,
      required this.isPrivateChat,
      required this.burnDuration,
      required this.isNotInGroup,
      required this.updateUnreadCountTime,
      required this.attachedInfo,
      required this.ex,
      required this.maxSeq,
      required this.minSeq,
      required this.hasReadSeq,
      required this.msgDestructTime,
      required this.isMsgDestruct});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['conversation_id'] = Variable<String>(conversationID);
    map['conversation_type'] = Variable<int>(conversationType);
    map['user_id'] = Variable<String>(userID);
    map['group_id'] = Variable<String>(groupID);
    map['show_name'] = Variable<String>(showName);
    map['face_url'] = Variable<String>(faceURL);
    map['recv_msg_opt'] = Variable<int>(recvMsgOpt);
    map['unread_count'] = Variable<int>(unreadCount);
    map['group_at_type'] = Variable<int>(groupAtType);
    map['latest_msg'] = Variable<String>(latestMsg);
    map['latest_msg_send_time'] = Variable<int>(latestMsgSendTime);
    map['draft_text'] = Variable<String>(draftText);
    map['draft_text_time'] = Variable<int>(draftTextTime);
    map['is_pinned'] = Variable<bool>(isPinned);
    map['is_private_chat'] = Variable<bool>(isPrivateChat);
    map['burn_duration'] = Variable<int>(burnDuration);
    map['is_not_in_group'] = Variable<bool>(isNotInGroup);
    map['update_unread_count_time'] = Variable<int>(updateUnreadCountTime);
    map['attached_info'] = Variable<String>(attachedInfo);
    map['ex'] = Variable<String>(ex);
    map['max_seq'] = Variable<int>(maxSeq);
    map['min_seq'] = Variable<int>(minSeq);
    map['has_read_seq'] = Variable<int>(hasReadSeq);
    map['msg_destruct_time'] = Variable<int>(msgDestructTime);
    map['is_msg_destruct'] = Variable<bool>(isMsgDestruct);
    return map;
  }

  LocalConversationCompanion toCompanion(bool nullToAbsent) {
    return LocalConversationCompanion(
      conversationID: Value(conversationID),
      conversationType: Value(conversationType),
      userID: Value(userID),
      groupID: Value(groupID),
      showName: Value(showName),
      faceURL: Value(faceURL),
      recvMsgOpt: Value(recvMsgOpt),
      unreadCount: Value(unreadCount),
      groupAtType: Value(groupAtType),
      latestMsg: Value(latestMsg),
      latestMsgSendTime: Value(latestMsgSendTime),
      draftText: Value(draftText),
      draftTextTime: Value(draftTextTime),
      isPinned: Value(isPinned),
      isPrivateChat: Value(isPrivateChat),
      burnDuration: Value(burnDuration),
      isNotInGroup: Value(isNotInGroup),
      updateUnreadCountTime: Value(updateUnreadCountTime),
      attachedInfo: Value(attachedInfo),
      ex: Value(ex),
      maxSeq: Value(maxSeq),
      minSeq: Value(minSeq),
      hasReadSeq: Value(hasReadSeq),
      msgDestructTime: Value(msgDestructTime),
      isMsgDestruct: Value(isMsgDestruct),
    );
  }

  factory LocalConversationData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return LocalConversationData(
      conversationID: serializer.fromJson<String>(json['conversationID']),
      conversationType: serializer.fromJson<int>(json['conversationType']),
      userID: serializer.fromJson<String>(json['userID']),
      groupID: serializer.fromJson<String>(json['groupID']),
      showName: serializer.fromJson<String>(json['showName']),
      faceURL: serializer.fromJson<String>(json['faceURL']),
      recvMsgOpt: serializer.fromJson<int>(json['recvMsgOpt']),
      unreadCount: serializer.fromJson<int>(json['unreadCount']),
      groupAtType: serializer.fromJson<int>(json['groupAtType']),
      latestMsg: serializer.fromJson<String>(json['latestMsg']),
      latestMsgSendTime: serializer.fromJson<int>(json['latestMsgSendTime']),
      draftText: serializer.fromJson<String>(json['draftText']),
      draftTextTime: serializer.fromJson<int>(json['draftTextTime']),
      isPinned: serializer.fromJson<bool>(json['isPinned']),
      isPrivateChat: serializer.fromJson<bool>(json['isPrivateChat']),
      burnDuration: serializer.fromJson<int>(json['burnDuration']),
      isNotInGroup: serializer.fromJson<bool>(json['isNotInGroup']),
      updateUnreadCountTime:
          serializer.fromJson<int>(json['updateUnreadCountTime']),
      attachedInfo: serializer.fromJson<String>(json['attachedInfo']),
      ex: serializer.fromJson<String>(json['ex']),
      maxSeq: serializer.fromJson<int>(json['maxSeq']),
      minSeq: serializer.fromJson<int>(json['minSeq']),
      hasReadSeq: serializer.fromJson<int>(json['hasReadSeq']),
      msgDestructTime: serializer.fromJson<int>(json['msgDestructTime']),
      isMsgDestruct: serializer.fromJson<bool>(json['isMsgDestruct']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'conversationID': serializer.toJson<String>(conversationID),
      'conversationType': serializer.toJson<int>(conversationType),
      'userID': serializer.toJson<String>(userID),
      'groupID': serializer.toJson<String>(groupID),
      'showName': serializer.toJson<String>(showName),
      'faceURL': serializer.toJson<String>(faceURL),
      'recvMsgOpt': serializer.toJson<int>(recvMsgOpt),
      'unreadCount': serializer.toJson<int>(unreadCount),
      'groupAtType': serializer.toJson<int>(groupAtType),
      'latestMsg': serializer.toJson<String>(latestMsg),
      'latestMsgSendTime': serializer.toJson<int>(latestMsgSendTime),
      'draftText': serializer.toJson<String>(draftText),
      'draftTextTime': serializer.toJson<int>(draftTextTime),
      'isPinned': serializer.toJson<bool>(isPinned),
      'isPrivateChat': serializer.toJson<bool>(isPrivateChat),
      'burnDuration': serializer.toJson<int>(burnDuration),
      'isNotInGroup': serializer.toJson<bool>(isNotInGroup),
      'updateUnreadCountTime': serializer.toJson<int>(updateUnreadCountTime),
      'attachedInfo': serializer.toJson<String>(attachedInfo),
      'ex': serializer.toJson<String>(ex),
      'maxSeq': serializer.toJson<int>(maxSeq),
      'minSeq': serializer.toJson<int>(minSeq),
      'hasReadSeq': serializer.toJson<int>(hasReadSeq),
      'msgDestructTime': serializer.toJson<int>(msgDestructTime),
      'isMsgDestruct': serializer.toJson<bool>(isMsgDestruct),
    };
  }

  LocalConversationData copyWith(
          {String? conversationID,
          int? conversationType,
          String? userID,
          String? groupID,
          String? showName,
          String? faceURL,
          int? recvMsgOpt,
          int? unreadCount,
          int? groupAtType,
          String? latestMsg,
          int? latestMsgSendTime,
          String? draftText,
          int? draftTextTime,
          bool? isPinned,
          bool? isPrivateChat,
          int? burnDuration,
          bool? isNotInGroup,
          int? updateUnreadCountTime,
          String? attachedInfo,
          String? ex,
          int? maxSeq,
          int? minSeq,
          int? hasReadSeq,
          int? msgDestructTime,
          bool? isMsgDestruct}) =>
      LocalConversationData(
        conversationID: conversationID ?? this.conversationID,
        conversationType: conversationType ?? this.conversationType,
        userID: userID ?? this.userID,
        groupID: groupID ?? this.groupID,
        showName: showName ?? this.showName,
        faceURL: faceURL ?? this.faceURL,
        recvMsgOpt: recvMsgOpt ?? this.recvMsgOpt,
        unreadCount: unreadCount ?? this.unreadCount,
        groupAtType: groupAtType ?? this.groupAtType,
        latestMsg: latestMsg ?? this.latestMsg,
        latestMsgSendTime: latestMsgSendTime ?? this.latestMsgSendTime,
        draftText: draftText ?? this.draftText,
        draftTextTime: draftTextTime ?? this.draftTextTime,
        isPinned: isPinned ?? this.isPinned,
        isPrivateChat: isPrivateChat ?? this.isPrivateChat,
        burnDuration: burnDuration ?? this.burnDuration,
        isNotInGroup: isNotInGroup ?? this.isNotInGroup,
        updateUnreadCountTime:
            updateUnreadCountTime ?? this.updateUnreadCountTime,
        attachedInfo: attachedInfo ?? this.attachedInfo,
        ex: ex ?? this.ex,
        maxSeq: maxSeq ?? this.maxSeq,
        minSeq: minSeq ?? this.minSeq,
        hasReadSeq: hasReadSeq ?? this.hasReadSeq,
        msgDestructTime: msgDestructTime ?? this.msgDestructTime,
        isMsgDestruct: isMsgDestruct ?? this.isMsgDestruct,
      );
  LocalConversationData copyWithCompanion(LocalConversationCompanion data) {
    return LocalConversationData(
      conversationID: data.conversationID.present
          ? data.conversationID.value
          : this.conversationID,
      conversationType: data.conversationType.present
          ? data.conversationType.value
          : this.conversationType,
      userID: data.userID.present ? data.userID.value : this.userID,
      groupID: data.groupID.present ? data.groupID.value : this.groupID,
      showName: data.showName.present ? data.showName.value : this.showName,
      faceURL: data.faceURL.present ? data.faceURL.value : this.faceURL,
      recvMsgOpt:
          data.recvMsgOpt.present ? data.recvMsgOpt.value : this.recvMsgOpt,
      unreadCount:
          data.unreadCount.present ? data.unreadCount.value : this.unreadCount,
      groupAtType:
          data.groupAtType.present ? data.groupAtType.value : this.groupAtType,
      latestMsg: data.latestMsg.present ? data.latestMsg.value : this.latestMsg,
      latestMsgSendTime: data.latestMsgSendTime.present
          ? data.latestMsgSendTime.value
          : this.latestMsgSendTime,
      draftText: data.draftText.present ? data.draftText.value : this.draftText,
      draftTextTime: data.draftTextTime.present
          ? data.draftTextTime.value
          : this.draftTextTime,
      isPinned: data.isPinned.present ? data.isPinned.value : this.isPinned,
      isPrivateChat: data.isPrivateChat.present
          ? data.isPrivateChat.value
          : this.isPrivateChat,
      burnDuration: data.burnDuration.present
          ? data.burnDuration.value
          : this.burnDuration,
      isNotInGroup: data.isNotInGroup.present
          ? data.isNotInGroup.value
          : this.isNotInGroup,
      updateUnreadCountTime: data.updateUnreadCountTime.present
          ? data.updateUnreadCountTime.value
          : this.updateUnreadCountTime,
      attachedInfo: data.attachedInfo.present
          ? data.attachedInfo.value
          : this.attachedInfo,
      ex: data.ex.present ? data.ex.value : this.ex,
      maxSeq: data.maxSeq.present ? data.maxSeq.value : this.maxSeq,
      minSeq: data.minSeq.present ? data.minSeq.value : this.minSeq,
      hasReadSeq:
          data.hasReadSeq.present ? data.hasReadSeq.value : this.hasReadSeq,
      msgDestructTime: data.msgDestructTime.present
          ? data.msgDestructTime.value
          : this.msgDestructTime,
      isMsgDestruct: data.isMsgDestruct.present
          ? data.isMsgDestruct.value
          : this.isMsgDestruct,
    );
  }

  @override
  String toString() {
    return (StringBuffer('LocalConversationData(')
          ..write('conversationID: $conversationID, ')
          ..write('conversationType: $conversationType, ')
          ..write('userID: $userID, ')
          ..write('groupID: $groupID, ')
          ..write('showName: $showName, ')
          ..write('faceURL: $faceURL, ')
          ..write('recvMsgOpt: $recvMsgOpt, ')
          ..write('unreadCount: $unreadCount, ')
          ..write('groupAtType: $groupAtType, ')
          ..write('latestMsg: $latestMsg, ')
          ..write('latestMsgSendTime: $latestMsgSendTime, ')
          ..write('draftText: $draftText, ')
          ..write('draftTextTime: $draftTextTime, ')
          ..write('isPinned: $isPinned, ')
          ..write('isPrivateChat: $isPrivateChat, ')
          ..write('burnDuration: $burnDuration, ')
          ..write('isNotInGroup: $isNotInGroup, ')
          ..write('updateUnreadCountTime: $updateUnreadCountTime, ')
          ..write('attachedInfo: $attachedInfo, ')
          ..write('ex: $ex, ')
          ..write('maxSeq: $maxSeq, ')
          ..write('minSeq: $minSeq, ')
          ..write('hasReadSeq: $hasReadSeq, ')
          ..write('msgDestructTime: $msgDestructTime, ')
          ..write('isMsgDestruct: $isMsgDestruct')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hashAll([
        conversationID,
        conversationType,
        userID,
        groupID,
        showName,
        faceURL,
        recvMsgOpt,
        unreadCount,
        groupAtType,
        latestMsg,
        latestMsgSendTime,
        draftText,
        draftTextTime,
        isPinned,
        isPrivateChat,
        burnDuration,
        isNotInGroup,
        updateUnreadCountTime,
        attachedInfo,
        ex,
        maxSeq,
        minSeq,
        hasReadSeq,
        msgDestructTime,
        isMsgDestruct
      ]);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is LocalConversationData &&
          other.conversationID == this.conversationID &&
          other.conversationType == this.conversationType &&
          other.userID == this.userID &&
          other.groupID == this.groupID &&
          other.showName == this.showName &&
          other.faceURL == this.faceURL &&
          other.recvMsgOpt == this.recvMsgOpt &&
          other.unreadCount == this.unreadCount &&
          other.groupAtType == this.groupAtType &&
          other.latestMsg == this.latestMsg &&
          other.latestMsgSendTime == this.latestMsgSendTime &&
          other.draftText == this.draftText &&
          other.draftTextTime == this.draftTextTime &&
          other.isPinned == this.isPinned &&
          other.isPrivateChat == this.isPrivateChat &&
          other.burnDuration == this.burnDuration &&
          other.isNotInGroup == this.isNotInGroup &&
          other.updateUnreadCountTime == this.updateUnreadCountTime &&
          other.attachedInfo == this.attachedInfo &&
          other.ex == this.ex &&
          other.maxSeq == this.maxSeq &&
          other.minSeq == this.minSeq &&
          other.hasReadSeq == this.hasReadSeq &&
          other.msgDestructTime == this.msgDestructTime &&
          other.isMsgDestruct == this.isMsgDestruct);
}

class LocalConversationCompanion
    extends UpdateCompanion<LocalConversationData> {
  final Value<String> conversationID;
  final Value<int> conversationType;
  final Value<String> userID;
  final Value<String> groupID;
  final Value<String> showName;
  final Value<String> faceURL;
  final Value<int> recvMsgOpt;
  final Value<int> unreadCount;
  final Value<int> groupAtType;
  final Value<String> latestMsg;
  final Value<int> latestMsgSendTime;
  final Value<String> draftText;
  final Value<int> draftTextTime;
  final Value<bool> isPinned;
  final Value<bool> isPrivateChat;
  final Value<int> burnDuration;
  final Value<bool> isNotInGroup;
  final Value<int> updateUnreadCountTime;
  final Value<String> attachedInfo;
  final Value<String> ex;
  final Value<int> maxSeq;
  final Value<int> minSeq;
  final Value<int> hasReadSeq;
  final Value<int> msgDestructTime;
  final Value<bool> isMsgDestruct;
  final Value<int> rowid;
  const LocalConversationCompanion({
    this.conversationID = const Value.absent(),
    this.conversationType = const Value.absent(),
    this.userID = const Value.absent(),
    this.groupID = const Value.absent(),
    this.showName = const Value.absent(),
    this.faceURL = const Value.absent(),
    this.recvMsgOpt = const Value.absent(),
    this.unreadCount = const Value.absent(),
    this.groupAtType = const Value.absent(),
    this.latestMsg = const Value.absent(),
    this.latestMsgSendTime = const Value.absent(),
    this.draftText = const Value.absent(),
    this.draftTextTime = const Value.absent(),
    this.isPinned = const Value.absent(),
    this.isPrivateChat = const Value.absent(),
    this.burnDuration = const Value.absent(),
    this.isNotInGroup = const Value.absent(),
    this.updateUnreadCountTime = const Value.absent(),
    this.attachedInfo = const Value.absent(),
    this.ex = const Value.absent(),
    this.maxSeq = const Value.absent(),
    this.minSeq = const Value.absent(),
    this.hasReadSeq = const Value.absent(),
    this.msgDestructTime = const Value.absent(),
    this.isMsgDestruct = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  LocalConversationCompanion.insert({
    required String conversationID,
    required int conversationType,
    required String userID,
    required String groupID,
    required String showName,
    required String faceURL,
    required int recvMsgOpt,
    required int unreadCount,
    required int groupAtType,
    required String latestMsg,
    required int latestMsgSendTime,
    required String draftText,
    required int draftTextTime,
    required bool isPinned,
    required bool isPrivateChat,
    this.burnDuration = const Value.absent(),
    required bool isNotInGroup,
    required int updateUnreadCountTime,
    required String attachedInfo,
    required String ex,
    required int maxSeq,
    required int minSeq,
    required int hasReadSeq,
    this.msgDestructTime = const Value.absent(),
    this.isMsgDestruct = const Value.absent(),
    this.rowid = const Value.absent(),
  })  : conversationID = Value(conversationID),
        conversationType = Value(conversationType),
        userID = Value(userID),
        groupID = Value(groupID),
        showName = Value(showName),
        faceURL = Value(faceURL),
        recvMsgOpt = Value(recvMsgOpt),
        unreadCount = Value(unreadCount),
        groupAtType = Value(groupAtType),
        latestMsg = Value(latestMsg),
        latestMsgSendTime = Value(latestMsgSendTime),
        draftText = Value(draftText),
        draftTextTime = Value(draftTextTime),
        isPinned = Value(isPinned),
        isPrivateChat = Value(isPrivateChat),
        isNotInGroup = Value(isNotInGroup),
        updateUnreadCountTime = Value(updateUnreadCountTime),
        attachedInfo = Value(attachedInfo),
        ex = Value(ex),
        maxSeq = Value(maxSeq),
        minSeq = Value(minSeq),
        hasReadSeq = Value(hasReadSeq);
  static Insertable<LocalConversationData> custom({
    Expression<String>? conversationID,
    Expression<int>? conversationType,
    Expression<String>? userID,
    Expression<String>? groupID,
    Expression<String>? showName,
    Expression<String>? faceURL,
    Expression<int>? recvMsgOpt,
    Expression<int>? unreadCount,
    Expression<int>? groupAtType,
    Expression<String>? latestMsg,
    Expression<int>? latestMsgSendTime,
    Expression<String>? draftText,
    Expression<int>? draftTextTime,
    Expression<bool>? isPinned,
    Expression<bool>? isPrivateChat,
    Expression<int>? burnDuration,
    Expression<bool>? isNotInGroup,
    Expression<int>? updateUnreadCountTime,
    Expression<String>? attachedInfo,
    Expression<String>? ex,
    Expression<int>? maxSeq,
    Expression<int>? minSeq,
    Expression<int>? hasReadSeq,
    Expression<int>? msgDestructTime,
    Expression<bool>? isMsgDestruct,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (conversationID != null) 'conversation_id': conversationID,
      if (conversationType != null) 'conversation_type': conversationType,
      if (userID != null) 'user_id': userID,
      if (groupID != null) 'group_id': groupID,
      if (showName != null) 'show_name': showName,
      if (faceURL != null) 'face_url': faceURL,
      if (recvMsgOpt != null) 'recv_msg_opt': recvMsgOpt,
      if (unreadCount != null) 'unread_count': unreadCount,
      if (groupAtType != null) 'group_at_type': groupAtType,
      if (latestMsg != null) 'latest_msg': latestMsg,
      if (latestMsgSendTime != null) 'latest_msg_send_time': latestMsgSendTime,
      if (draftText != null) 'draft_text': draftText,
      if (draftTextTime != null) 'draft_text_time': draftTextTime,
      if (isPinned != null) 'is_pinned': isPinned,
      if (isPrivateChat != null) 'is_private_chat': isPrivateChat,
      if (burnDuration != null) 'burn_duration': burnDuration,
      if (isNotInGroup != null) 'is_not_in_group': isNotInGroup,
      if (updateUnreadCountTime != null)
        'update_unread_count_time': updateUnreadCountTime,
      if (attachedInfo != null) 'attached_info': attachedInfo,
      if (ex != null) 'ex': ex,
      if (maxSeq != null) 'max_seq': maxSeq,
      if (minSeq != null) 'min_seq': minSeq,
      if (hasReadSeq != null) 'has_read_seq': hasReadSeq,
      if (msgDestructTime != null) 'msg_destruct_time': msgDestructTime,
      if (isMsgDestruct != null) 'is_msg_destruct': isMsgDestruct,
      if (rowid != null) 'rowid': rowid,
    });
  }

  LocalConversationCompanion copyWith(
      {Value<String>? conversationID,
      Value<int>? conversationType,
      Value<String>? userID,
      Value<String>? groupID,
      Value<String>? showName,
      Value<String>? faceURL,
      Value<int>? recvMsgOpt,
      Value<int>? unreadCount,
      Value<int>? groupAtType,
      Value<String>? latestMsg,
      Value<int>? latestMsgSendTime,
      Value<String>? draftText,
      Value<int>? draftTextTime,
      Value<bool>? isPinned,
      Value<bool>? isPrivateChat,
      Value<int>? burnDuration,
      Value<bool>? isNotInGroup,
      Value<int>? updateUnreadCountTime,
      Value<String>? attachedInfo,
      Value<String>? ex,
      Value<int>? maxSeq,
      Value<int>? minSeq,
      Value<int>? hasReadSeq,
      Value<int>? msgDestructTime,
      Value<bool>? isMsgDestruct,
      Value<int>? rowid}) {
    return LocalConversationCompanion(
      conversationID: conversationID ?? this.conversationID,
      conversationType: conversationType ?? this.conversationType,
      userID: userID ?? this.userID,
      groupID: groupID ?? this.groupID,
      showName: showName ?? this.showName,
      faceURL: faceURL ?? this.faceURL,
      recvMsgOpt: recvMsgOpt ?? this.recvMsgOpt,
      unreadCount: unreadCount ?? this.unreadCount,
      groupAtType: groupAtType ?? this.groupAtType,
      latestMsg: latestMsg ?? this.latestMsg,
      latestMsgSendTime: latestMsgSendTime ?? this.latestMsgSendTime,
      draftText: draftText ?? this.draftText,
      draftTextTime: draftTextTime ?? this.draftTextTime,
      isPinned: isPinned ?? this.isPinned,
      isPrivateChat: isPrivateChat ?? this.isPrivateChat,
      burnDuration: burnDuration ?? this.burnDuration,
      isNotInGroup: isNotInGroup ?? this.isNotInGroup,
      updateUnreadCountTime:
          updateUnreadCountTime ?? this.updateUnreadCountTime,
      attachedInfo: attachedInfo ?? this.attachedInfo,
      ex: ex ?? this.ex,
      maxSeq: maxSeq ?? this.maxSeq,
      minSeq: minSeq ?? this.minSeq,
      hasReadSeq: hasReadSeq ?? this.hasReadSeq,
      msgDestructTime: msgDestructTime ?? this.msgDestructTime,
      isMsgDestruct: isMsgDestruct ?? this.isMsgDestruct,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (conversationID.present) {
      map['conversation_id'] = Variable<String>(conversationID.value);
    }
    if (conversationType.present) {
      map['conversation_type'] = Variable<int>(conversationType.value);
    }
    if (userID.present) {
      map['user_id'] = Variable<String>(userID.value);
    }
    if (groupID.present) {
      map['group_id'] = Variable<String>(groupID.value);
    }
    if (showName.present) {
      map['show_name'] = Variable<String>(showName.value);
    }
    if (faceURL.present) {
      map['face_url'] = Variable<String>(faceURL.value);
    }
    if (recvMsgOpt.present) {
      map['recv_msg_opt'] = Variable<int>(recvMsgOpt.value);
    }
    if (unreadCount.present) {
      map['unread_count'] = Variable<int>(unreadCount.value);
    }
    if (groupAtType.present) {
      map['group_at_type'] = Variable<int>(groupAtType.value);
    }
    if (latestMsg.present) {
      map['latest_msg'] = Variable<String>(latestMsg.value);
    }
    if (latestMsgSendTime.present) {
      map['latest_msg_send_time'] = Variable<int>(latestMsgSendTime.value);
    }
    if (draftText.present) {
      map['draft_text'] = Variable<String>(draftText.value);
    }
    if (draftTextTime.present) {
      map['draft_text_time'] = Variable<int>(draftTextTime.value);
    }
    if (isPinned.present) {
      map['is_pinned'] = Variable<bool>(isPinned.value);
    }
    if (isPrivateChat.present) {
      map['is_private_chat'] = Variable<bool>(isPrivateChat.value);
    }
    if (burnDuration.present) {
      map['burn_duration'] = Variable<int>(burnDuration.value);
    }
    if (isNotInGroup.present) {
      map['is_not_in_group'] = Variable<bool>(isNotInGroup.value);
    }
    if (updateUnreadCountTime.present) {
      map['update_unread_count_time'] =
          Variable<int>(updateUnreadCountTime.value);
    }
    if (attachedInfo.present) {
      map['attached_info'] = Variable<String>(attachedInfo.value);
    }
    if (ex.present) {
      map['ex'] = Variable<String>(ex.value);
    }
    if (maxSeq.present) {
      map['max_seq'] = Variable<int>(maxSeq.value);
    }
    if (minSeq.present) {
      map['min_seq'] = Variable<int>(minSeq.value);
    }
    if (hasReadSeq.present) {
      map['has_read_seq'] = Variable<int>(hasReadSeq.value);
    }
    if (msgDestructTime.present) {
      map['msg_destruct_time'] = Variable<int>(msgDestructTime.value);
    }
    if (isMsgDestruct.present) {
      map['is_msg_destruct'] = Variable<bool>(isMsgDestruct.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('LocalConversationCompanion(')
          ..write('conversationID: $conversationID, ')
          ..write('conversationType: $conversationType, ')
          ..write('userID: $userID, ')
          ..write('groupID: $groupID, ')
          ..write('showName: $showName, ')
          ..write('faceURL: $faceURL, ')
          ..write('recvMsgOpt: $recvMsgOpt, ')
          ..write('unreadCount: $unreadCount, ')
          ..write('groupAtType: $groupAtType, ')
          ..write('latestMsg: $latestMsg, ')
          ..write('latestMsgSendTime: $latestMsgSendTime, ')
          ..write('draftText: $draftText, ')
          ..write('draftTextTime: $draftTextTime, ')
          ..write('isPinned: $isPinned, ')
          ..write('isPrivateChat: $isPrivateChat, ')
          ..write('burnDuration: $burnDuration, ')
          ..write('isNotInGroup: $isNotInGroup, ')
          ..write('updateUnreadCountTime: $updateUnreadCountTime, ')
          ..write('attachedInfo: $attachedInfo, ')
          ..write('ex: $ex, ')
          ..write('maxSeq: $maxSeq, ')
          ..write('minSeq: $minSeq, ')
          ..write('hasReadSeq: $hasReadSeq, ')
          ..write('msgDestructTime: $msgDestructTime, ')
          ..write('isMsgDestruct: $isMsgDestruct, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $LocalConversationUnreadMessageTable
    extends LocalConversationUnreadMessage
    with
        TableInfo<$LocalConversationUnreadMessageTable,
            LocalConversationUnreadMessageData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $LocalConversationUnreadMessageTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _conversationIDMeta =
      const VerificationMeta('conversationID');
  @override
  late final GeneratedColumn<String> conversationID = GeneratedColumn<String>(
      'conversation_id', aliasedName, false,
      additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 128),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  static const VerificationMeta _clientMsgIDMeta =
      const VerificationMeta('clientMsgID');
  @override
  late final GeneratedColumn<String> clientMsgID = GeneratedColumn<String>(
      'client_msg_id', aliasedName, false,
      additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 64),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  static const VerificationMeta _sendTimeMeta =
      const VerificationMeta('sendTime');
  @override
  late final GeneratedColumn<int> sendTime = GeneratedColumn<int>(
      'send_time', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _exMeta = const VerificationMeta('ex');
  @override
  late final GeneratedColumn<String> ex = GeneratedColumn<String>(
      'ex', aliasedName, false,
      additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 1024),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns =>
      [conversationID, clientMsgID, sendTime, ex];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'local_conversation_unread_message';
  @override
  VerificationContext validateIntegrity(
      Insertable<LocalConversationUnreadMessageData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('conversation_id')) {
      context.handle(
          _conversationIDMeta,
          conversationID.isAcceptableOrUnknown(
              data['conversation_id']!, _conversationIDMeta));
    } else if (isInserting) {
      context.missing(_conversationIDMeta);
    }
    if (data.containsKey('client_msg_id')) {
      context.handle(
          _clientMsgIDMeta,
          clientMsgID.isAcceptableOrUnknown(
              data['client_msg_id']!, _clientMsgIDMeta));
    } else if (isInserting) {
      context.missing(_clientMsgIDMeta);
    }
    if (data.containsKey('send_time')) {
      context.handle(_sendTimeMeta,
          sendTime.isAcceptableOrUnknown(data['send_time']!, _sendTimeMeta));
    } else if (isInserting) {
      context.missing(_sendTimeMeta);
    }
    if (data.containsKey('ex')) {
      context.handle(_exMeta, ex.isAcceptableOrUnknown(data['ex']!, _exMeta));
    } else if (isInserting) {
      context.missing(_exMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {conversationID, clientMsgID};
  @override
  LocalConversationUnreadMessageData map(Map<String, dynamic> data,
      {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return LocalConversationUnreadMessageData(
      conversationID: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}conversation_id'])!,
      clientMsgID: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}client_msg_id'])!,
      sendTime: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}send_time'])!,
      ex: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}ex'])!,
    );
  }

  @override
  $LocalConversationUnreadMessageTable createAlias(String alias) {
    return $LocalConversationUnreadMessageTable(attachedDatabase, alias);
  }
}

class LocalConversationUnreadMessageData extends DataClass
    implements Insertable<LocalConversationUnreadMessageData> {
  final String conversationID;
  final String clientMsgID;
  final int sendTime;
  final String ex;
  const LocalConversationUnreadMessageData(
      {required this.conversationID,
      required this.clientMsgID,
      required this.sendTime,
      required this.ex});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['conversation_id'] = Variable<String>(conversationID);
    map['client_msg_id'] = Variable<String>(clientMsgID);
    map['send_time'] = Variable<int>(sendTime);
    map['ex'] = Variable<String>(ex);
    return map;
  }

  LocalConversationUnreadMessageCompanion toCompanion(bool nullToAbsent) {
    return LocalConversationUnreadMessageCompanion(
      conversationID: Value(conversationID),
      clientMsgID: Value(clientMsgID),
      sendTime: Value(sendTime),
      ex: Value(ex),
    );
  }

  factory LocalConversationUnreadMessageData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return LocalConversationUnreadMessageData(
      conversationID: serializer.fromJson<String>(json['conversationID']),
      clientMsgID: serializer.fromJson<String>(json['clientMsgID']),
      sendTime: serializer.fromJson<int>(json['sendTime']),
      ex: serializer.fromJson<String>(json['ex']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'conversationID': serializer.toJson<String>(conversationID),
      'clientMsgID': serializer.toJson<String>(clientMsgID),
      'sendTime': serializer.toJson<int>(sendTime),
      'ex': serializer.toJson<String>(ex),
    };
  }

  LocalConversationUnreadMessageData copyWith(
          {String? conversationID,
          String? clientMsgID,
          int? sendTime,
          String? ex}) =>
      LocalConversationUnreadMessageData(
        conversationID: conversationID ?? this.conversationID,
        clientMsgID: clientMsgID ?? this.clientMsgID,
        sendTime: sendTime ?? this.sendTime,
        ex: ex ?? this.ex,
      );
  LocalConversationUnreadMessageData copyWithCompanion(
      LocalConversationUnreadMessageCompanion data) {
    return LocalConversationUnreadMessageData(
      conversationID: data.conversationID.present
          ? data.conversationID.value
          : this.conversationID,
      clientMsgID:
          data.clientMsgID.present ? data.clientMsgID.value : this.clientMsgID,
      sendTime: data.sendTime.present ? data.sendTime.value : this.sendTime,
      ex: data.ex.present ? data.ex.value : this.ex,
    );
  }

  @override
  String toString() {
    return (StringBuffer('LocalConversationUnreadMessageData(')
          ..write('conversationID: $conversationID, ')
          ..write('clientMsgID: $clientMsgID, ')
          ..write('sendTime: $sendTime, ')
          ..write('ex: $ex')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(conversationID, clientMsgID, sendTime, ex);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is LocalConversationUnreadMessageData &&
          other.conversationID == this.conversationID &&
          other.clientMsgID == this.clientMsgID &&
          other.sendTime == this.sendTime &&
          other.ex == this.ex);
}

class LocalConversationUnreadMessageCompanion
    extends UpdateCompanion<LocalConversationUnreadMessageData> {
  final Value<String> conversationID;
  final Value<String> clientMsgID;
  final Value<int> sendTime;
  final Value<String> ex;
  final Value<int> rowid;
  const LocalConversationUnreadMessageCompanion({
    this.conversationID = const Value.absent(),
    this.clientMsgID = const Value.absent(),
    this.sendTime = const Value.absent(),
    this.ex = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  LocalConversationUnreadMessageCompanion.insert({
    required String conversationID,
    required String clientMsgID,
    required int sendTime,
    required String ex,
    this.rowid = const Value.absent(),
  })  : conversationID = Value(conversationID),
        clientMsgID = Value(clientMsgID),
        sendTime = Value(sendTime),
        ex = Value(ex);
  static Insertable<LocalConversationUnreadMessageData> custom({
    Expression<String>? conversationID,
    Expression<String>? clientMsgID,
    Expression<int>? sendTime,
    Expression<String>? ex,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (conversationID != null) 'conversation_id': conversationID,
      if (clientMsgID != null) 'client_msg_id': clientMsgID,
      if (sendTime != null) 'send_time': sendTime,
      if (ex != null) 'ex': ex,
      if (rowid != null) 'rowid': rowid,
    });
  }

  LocalConversationUnreadMessageCompanion copyWith(
      {Value<String>? conversationID,
      Value<String>? clientMsgID,
      Value<int>? sendTime,
      Value<String>? ex,
      Value<int>? rowid}) {
    return LocalConversationUnreadMessageCompanion(
      conversationID: conversationID ?? this.conversationID,
      clientMsgID: clientMsgID ?? this.clientMsgID,
      sendTime: sendTime ?? this.sendTime,
      ex: ex ?? this.ex,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (conversationID.present) {
      map['conversation_id'] = Variable<String>(conversationID.value);
    }
    if (clientMsgID.present) {
      map['client_msg_id'] = Variable<String>(clientMsgID.value);
    }
    if (sendTime.present) {
      map['send_time'] = Variable<int>(sendTime.value);
    }
    if (ex.present) {
      map['ex'] = Variable<String>(ex.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('LocalConversationUnreadMessageCompanion(')
          ..write('conversationID: $conversationID, ')
          ..write('clientMsgID: $clientMsgID, ')
          ..write('sendTime: $sendTime, ')
          ..write('ex: $ex, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $LocalAdminGroupRequestsTable extends LocalAdminGroupRequests
    with TableInfo<$LocalAdminGroupRequestsTable, LocalAdminGroupRequest> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $LocalAdminGroupRequestsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _groupIDMeta =
      const VerificationMeta('groupID');
  @override
  late final GeneratedColumn<String> groupID = GeneratedColumn<String>(
      'group_id', aliasedName, false,
      additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 64),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  static const VerificationMeta _groupNameMeta =
      const VerificationMeta('groupName');
  @override
  late final GeneratedColumn<String> groupName = GeneratedColumn<String>(
      'group_name', aliasedName, false,
      additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 255),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  static const VerificationMeta _notificationMeta =
      const VerificationMeta('notification');
  @override
  late final GeneratedColumn<String> notification = GeneratedColumn<String>(
      'notification', aliasedName, false,
      additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 255),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  static const VerificationMeta _introductionMeta =
      const VerificationMeta('introduction');
  @override
  late final GeneratedColumn<String> introduction = GeneratedColumn<String>(
      'introduction', aliasedName, false,
      additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 255),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  static const VerificationMeta _groupFaceURLMeta =
      const VerificationMeta('groupFaceURL');
  @override
  late final GeneratedColumn<String> groupFaceURL = GeneratedColumn<String>(
      'group_face_url', aliasedName, false,
      additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 255),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  static const VerificationMeta _createTimeMeta =
      const VerificationMeta('createTime');
  @override
  late final GeneratedColumn<int> createTime = GeneratedColumn<int>(
      'create_time', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _statusMeta = const VerificationMeta('status');
  @override
  late final GeneratedColumn<int> status = GeneratedColumn<int>(
      'status', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _creatorUserIDMeta =
      const VerificationMeta('creatorUserID');
  @override
  late final GeneratedColumn<String> creatorUserID = GeneratedColumn<String>(
      'creator_user_id', aliasedName, false,
      additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 64),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  static const VerificationMeta _groupTypeMeta =
      const VerificationMeta('groupType');
  @override
  late final GeneratedColumn<int> groupType = GeneratedColumn<int>(
      'group_type', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _ownerUserIDMeta =
      const VerificationMeta('ownerUserID');
  @override
  late final GeneratedColumn<String> ownerUserID = GeneratedColumn<String>(
      'owner_user_id', aliasedName, false,
      additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 64),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  static const VerificationMeta _memberCountMeta =
      const VerificationMeta('memberCount');
  @override
  late final GeneratedColumn<int> memberCount = GeneratedColumn<int>(
      'member_count', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _userIDMeta = const VerificationMeta('userID');
  @override
  late final GeneratedColumn<String> userID = GeneratedColumn<String>(
      'user_id', aliasedName, false,
      additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 64),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  static const VerificationMeta _nicknameMeta =
      const VerificationMeta('nickname');
  @override
  late final GeneratedColumn<String> nickname = GeneratedColumn<String>(
      'nickname', aliasedName, false,
      additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 255),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  static const VerificationMeta _userFaceURLMeta =
      const VerificationMeta('userFaceURL');
  @override
  late final GeneratedColumn<String> userFaceURL = GeneratedColumn<String>(
      'user_face_url', aliasedName, false,
      additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 255),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  static const VerificationMeta _handleResultMeta =
      const VerificationMeta('handleResult');
  @override
  late final GeneratedColumn<int> handleResult = GeneratedColumn<int>(
      'handle_result', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _reqMsgMeta = const VerificationMeta('reqMsg');
  @override
  late final GeneratedColumn<String> reqMsg = GeneratedColumn<String>(
      'req_msg', aliasedName, false,
      additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 255),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  static const VerificationMeta _handleMsgMeta =
      const VerificationMeta('handleMsg');
  @override
  late final GeneratedColumn<String> handleMsg = GeneratedColumn<String>(
      'handle_msg', aliasedName, false,
      additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 255),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  static const VerificationMeta _reqTimeMeta =
      const VerificationMeta('reqTime');
  @override
  late final GeneratedColumn<int> reqTime = GeneratedColumn<int>(
      'req_time', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _handleUserIDMeta =
      const VerificationMeta('handleUserID');
  @override
  late final GeneratedColumn<String> handleUserID = GeneratedColumn<String>(
      'handle_user_id', aliasedName, false,
      additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 64),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  static const VerificationMeta _handleTimeMeta =
      const VerificationMeta('handleTime');
  @override
  late final GeneratedColumn<int> handleTime = GeneratedColumn<int>(
      'handle_time', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _exMeta = const VerificationMeta('ex');
  @override
  late final GeneratedColumn<String> ex = GeneratedColumn<String>(
      'ex', aliasedName, false,
      additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 1024),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  static const VerificationMeta _attachedInfoMeta =
      const VerificationMeta('attachedInfo');
  @override
  late final GeneratedColumn<String> attachedInfo = GeneratedColumn<String>(
      'attached_info', aliasedName, false,
      additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 1024),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  static const VerificationMeta _joinSourceMeta =
      const VerificationMeta('joinSource');
  @override
  late final GeneratedColumn<int> joinSource = GeneratedColumn<int>(
      'join_source', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _inviterUserIDMeta =
      const VerificationMeta('inviterUserID');
  @override
  late final GeneratedColumn<String> inviterUserID = GeneratedColumn<String>(
      'inviter_user_id', aliasedName, false,
      additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 64),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [
        groupID,
        groupName,
        notification,
        introduction,
        groupFaceURL,
        createTime,
        status,
        creatorUserID,
        groupType,
        ownerUserID,
        memberCount,
        userID,
        nickname,
        userFaceURL,
        handleResult,
        reqMsg,
        handleMsg,
        reqTime,
        handleUserID,
        handleTime,
        ex,
        attachedInfo,
        joinSource,
        inviterUserID
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'local_admin_group_requests';
  @override
  VerificationContext validateIntegrity(
      Insertable<LocalAdminGroupRequest> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('group_id')) {
      context.handle(_groupIDMeta,
          groupID.isAcceptableOrUnknown(data['group_id']!, _groupIDMeta));
    } else if (isInserting) {
      context.missing(_groupIDMeta);
    }
    if (data.containsKey('group_name')) {
      context.handle(_groupNameMeta,
          groupName.isAcceptableOrUnknown(data['group_name']!, _groupNameMeta));
    } else if (isInserting) {
      context.missing(_groupNameMeta);
    }
    if (data.containsKey('notification')) {
      context.handle(
          _notificationMeta,
          notification.isAcceptableOrUnknown(
              data['notification']!, _notificationMeta));
    } else if (isInserting) {
      context.missing(_notificationMeta);
    }
    if (data.containsKey('introduction')) {
      context.handle(
          _introductionMeta,
          introduction.isAcceptableOrUnknown(
              data['introduction']!, _introductionMeta));
    } else if (isInserting) {
      context.missing(_introductionMeta);
    }
    if (data.containsKey('group_face_url')) {
      context.handle(
          _groupFaceURLMeta,
          groupFaceURL.isAcceptableOrUnknown(
              data['group_face_url']!, _groupFaceURLMeta));
    } else if (isInserting) {
      context.missing(_groupFaceURLMeta);
    }
    if (data.containsKey('create_time')) {
      context.handle(
          _createTimeMeta,
          createTime.isAcceptableOrUnknown(
              data['create_time']!, _createTimeMeta));
    } else if (isInserting) {
      context.missing(_createTimeMeta);
    }
    if (data.containsKey('status')) {
      context.handle(_statusMeta,
          status.isAcceptableOrUnknown(data['status']!, _statusMeta));
    } else if (isInserting) {
      context.missing(_statusMeta);
    }
    if (data.containsKey('creator_user_id')) {
      context.handle(
          _creatorUserIDMeta,
          creatorUserID.isAcceptableOrUnknown(
              data['creator_user_id']!, _creatorUserIDMeta));
    } else if (isInserting) {
      context.missing(_creatorUserIDMeta);
    }
    if (data.containsKey('group_type')) {
      context.handle(_groupTypeMeta,
          groupType.isAcceptableOrUnknown(data['group_type']!, _groupTypeMeta));
    } else if (isInserting) {
      context.missing(_groupTypeMeta);
    }
    if (data.containsKey('owner_user_id')) {
      context.handle(
          _ownerUserIDMeta,
          ownerUserID.isAcceptableOrUnknown(
              data['owner_user_id']!, _ownerUserIDMeta));
    } else if (isInserting) {
      context.missing(_ownerUserIDMeta);
    }
    if (data.containsKey('member_count')) {
      context.handle(
          _memberCountMeta,
          memberCount.isAcceptableOrUnknown(
              data['member_count']!, _memberCountMeta));
    } else if (isInserting) {
      context.missing(_memberCountMeta);
    }
    if (data.containsKey('user_id')) {
      context.handle(_userIDMeta,
          userID.isAcceptableOrUnknown(data['user_id']!, _userIDMeta));
    } else if (isInserting) {
      context.missing(_userIDMeta);
    }
    if (data.containsKey('nickname')) {
      context.handle(_nicknameMeta,
          nickname.isAcceptableOrUnknown(data['nickname']!, _nicknameMeta));
    } else if (isInserting) {
      context.missing(_nicknameMeta);
    }
    if (data.containsKey('user_face_url')) {
      context.handle(
          _userFaceURLMeta,
          userFaceURL.isAcceptableOrUnknown(
              data['user_face_url']!, _userFaceURLMeta));
    } else if (isInserting) {
      context.missing(_userFaceURLMeta);
    }
    if (data.containsKey('handle_result')) {
      context.handle(
          _handleResultMeta,
          handleResult.isAcceptableOrUnknown(
              data['handle_result']!, _handleResultMeta));
    } else if (isInserting) {
      context.missing(_handleResultMeta);
    }
    if (data.containsKey('req_msg')) {
      context.handle(_reqMsgMeta,
          reqMsg.isAcceptableOrUnknown(data['req_msg']!, _reqMsgMeta));
    } else if (isInserting) {
      context.missing(_reqMsgMeta);
    }
    if (data.containsKey('handle_msg')) {
      context.handle(_handleMsgMeta,
          handleMsg.isAcceptableOrUnknown(data['handle_msg']!, _handleMsgMeta));
    } else if (isInserting) {
      context.missing(_handleMsgMeta);
    }
    if (data.containsKey('req_time')) {
      context.handle(_reqTimeMeta,
          reqTime.isAcceptableOrUnknown(data['req_time']!, _reqTimeMeta));
    } else if (isInserting) {
      context.missing(_reqTimeMeta);
    }
    if (data.containsKey('handle_user_id')) {
      context.handle(
          _handleUserIDMeta,
          handleUserID.isAcceptableOrUnknown(
              data['handle_user_id']!, _handleUserIDMeta));
    } else if (isInserting) {
      context.missing(_handleUserIDMeta);
    }
    if (data.containsKey('handle_time')) {
      context.handle(
          _handleTimeMeta,
          handleTime.isAcceptableOrUnknown(
              data['handle_time']!, _handleTimeMeta));
    } else if (isInserting) {
      context.missing(_handleTimeMeta);
    }
    if (data.containsKey('ex')) {
      context.handle(_exMeta, ex.isAcceptableOrUnknown(data['ex']!, _exMeta));
    } else if (isInserting) {
      context.missing(_exMeta);
    }
    if (data.containsKey('attached_info')) {
      context.handle(
          _attachedInfoMeta,
          attachedInfo.isAcceptableOrUnknown(
              data['attached_info']!, _attachedInfoMeta));
    } else if (isInserting) {
      context.missing(_attachedInfoMeta);
    }
    if (data.containsKey('join_source')) {
      context.handle(
          _joinSourceMeta,
          joinSource.isAcceptableOrUnknown(
              data['join_source']!, _joinSourceMeta));
    } else if (isInserting) {
      context.missing(_joinSourceMeta);
    }
    if (data.containsKey('inviter_user_id')) {
      context.handle(
          _inviterUserIDMeta,
          inviterUserID.isAcceptableOrUnknown(
              data['inviter_user_id']!, _inviterUserIDMeta));
    } else if (isInserting) {
      context.missing(_inviterUserIDMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {groupID, userID};
  @override
  LocalAdminGroupRequest map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return LocalAdminGroupRequest(
      groupID: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}group_id'])!,
      groupName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}group_name'])!,
      notification: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}notification'])!,
      introduction: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}introduction'])!,
      groupFaceURL: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}group_face_url'])!,
      createTime: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}create_time'])!,
      status: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}status'])!,
      creatorUserID: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}creator_user_id'])!,
      groupType: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}group_type'])!,
      ownerUserID: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}owner_user_id'])!,
      memberCount: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}member_count'])!,
      userID: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}user_id'])!,
      nickname: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}nickname'])!,
      userFaceURL: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}user_face_url'])!,
      handleResult: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}handle_result'])!,
      reqMsg: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}req_msg'])!,
      handleMsg: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}handle_msg'])!,
      reqTime: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}req_time'])!,
      handleUserID: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}handle_user_id'])!,
      handleTime: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}handle_time'])!,
      ex: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}ex'])!,
      attachedInfo: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}attached_info'])!,
      joinSource: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}join_source'])!,
      inviterUserID: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}inviter_user_id'])!,
    );
  }

  @override
  $LocalAdminGroupRequestsTable createAlias(String alias) {
    return $LocalAdminGroupRequestsTable(attachedDatabase, alias);
  }
}

class LocalAdminGroupRequest extends DataClass
    implements Insertable<LocalAdminGroupRequest> {
  final String groupID;
  final String groupName;
  final String notification;
  final String introduction;
  final String groupFaceURL;
  final int createTime;
  final int status;
  final String creatorUserID;
  final int groupType;
  final String ownerUserID;
  final int memberCount;
  final String userID;
  final String nickname;
  final String userFaceURL;
  final int handleResult;
  final String reqMsg;
  final String handleMsg;
  final int reqTime;
  final String handleUserID;
  final int handleTime;
  final String ex;
  final String attachedInfo;
  final int joinSource;
  final String inviterUserID;
  const LocalAdminGroupRequest(
      {required this.groupID,
      required this.groupName,
      required this.notification,
      required this.introduction,
      required this.groupFaceURL,
      required this.createTime,
      required this.status,
      required this.creatorUserID,
      required this.groupType,
      required this.ownerUserID,
      required this.memberCount,
      required this.userID,
      required this.nickname,
      required this.userFaceURL,
      required this.handleResult,
      required this.reqMsg,
      required this.handleMsg,
      required this.reqTime,
      required this.handleUserID,
      required this.handleTime,
      required this.ex,
      required this.attachedInfo,
      required this.joinSource,
      required this.inviterUserID});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['group_id'] = Variable<String>(groupID);
    map['group_name'] = Variable<String>(groupName);
    map['notification'] = Variable<String>(notification);
    map['introduction'] = Variable<String>(introduction);
    map['group_face_url'] = Variable<String>(groupFaceURL);
    map['create_time'] = Variable<int>(createTime);
    map['status'] = Variable<int>(status);
    map['creator_user_id'] = Variable<String>(creatorUserID);
    map['group_type'] = Variable<int>(groupType);
    map['owner_user_id'] = Variable<String>(ownerUserID);
    map['member_count'] = Variable<int>(memberCount);
    map['user_id'] = Variable<String>(userID);
    map['nickname'] = Variable<String>(nickname);
    map['user_face_url'] = Variable<String>(userFaceURL);
    map['handle_result'] = Variable<int>(handleResult);
    map['req_msg'] = Variable<String>(reqMsg);
    map['handle_msg'] = Variable<String>(handleMsg);
    map['req_time'] = Variable<int>(reqTime);
    map['handle_user_id'] = Variable<String>(handleUserID);
    map['handle_time'] = Variable<int>(handleTime);
    map['ex'] = Variable<String>(ex);
    map['attached_info'] = Variable<String>(attachedInfo);
    map['join_source'] = Variable<int>(joinSource);
    map['inviter_user_id'] = Variable<String>(inviterUserID);
    return map;
  }

  LocalAdminGroupRequestsCompanion toCompanion(bool nullToAbsent) {
    return LocalAdminGroupRequestsCompanion(
      groupID: Value(groupID),
      groupName: Value(groupName),
      notification: Value(notification),
      introduction: Value(introduction),
      groupFaceURL: Value(groupFaceURL),
      createTime: Value(createTime),
      status: Value(status),
      creatorUserID: Value(creatorUserID),
      groupType: Value(groupType),
      ownerUserID: Value(ownerUserID),
      memberCount: Value(memberCount),
      userID: Value(userID),
      nickname: Value(nickname),
      userFaceURL: Value(userFaceURL),
      handleResult: Value(handleResult),
      reqMsg: Value(reqMsg),
      handleMsg: Value(handleMsg),
      reqTime: Value(reqTime),
      handleUserID: Value(handleUserID),
      handleTime: Value(handleTime),
      ex: Value(ex),
      attachedInfo: Value(attachedInfo),
      joinSource: Value(joinSource),
      inviterUserID: Value(inviterUserID),
    );
  }

  factory LocalAdminGroupRequest.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return LocalAdminGroupRequest(
      groupID: serializer.fromJson<String>(json['groupID']),
      groupName: serializer.fromJson<String>(json['groupName']),
      notification: serializer.fromJson<String>(json['notification']),
      introduction: serializer.fromJson<String>(json['introduction']),
      groupFaceURL: serializer.fromJson<String>(json['groupFaceURL']),
      createTime: serializer.fromJson<int>(json['createTime']),
      status: serializer.fromJson<int>(json['status']),
      creatorUserID: serializer.fromJson<String>(json['creatorUserID']),
      groupType: serializer.fromJson<int>(json['groupType']),
      ownerUserID: serializer.fromJson<String>(json['ownerUserID']),
      memberCount: serializer.fromJson<int>(json['memberCount']),
      userID: serializer.fromJson<String>(json['userID']),
      nickname: serializer.fromJson<String>(json['nickname']),
      userFaceURL: serializer.fromJson<String>(json['userFaceURL']),
      handleResult: serializer.fromJson<int>(json['handleResult']),
      reqMsg: serializer.fromJson<String>(json['reqMsg']),
      handleMsg: serializer.fromJson<String>(json['handleMsg']),
      reqTime: serializer.fromJson<int>(json['reqTime']),
      handleUserID: serializer.fromJson<String>(json['handleUserID']),
      handleTime: serializer.fromJson<int>(json['handleTime']),
      ex: serializer.fromJson<String>(json['ex']),
      attachedInfo: serializer.fromJson<String>(json['attachedInfo']),
      joinSource: serializer.fromJson<int>(json['joinSource']),
      inviterUserID: serializer.fromJson<String>(json['inviterUserID']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'groupID': serializer.toJson<String>(groupID),
      'groupName': serializer.toJson<String>(groupName),
      'notification': serializer.toJson<String>(notification),
      'introduction': serializer.toJson<String>(introduction),
      'groupFaceURL': serializer.toJson<String>(groupFaceURL),
      'createTime': serializer.toJson<int>(createTime),
      'status': serializer.toJson<int>(status),
      'creatorUserID': serializer.toJson<String>(creatorUserID),
      'groupType': serializer.toJson<int>(groupType),
      'ownerUserID': serializer.toJson<String>(ownerUserID),
      'memberCount': serializer.toJson<int>(memberCount),
      'userID': serializer.toJson<String>(userID),
      'nickname': serializer.toJson<String>(nickname),
      'userFaceURL': serializer.toJson<String>(userFaceURL),
      'handleResult': serializer.toJson<int>(handleResult),
      'reqMsg': serializer.toJson<String>(reqMsg),
      'handleMsg': serializer.toJson<String>(handleMsg),
      'reqTime': serializer.toJson<int>(reqTime),
      'handleUserID': serializer.toJson<String>(handleUserID),
      'handleTime': serializer.toJson<int>(handleTime),
      'ex': serializer.toJson<String>(ex),
      'attachedInfo': serializer.toJson<String>(attachedInfo),
      'joinSource': serializer.toJson<int>(joinSource),
      'inviterUserID': serializer.toJson<String>(inviterUserID),
    };
  }

  LocalAdminGroupRequest copyWith(
          {String? groupID,
          String? groupName,
          String? notification,
          String? introduction,
          String? groupFaceURL,
          int? createTime,
          int? status,
          String? creatorUserID,
          int? groupType,
          String? ownerUserID,
          int? memberCount,
          String? userID,
          String? nickname,
          String? userFaceURL,
          int? handleResult,
          String? reqMsg,
          String? handleMsg,
          int? reqTime,
          String? handleUserID,
          int? handleTime,
          String? ex,
          String? attachedInfo,
          int? joinSource,
          String? inviterUserID}) =>
      LocalAdminGroupRequest(
        groupID: groupID ?? this.groupID,
        groupName: groupName ?? this.groupName,
        notification: notification ?? this.notification,
        introduction: introduction ?? this.introduction,
        groupFaceURL: groupFaceURL ?? this.groupFaceURL,
        createTime: createTime ?? this.createTime,
        status: status ?? this.status,
        creatorUserID: creatorUserID ?? this.creatorUserID,
        groupType: groupType ?? this.groupType,
        ownerUserID: ownerUserID ?? this.ownerUserID,
        memberCount: memberCount ?? this.memberCount,
        userID: userID ?? this.userID,
        nickname: nickname ?? this.nickname,
        userFaceURL: userFaceURL ?? this.userFaceURL,
        handleResult: handleResult ?? this.handleResult,
        reqMsg: reqMsg ?? this.reqMsg,
        handleMsg: handleMsg ?? this.handleMsg,
        reqTime: reqTime ?? this.reqTime,
        handleUserID: handleUserID ?? this.handleUserID,
        handleTime: handleTime ?? this.handleTime,
        ex: ex ?? this.ex,
        attachedInfo: attachedInfo ?? this.attachedInfo,
        joinSource: joinSource ?? this.joinSource,
        inviterUserID: inviterUserID ?? this.inviterUserID,
      );
  LocalAdminGroupRequest copyWithCompanion(
      LocalAdminGroupRequestsCompanion data) {
    return LocalAdminGroupRequest(
      groupID: data.groupID.present ? data.groupID.value : this.groupID,
      groupName: data.groupName.present ? data.groupName.value : this.groupName,
      notification: data.notification.present
          ? data.notification.value
          : this.notification,
      introduction: data.introduction.present
          ? data.introduction.value
          : this.introduction,
      groupFaceURL: data.groupFaceURL.present
          ? data.groupFaceURL.value
          : this.groupFaceURL,
      createTime:
          data.createTime.present ? data.createTime.value : this.createTime,
      status: data.status.present ? data.status.value : this.status,
      creatorUserID: data.creatorUserID.present
          ? data.creatorUserID.value
          : this.creatorUserID,
      groupType: data.groupType.present ? data.groupType.value : this.groupType,
      ownerUserID:
          data.ownerUserID.present ? data.ownerUserID.value : this.ownerUserID,
      memberCount:
          data.memberCount.present ? data.memberCount.value : this.memberCount,
      userID: data.userID.present ? data.userID.value : this.userID,
      nickname: data.nickname.present ? data.nickname.value : this.nickname,
      userFaceURL:
          data.userFaceURL.present ? data.userFaceURL.value : this.userFaceURL,
      handleResult: data.handleResult.present
          ? data.handleResult.value
          : this.handleResult,
      reqMsg: data.reqMsg.present ? data.reqMsg.value : this.reqMsg,
      handleMsg: data.handleMsg.present ? data.handleMsg.value : this.handleMsg,
      reqTime: data.reqTime.present ? data.reqTime.value : this.reqTime,
      handleUserID: data.handleUserID.present
          ? data.handleUserID.value
          : this.handleUserID,
      handleTime:
          data.handleTime.present ? data.handleTime.value : this.handleTime,
      ex: data.ex.present ? data.ex.value : this.ex,
      attachedInfo: data.attachedInfo.present
          ? data.attachedInfo.value
          : this.attachedInfo,
      joinSource:
          data.joinSource.present ? data.joinSource.value : this.joinSource,
      inviterUserID: data.inviterUserID.present
          ? data.inviterUserID.value
          : this.inviterUserID,
    );
  }

  @override
  String toString() {
    return (StringBuffer('LocalAdminGroupRequest(')
          ..write('groupID: $groupID, ')
          ..write('groupName: $groupName, ')
          ..write('notification: $notification, ')
          ..write('introduction: $introduction, ')
          ..write('groupFaceURL: $groupFaceURL, ')
          ..write('createTime: $createTime, ')
          ..write('status: $status, ')
          ..write('creatorUserID: $creatorUserID, ')
          ..write('groupType: $groupType, ')
          ..write('ownerUserID: $ownerUserID, ')
          ..write('memberCount: $memberCount, ')
          ..write('userID: $userID, ')
          ..write('nickname: $nickname, ')
          ..write('userFaceURL: $userFaceURL, ')
          ..write('handleResult: $handleResult, ')
          ..write('reqMsg: $reqMsg, ')
          ..write('handleMsg: $handleMsg, ')
          ..write('reqTime: $reqTime, ')
          ..write('handleUserID: $handleUserID, ')
          ..write('handleTime: $handleTime, ')
          ..write('ex: $ex, ')
          ..write('attachedInfo: $attachedInfo, ')
          ..write('joinSource: $joinSource, ')
          ..write('inviterUserID: $inviterUserID')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hashAll([
        groupID,
        groupName,
        notification,
        introduction,
        groupFaceURL,
        createTime,
        status,
        creatorUserID,
        groupType,
        ownerUserID,
        memberCount,
        userID,
        nickname,
        userFaceURL,
        handleResult,
        reqMsg,
        handleMsg,
        reqTime,
        handleUserID,
        handleTime,
        ex,
        attachedInfo,
        joinSource,
        inviterUserID
      ]);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is LocalAdminGroupRequest &&
          other.groupID == this.groupID &&
          other.groupName == this.groupName &&
          other.notification == this.notification &&
          other.introduction == this.introduction &&
          other.groupFaceURL == this.groupFaceURL &&
          other.createTime == this.createTime &&
          other.status == this.status &&
          other.creatorUserID == this.creatorUserID &&
          other.groupType == this.groupType &&
          other.ownerUserID == this.ownerUserID &&
          other.memberCount == this.memberCount &&
          other.userID == this.userID &&
          other.nickname == this.nickname &&
          other.userFaceURL == this.userFaceURL &&
          other.handleResult == this.handleResult &&
          other.reqMsg == this.reqMsg &&
          other.handleMsg == this.handleMsg &&
          other.reqTime == this.reqTime &&
          other.handleUserID == this.handleUserID &&
          other.handleTime == this.handleTime &&
          other.ex == this.ex &&
          other.attachedInfo == this.attachedInfo &&
          other.joinSource == this.joinSource &&
          other.inviterUserID == this.inviterUserID);
}

class LocalAdminGroupRequestsCompanion
    extends UpdateCompanion<LocalAdminGroupRequest> {
  final Value<String> groupID;
  final Value<String> groupName;
  final Value<String> notification;
  final Value<String> introduction;
  final Value<String> groupFaceURL;
  final Value<int> createTime;
  final Value<int> status;
  final Value<String> creatorUserID;
  final Value<int> groupType;
  final Value<String> ownerUserID;
  final Value<int> memberCount;
  final Value<String> userID;
  final Value<String> nickname;
  final Value<String> userFaceURL;
  final Value<int> handleResult;
  final Value<String> reqMsg;
  final Value<String> handleMsg;
  final Value<int> reqTime;
  final Value<String> handleUserID;
  final Value<int> handleTime;
  final Value<String> ex;
  final Value<String> attachedInfo;
  final Value<int> joinSource;
  final Value<String> inviterUserID;
  final Value<int> rowid;
  const LocalAdminGroupRequestsCompanion({
    this.groupID = const Value.absent(),
    this.groupName = const Value.absent(),
    this.notification = const Value.absent(),
    this.introduction = const Value.absent(),
    this.groupFaceURL = const Value.absent(),
    this.createTime = const Value.absent(),
    this.status = const Value.absent(),
    this.creatorUserID = const Value.absent(),
    this.groupType = const Value.absent(),
    this.ownerUserID = const Value.absent(),
    this.memberCount = const Value.absent(),
    this.userID = const Value.absent(),
    this.nickname = const Value.absent(),
    this.userFaceURL = const Value.absent(),
    this.handleResult = const Value.absent(),
    this.reqMsg = const Value.absent(),
    this.handleMsg = const Value.absent(),
    this.reqTime = const Value.absent(),
    this.handleUserID = const Value.absent(),
    this.handleTime = const Value.absent(),
    this.ex = const Value.absent(),
    this.attachedInfo = const Value.absent(),
    this.joinSource = const Value.absent(),
    this.inviterUserID = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  LocalAdminGroupRequestsCompanion.insert({
    required String groupID,
    required String groupName,
    required String notification,
    required String introduction,
    required String groupFaceURL,
    required int createTime,
    required int status,
    required String creatorUserID,
    required int groupType,
    required String ownerUserID,
    required int memberCount,
    required String userID,
    required String nickname,
    required String userFaceURL,
    required int handleResult,
    required String reqMsg,
    required String handleMsg,
    required int reqTime,
    required String handleUserID,
    required int handleTime,
    required String ex,
    required String attachedInfo,
    required int joinSource,
    required String inviterUserID,
    this.rowid = const Value.absent(),
  })  : groupID = Value(groupID),
        groupName = Value(groupName),
        notification = Value(notification),
        introduction = Value(introduction),
        groupFaceURL = Value(groupFaceURL),
        createTime = Value(createTime),
        status = Value(status),
        creatorUserID = Value(creatorUserID),
        groupType = Value(groupType),
        ownerUserID = Value(ownerUserID),
        memberCount = Value(memberCount),
        userID = Value(userID),
        nickname = Value(nickname),
        userFaceURL = Value(userFaceURL),
        handleResult = Value(handleResult),
        reqMsg = Value(reqMsg),
        handleMsg = Value(handleMsg),
        reqTime = Value(reqTime),
        handleUserID = Value(handleUserID),
        handleTime = Value(handleTime),
        ex = Value(ex),
        attachedInfo = Value(attachedInfo),
        joinSource = Value(joinSource),
        inviterUserID = Value(inviterUserID);
  static Insertable<LocalAdminGroupRequest> custom({
    Expression<String>? groupID,
    Expression<String>? groupName,
    Expression<String>? notification,
    Expression<String>? introduction,
    Expression<String>? groupFaceURL,
    Expression<int>? createTime,
    Expression<int>? status,
    Expression<String>? creatorUserID,
    Expression<int>? groupType,
    Expression<String>? ownerUserID,
    Expression<int>? memberCount,
    Expression<String>? userID,
    Expression<String>? nickname,
    Expression<String>? userFaceURL,
    Expression<int>? handleResult,
    Expression<String>? reqMsg,
    Expression<String>? handleMsg,
    Expression<int>? reqTime,
    Expression<String>? handleUserID,
    Expression<int>? handleTime,
    Expression<String>? ex,
    Expression<String>? attachedInfo,
    Expression<int>? joinSource,
    Expression<String>? inviterUserID,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (groupID != null) 'group_id': groupID,
      if (groupName != null) 'group_name': groupName,
      if (notification != null) 'notification': notification,
      if (introduction != null) 'introduction': introduction,
      if (groupFaceURL != null) 'group_face_url': groupFaceURL,
      if (createTime != null) 'create_time': createTime,
      if (status != null) 'status': status,
      if (creatorUserID != null) 'creator_user_id': creatorUserID,
      if (groupType != null) 'group_type': groupType,
      if (ownerUserID != null) 'owner_user_id': ownerUserID,
      if (memberCount != null) 'member_count': memberCount,
      if (userID != null) 'user_id': userID,
      if (nickname != null) 'nickname': nickname,
      if (userFaceURL != null) 'user_face_url': userFaceURL,
      if (handleResult != null) 'handle_result': handleResult,
      if (reqMsg != null) 'req_msg': reqMsg,
      if (handleMsg != null) 'handle_msg': handleMsg,
      if (reqTime != null) 'req_time': reqTime,
      if (handleUserID != null) 'handle_user_id': handleUserID,
      if (handleTime != null) 'handle_time': handleTime,
      if (ex != null) 'ex': ex,
      if (attachedInfo != null) 'attached_info': attachedInfo,
      if (joinSource != null) 'join_source': joinSource,
      if (inviterUserID != null) 'inviter_user_id': inviterUserID,
      if (rowid != null) 'rowid': rowid,
    });
  }

  LocalAdminGroupRequestsCompanion copyWith(
      {Value<String>? groupID,
      Value<String>? groupName,
      Value<String>? notification,
      Value<String>? introduction,
      Value<String>? groupFaceURL,
      Value<int>? createTime,
      Value<int>? status,
      Value<String>? creatorUserID,
      Value<int>? groupType,
      Value<String>? ownerUserID,
      Value<int>? memberCount,
      Value<String>? userID,
      Value<String>? nickname,
      Value<String>? userFaceURL,
      Value<int>? handleResult,
      Value<String>? reqMsg,
      Value<String>? handleMsg,
      Value<int>? reqTime,
      Value<String>? handleUserID,
      Value<int>? handleTime,
      Value<String>? ex,
      Value<String>? attachedInfo,
      Value<int>? joinSource,
      Value<String>? inviterUserID,
      Value<int>? rowid}) {
    return LocalAdminGroupRequestsCompanion(
      groupID: groupID ?? this.groupID,
      groupName: groupName ?? this.groupName,
      notification: notification ?? this.notification,
      introduction: introduction ?? this.introduction,
      groupFaceURL: groupFaceURL ?? this.groupFaceURL,
      createTime: createTime ?? this.createTime,
      status: status ?? this.status,
      creatorUserID: creatorUserID ?? this.creatorUserID,
      groupType: groupType ?? this.groupType,
      ownerUserID: ownerUserID ?? this.ownerUserID,
      memberCount: memberCount ?? this.memberCount,
      userID: userID ?? this.userID,
      nickname: nickname ?? this.nickname,
      userFaceURL: userFaceURL ?? this.userFaceURL,
      handleResult: handleResult ?? this.handleResult,
      reqMsg: reqMsg ?? this.reqMsg,
      handleMsg: handleMsg ?? this.handleMsg,
      reqTime: reqTime ?? this.reqTime,
      handleUserID: handleUserID ?? this.handleUserID,
      handleTime: handleTime ?? this.handleTime,
      ex: ex ?? this.ex,
      attachedInfo: attachedInfo ?? this.attachedInfo,
      joinSource: joinSource ?? this.joinSource,
      inviterUserID: inviterUserID ?? this.inviterUserID,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (groupID.present) {
      map['group_id'] = Variable<String>(groupID.value);
    }
    if (groupName.present) {
      map['group_name'] = Variable<String>(groupName.value);
    }
    if (notification.present) {
      map['notification'] = Variable<String>(notification.value);
    }
    if (introduction.present) {
      map['introduction'] = Variable<String>(introduction.value);
    }
    if (groupFaceURL.present) {
      map['group_face_url'] = Variable<String>(groupFaceURL.value);
    }
    if (createTime.present) {
      map['create_time'] = Variable<int>(createTime.value);
    }
    if (status.present) {
      map['status'] = Variable<int>(status.value);
    }
    if (creatorUserID.present) {
      map['creator_user_id'] = Variable<String>(creatorUserID.value);
    }
    if (groupType.present) {
      map['group_type'] = Variable<int>(groupType.value);
    }
    if (ownerUserID.present) {
      map['owner_user_id'] = Variable<String>(ownerUserID.value);
    }
    if (memberCount.present) {
      map['member_count'] = Variable<int>(memberCount.value);
    }
    if (userID.present) {
      map['user_id'] = Variable<String>(userID.value);
    }
    if (nickname.present) {
      map['nickname'] = Variable<String>(nickname.value);
    }
    if (userFaceURL.present) {
      map['user_face_url'] = Variable<String>(userFaceURL.value);
    }
    if (handleResult.present) {
      map['handle_result'] = Variable<int>(handleResult.value);
    }
    if (reqMsg.present) {
      map['req_msg'] = Variable<String>(reqMsg.value);
    }
    if (handleMsg.present) {
      map['handle_msg'] = Variable<String>(handleMsg.value);
    }
    if (reqTime.present) {
      map['req_time'] = Variable<int>(reqTime.value);
    }
    if (handleUserID.present) {
      map['handle_user_id'] = Variable<String>(handleUserID.value);
    }
    if (handleTime.present) {
      map['handle_time'] = Variable<int>(handleTime.value);
    }
    if (ex.present) {
      map['ex'] = Variable<String>(ex.value);
    }
    if (attachedInfo.present) {
      map['attached_info'] = Variable<String>(attachedInfo.value);
    }
    if (joinSource.present) {
      map['join_source'] = Variable<int>(joinSource.value);
    }
    if (inviterUserID.present) {
      map['inviter_user_id'] = Variable<String>(inviterUserID.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('LocalAdminGroupRequestsCompanion(')
          ..write('groupID: $groupID, ')
          ..write('groupName: $groupName, ')
          ..write('notification: $notification, ')
          ..write('introduction: $introduction, ')
          ..write('groupFaceURL: $groupFaceURL, ')
          ..write('createTime: $createTime, ')
          ..write('status: $status, ')
          ..write('creatorUserID: $creatorUserID, ')
          ..write('groupType: $groupType, ')
          ..write('ownerUserID: $ownerUserID, ')
          ..write('memberCount: $memberCount, ')
          ..write('userID: $userID, ')
          ..write('nickname: $nickname, ')
          ..write('userFaceURL: $userFaceURL, ')
          ..write('handleResult: $handleResult, ')
          ..write('reqMsg: $reqMsg, ')
          ..write('handleMsg: $handleMsg, ')
          ..write('reqTime: $reqTime, ')
          ..write('handleUserID: $handleUserID, ')
          ..write('handleTime: $handleTime, ')
          ..write('ex: $ex, ')
          ..write('attachedInfo: $attachedInfo, ')
          ..write('joinSource: $joinSource, ')
          ..write('inviterUserID: $inviterUserID, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $LocalChatLogReactionExtensionsTable
    extends LocalChatLogReactionExtensions
    with
        TableInfo<$LocalChatLogReactionExtensionsTable,
            LocalChatLogReactionExtension> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $LocalChatLogReactionExtensionsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _clientMsgIDMeta =
      const VerificationMeta('clientMsgID');
  @override
  late final GeneratedColumn<String> clientMsgID = GeneratedColumn<String>(
      'client_msg_id', aliasedName, false,
      additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 64),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  static const VerificationMeta _localReactionExtensionsMeta =
      const VerificationMeta('localReactionExtensions');
  @override
  late final GeneratedColumnWithTypeConverter<List<int>, String>
      localReactionExtensions = GeneratedColumn<String>(
              'local_reaction_extensions', aliasedName, false,
              type: DriftSqlType.string, requiredDuringInsert: true)
          .withConverter<List<int>>($LocalChatLogReactionExtensionsTable
              .$converterlocalReactionExtensions);
  @override
  List<GeneratedColumn> get $columns => [clientMsgID, localReactionExtensions];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'local_chat_log_reaction_extensions';
  @override
  VerificationContext validateIntegrity(
      Insertable<LocalChatLogReactionExtension> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('client_msg_id')) {
      context.handle(
          _clientMsgIDMeta,
          clientMsgID.isAcceptableOrUnknown(
              data['client_msg_id']!, _clientMsgIDMeta));
    } else if (isInserting) {
      context.missing(_clientMsgIDMeta);
    }
    context.handle(
        _localReactionExtensionsMeta, const VerificationResult.success());
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {clientMsgID};
  @override
  LocalChatLogReactionExtension map(Map<String, dynamic> data,
      {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return LocalChatLogReactionExtension(
      attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}client_msg_id'])!,
      $LocalChatLogReactionExtensionsTable.$converterlocalReactionExtensions
          .fromSql(attachedDatabase.typeMapping.read(DriftSqlType.string,
              data['${effectivePrefix}local_reaction_extensions'])!),
    );
  }

  @override
  $LocalChatLogReactionExtensionsTable createAlias(String alias) {
    return $LocalChatLogReactionExtensionsTable(attachedDatabase, alias);
  }

  static TypeConverter<List<int>, String> $converterlocalReactionExtensions =
      IntListTypeConverter();
}

class LocalChatLogReactionExtensionsCompanion
    extends UpdateCompanion<LocalChatLogReactionExtension> {
  final Value<String> clientMsgID;
  final Value<List<int>> localReactionExtensions;
  final Value<int> rowid;
  const LocalChatLogReactionExtensionsCompanion({
    this.clientMsgID = const Value.absent(),
    this.localReactionExtensions = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  LocalChatLogReactionExtensionsCompanion.insert({
    required String clientMsgID,
    required List<int> localReactionExtensions,
    this.rowid = const Value.absent(),
  })  : clientMsgID = Value(clientMsgID),
        localReactionExtensions = Value(localReactionExtensions);
  static Insertable<LocalChatLogReactionExtension> custom({
    Expression<String>? clientMsgID,
    Expression<String>? localReactionExtensions,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (clientMsgID != null) 'client_msg_id': clientMsgID,
      if (localReactionExtensions != null)
        'local_reaction_extensions': localReactionExtensions,
      if (rowid != null) 'rowid': rowid,
    });
  }

  LocalChatLogReactionExtensionsCompanion copyWith(
      {Value<String>? clientMsgID,
      Value<List<int>>? localReactionExtensions,
      Value<int>? rowid}) {
    return LocalChatLogReactionExtensionsCompanion(
      clientMsgID: clientMsgID ?? this.clientMsgID,
      localReactionExtensions:
          localReactionExtensions ?? this.localReactionExtensions,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (clientMsgID.present) {
      map['client_msg_id'] = Variable<String>(clientMsgID.value);
    }
    if (localReactionExtensions.present) {
      map['local_reaction_extensions'] = Variable<String>(
          $LocalChatLogReactionExtensionsTable.$converterlocalReactionExtensions
              .toSql(localReactionExtensions.value));
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('LocalChatLogReactionExtensionsCompanion(')
          ..write('clientMsgID: $clientMsgID, ')
          ..write('localReactionExtensions: $localReactionExtensions, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $LocalWorkMomentNotificationTable extends LocalWorkMomentNotification
    with
        TableInfo<$LocalWorkMomentNotificationTable,
            LocalWorkMomentNotificationData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $LocalWorkMomentNotificationTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _jsonDetailMeta =
      const VerificationMeta('jsonDetail');
  @override
  late final GeneratedColumn<String> jsonDetail = GeneratedColumn<String>(
      'json_detail', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _createTimeMeta =
      const VerificationMeta('createTime');
  @override
  late final GeneratedColumn<int> createTime = GeneratedColumn<int>(
      'create_time', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [jsonDetail, createTime];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'local_work_moments_notification';
  @override
  VerificationContext validateIntegrity(
      Insertable<LocalWorkMomentNotificationData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('json_detail')) {
      context.handle(
          _jsonDetailMeta,
          jsonDetail.isAcceptableOrUnknown(
              data['json_detail']!, _jsonDetailMeta));
    } else if (isInserting) {
      context.missing(_jsonDetailMeta);
    }
    if (data.containsKey('create_time')) {
      context.handle(
          _createTimeMeta,
          createTime.isAcceptableOrUnknown(
              data['create_time']!, _createTimeMeta));
    } else if (isInserting) {
      context.missing(_createTimeMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => const {};
  @override
  LocalWorkMomentNotificationData map(Map<String, dynamic> data,
      {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return LocalWorkMomentNotificationData(
      jsonDetail: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}json_detail'])!,
      createTime: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}create_time'])!,
    );
  }

  @override
  $LocalWorkMomentNotificationTable createAlias(String alias) {
    return $LocalWorkMomentNotificationTable(attachedDatabase, alias);
  }
}

class LocalWorkMomentNotificationData extends DataClass
    implements Insertable<LocalWorkMomentNotificationData> {
  final String jsonDetail;
  final int createTime;
  const LocalWorkMomentNotificationData(
      {required this.jsonDetail, required this.createTime});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['json_detail'] = Variable<String>(jsonDetail);
    map['create_time'] = Variable<int>(createTime);
    return map;
  }

  LocalWorkMomentNotificationCompanion toCompanion(bool nullToAbsent) {
    return LocalWorkMomentNotificationCompanion(
      jsonDetail: Value(jsonDetail),
      createTime: Value(createTime),
    );
  }

  factory LocalWorkMomentNotificationData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return LocalWorkMomentNotificationData(
      jsonDetail: serializer.fromJson<String>(json['jsonDetail']),
      createTime: serializer.fromJson<int>(json['createTime']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'jsonDetail': serializer.toJson<String>(jsonDetail),
      'createTime': serializer.toJson<int>(createTime),
    };
  }

  LocalWorkMomentNotificationData copyWith(
          {String? jsonDetail, int? createTime}) =>
      LocalWorkMomentNotificationData(
        jsonDetail: jsonDetail ?? this.jsonDetail,
        createTime: createTime ?? this.createTime,
      );
  LocalWorkMomentNotificationData copyWithCompanion(
      LocalWorkMomentNotificationCompanion data) {
    return LocalWorkMomentNotificationData(
      jsonDetail:
          data.jsonDetail.present ? data.jsonDetail.value : this.jsonDetail,
      createTime:
          data.createTime.present ? data.createTime.value : this.createTime,
    );
  }

  @override
  String toString() {
    return (StringBuffer('LocalWorkMomentNotificationData(')
          ..write('jsonDetail: $jsonDetail, ')
          ..write('createTime: $createTime')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(jsonDetail, createTime);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is LocalWorkMomentNotificationData &&
          other.jsonDetail == this.jsonDetail &&
          other.createTime == this.createTime);
}

class LocalWorkMomentNotificationCompanion
    extends UpdateCompanion<LocalWorkMomentNotificationData> {
  final Value<String> jsonDetail;
  final Value<int> createTime;
  final Value<int> rowid;
  const LocalWorkMomentNotificationCompanion({
    this.jsonDetail = const Value.absent(),
    this.createTime = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  LocalWorkMomentNotificationCompanion.insert({
    required String jsonDetail,
    required int createTime,
    this.rowid = const Value.absent(),
  })  : jsonDetail = Value(jsonDetail),
        createTime = Value(createTime);
  static Insertable<LocalWorkMomentNotificationData> custom({
    Expression<String>? jsonDetail,
    Expression<int>? createTime,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (jsonDetail != null) 'json_detail': jsonDetail,
      if (createTime != null) 'create_time': createTime,
      if (rowid != null) 'rowid': rowid,
    });
  }

  LocalWorkMomentNotificationCompanion copyWith(
      {Value<String>? jsonDetail, Value<int>? createTime, Value<int>? rowid}) {
    return LocalWorkMomentNotificationCompanion(
      jsonDetail: jsonDetail ?? this.jsonDetail,
      createTime: createTime ?? this.createTime,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (jsonDetail.present) {
      map['json_detail'] = Variable<String>(jsonDetail.value);
    }
    if (createTime.present) {
      map['create_time'] = Variable<int>(createTime.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('LocalWorkMomentNotificationCompanion(')
          ..write('jsonDetail: $jsonDetail, ')
          ..write('createTime: $createTime, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $LocalWorkMomentsNotificationUnreadCountTable
    extends LocalWorkMomentsNotificationUnreadCount
    with
        TableInfo<$LocalWorkMomentsNotificationUnreadCountTable,
            LocalWorkMomentsNotificationUnreadCountData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $LocalWorkMomentsNotificationUnreadCountTable(this.attachedDatabase,
      [this._alias]);
  static const VerificationMeta _unreadCountMeta =
      const VerificationMeta('unreadCount');
  @override
  late final GeneratedColumn<int> unreadCount = GeneratedColumn<int>(
      'unread_count', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [unreadCount];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'local_work_moments_notification_unread_count';
  @override
  VerificationContext validateIntegrity(
      Insertable<LocalWorkMomentsNotificationUnreadCountData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('unread_count')) {
      context.handle(
          _unreadCountMeta,
          unreadCount.isAcceptableOrUnknown(
              data['unread_count']!, _unreadCountMeta));
    } else if (isInserting) {
      context.missing(_unreadCountMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => const {};
  @override
  LocalWorkMomentsNotificationUnreadCountData map(Map<String, dynamic> data,
      {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return LocalWorkMomentsNotificationUnreadCountData(
      unreadCount: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}unread_count'])!,
    );
  }

  @override
  $LocalWorkMomentsNotificationUnreadCountTable createAlias(String alias) {
    return $LocalWorkMomentsNotificationUnreadCountTable(
        attachedDatabase, alias);
  }
}

class LocalWorkMomentsNotificationUnreadCountData extends DataClass
    implements Insertable<LocalWorkMomentsNotificationUnreadCountData> {
  final int unreadCount;
  const LocalWorkMomentsNotificationUnreadCountData(
      {required this.unreadCount});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['unread_count'] = Variable<int>(unreadCount);
    return map;
  }

  LocalWorkMomentsNotificationUnreadCountCompanion toCompanion(
      bool nullToAbsent) {
    return LocalWorkMomentsNotificationUnreadCountCompanion(
      unreadCount: Value(unreadCount),
    );
  }

  factory LocalWorkMomentsNotificationUnreadCountData.fromJson(
      Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return LocalWorkMomentsNotificationUnreadCountData(
      unreadCount: serializer.fromJson<int>(json['unreadCount']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'unreadCount': serializer.toJson<int>(unreadCount),
    };
  }

  LocalWorkMomentsNotificationUnreadCountData copyWith({int? unreadCount}) =>
      LocalWorkMomentsNotificationUnreadCountData(
        unreadCount: unreadCount ?? this.unreadCount,
      );
  LocalWorkMomentsNotificationUnreadCountData copyWithCompanion(
      LocalWorkMomentsNotificationUnreadCountCompanion data) {
    return LocalWorkMomentsNotificationUnreadCountData(
      unreadCount:
          data.unreadCount.present ? data.unreadCount.value : this.unreadCount,
    );
  }

  @override
  String toString() {
    return (StringBuffer('LocalWorkMomentsNotificationUnreadCountData(')
          ..write('unreadCount: $unreadCount')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => unreadCount.hashCode;
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is LocalWorkMomentsNotificationUnreadCountData &&
          other.unreadCount == this.unreadCount);
}

class LocalWorkMomentsNotificationUnreadCountCompanion
    extends UpdateCompanion<LocalWorkMomentsNotificationUnreadCountData> {
  final Value<int> unreadCount;
  final Value<int> rowid;
  const LocalWorkMomentsNotificationUnreadCountCompanion({
    this.unreadCount = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  LocalWorkMomentsNotificationUnreadCountCompanion.insert({
    required int unreadCount,
    this.rowid = const Value.absent(),
  }) : unreadCount = Value(unreadCount);
  static Insertable<LocalWorkMomentsNotificationUnreadCountData> custom({
    Expression<int>? unreadCount,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (unreadCount != null) 'unread_count': unreadCount,
      if (rowid != null) 'rowid': rowid,
    });
  }

  LocalWorkMomentsNotificationUnreadCountCompanion copyWith(
      {Value<int>? unreadCount, Value<int>? rowid}) {
    return LocalWorkMomentsNotificationUnreadCountCompanion(
      unreadCount: unreadCount ?? this.unreadCount,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (unreadCount.present) {
      map['unread_count'] = Variable<int>(unreadCount.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('LocalWorkMomentsNotificationUnreadCountCompanion(')
          ..write('unreadCount: $unreadCount, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $NotificationSeqTable extends NotificationSeq
    with TableInfo<$NotificationSeqTable, NotificationSeqData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $NotificationSeqTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _conversationIDMeta =
      const VerificationMeta('conversationID');
  @override
  late final GeneratedColumn<String> conversationID = GeneratedColumn<String>(
      'conversation_id', aliasedName, false,
      additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 128),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  static const VerificationMeta _seqMeta = const VerificationMeta('seq');
  @override
  late final GeneratedColumn<int> seq = GeneratedColumn<int>(
      'seq', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [conversationID, seq];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'local_notification_seqs';
  @override
  VerificationContext validateIntegrity(
      Insertable<NotificationSeqData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('conversation_id')) {
      context.handle(
          _conversationIDMeta,
          conversationID.isAcceptableOrUnknown(
              data['conversation_id']!, _conversationIDMeta));
    } else if (isInserting) {
      context.missing(_conversationIDMeta);
    }
    if (data.containsKey('seq')) {
      context.handle(
          _seqMeta, seq.isAcceptableOrUnknown(data['seq']!, _seqMeta));
    } else if (isInserting) {
      context.missing(_seqMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {conversationID};
  @override
  NotificationSeqData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return NotificationSeqData(
      conversationID: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}conversation_id'])!,
      seq: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}seq'])!,
    );
  }

  @override
  $NotificationSeqTable createAlias(String alias) {
    return $NotificationSeqTable(attachedDatabase, alias);
  }
}

class NotificationSeqData extends DataClass
    implements Insertable<NotificationSeqData> {
  final String conversationID;
  final int seq;
  const NotificationSeqData({required this.conversationID, required this.seq});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['conversation_id'] = Variable<String>(conversationID);
    map['seq'] = Variable<int>(seq);
    return map;
  }

  NotificationSeqCompanion toCompanion(bool nullToAbsent) {
    return NotificationSeqCompanion(
      conversationID: Value(conversationID),
      seq: Value(seq),
    );
  }

  factory NotificationSeqData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return NotificationSeqData(
      conversationID: serializer.fromJson<String>(json['conversationID']),
      seq: serializer.fromJson<int>(json['seq']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'conversationID': serializer.toJson<String>(conversationID),
      'seq': serializer.toJson<int>(seq),
    };
  }

  NotificationSeqData copyWith({String? conversationID, int? seq}) =>
      NotificationSeqData(
        conversationID: conversationID ?? this.conversationID,
        seq: seq ?? this.seq,
      );
  NotificationSeqData copyWithCompanion(NotificationSeqCompanion data) {
    return NotificationSeqData(
      conversationID: data.conversationID.present
          ? data.conversationID.value
          : this.conversationID,
      seq: data.seq.present ? data.seq.value : this.seq,
    );
  }

  @override
  String toString() {
    return (StringBuffer('NotificationSeqData(')
          ..write('conversationID: $conversationID, ')
          ..write('seq: $seq')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(conversationID, seq);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is NotificationSeqData &&
          other.conversationID == this.conversationID &&
          other.seq == this.seq);
}

class NotificationSeqCompanion extends UpdateCompanion<NotificationSeqData> {
  final Value<String> conversationID;
  final Value<int> seq;
  final Value<int> rowid;
  const NotificationSeqCompanion({
    this.conversationID = const Value.absent(),
    this.seq = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  NotificationSeqCompanion.insert({
    required String conversationID,
    required int seq,
    this.rowid = const Value.absent(),
  })  : conversationID = Value(conversationID),
        seq = Value(seq);
  static Insertable<NotificationSeqData> custom({
    Expression<String>? conversationID,
    Expression<int>? seq,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (conversationID != null) 'conversation_id': conversationID,
      if (seq != null) 'seq': seq,
      if (rowid != null) 'rowid': rowid,
    });
  }

  NotificationSeqCompanion copyWith(
      {Value<String>? conversationID, Value<int>? seq, Value<int>? rowid}) {
    return NotificationSeqCompanion(
      conversationID: conversationID ?? this.conversationID,
      seq: seq ?? this.seq,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (conversationID.present) {
      map['conversation_id'] = Variable<String>(conversationID.value);
    }
    if (seq.present) {
      map['seq'] = Variable<int>(seq.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('NotificationSeqCompanion(')
          ..write('conversationID: $conversationID, ')
          ..write('seq: $seq, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $LocalUploadTable extends LocalUpload
    with TableInfo<$LocalUploadTable, LocalUploadData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $LocalUploadTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _partHashMeta =
      const VerificationMeta('partHash');
  @override
  late final GeneratedColumn<String> partHash = GeneratedColumn<String>(
      'part_hash', aliasedName, false,
      additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 128),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  static const VerificationMeta _uploadIDMeta =
      const VerificationMeta('uploadID');
  @override
  late final GeneratedColumn<String> uploadID = GeneratedColumn<String>(
      'upload_id', aliasedName, false,
      additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 1000),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  static const VerificationMeta _uploadInfoMeta =
      const VerificationMeta('uploadInfo');
  @override
  late final GeneratedColumn<String> uploadInfo = GeneratedColumn<String>(
      'upload_info', aliasedName, false,
      additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 2000),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  static const VerificationMeta _expireTimeMeta =
      const VerificationMeta('expireTime');
  @override
  late final GeneratedColumn<int> expireTime = GeneratedColumn<int>(
      'expire_time', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _createTimeMeta =
      const VerificationMeta('createTime');
  @override
  late final GeneratedColumn<int> createTime = GeneratedColumn<int>(
      'create_time', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns =>
      [partHash, uploadID, uploadInfo, expireTime, createTime];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'local_uploads';
  @override
  VerificationContext validateIntegrity(Insertable<LocalUploadData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('part_hash')) {
      context.handle(_partHashMeta,
          partHash.isAcceptableOrUnknown(data['part_hash']!, _partHashMeta));
    } else if (isInserting) {
      context.missing(_partHashMeta);
    }
    if (data.containsKey('upload_id')) {
      context.handle(_uploadIDMeta,
          uploadID.isAcceptableOrUnknown(data['upload_id']!, _uploadIDMeta));
    } else if (isInserting) {
      context.missing(_uploadIDMeta);
    }
    if (data.containsKey('upload_info')) {
      context.handle(
          _uploadInfoMeta,
          uploadInfo.isAcceptableOrUnknown(
              data['upload_info']!, _uploadInfoMeta));
    } else if (isInserting) {
      context.missing(_uploadInfoMeta);
    }
    if (data.containsKey('expire_time')) {
      context.handle(
          _expireTimeMeta,
          expireTime.isAcceptableOrUnknown(
              data['expire_time']!, _expireTimeMeta));
    } else if (isInserting) {
      context.missing(_expireTimeMeta);
    }
    if (data.containsKey('create_time')) {
      context.handle(
          _createTimeMeta,
          createTime.isAcceptableOrUnknown(
              data['create_time']!, _createTimeMeta));
    } else if (isInserting) {
      context.missing(_createTimeMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {partHash};
  @override
  LocalUploadData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return LocalUploadData(
      partHash: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}part_hash'])!,
      uploadID: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}upload_id'])!,
      uploadInfo: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}upload_info'])!,
      expireTime: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}expire_time'])!,
      createTime: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}create_time'])!,
    );
  }

  @override
  $LocalUploadTable createAlias(String alias) {
    return $LocalUploadTable(attachedDatabase, alias);
  }
}

class LocalUploadData extends DataClass implements Insertable<LocalUploadData> {
  final String partHash;
  final String uploadID;
  final String uploadInfo;
  final int expireTime;
  final int createTime;
  const LocalUploadData(
      {required this.partHash,
      required this.uploadID,
      required this.uploadInfo,
      required this.expireTime,
      required this.createTime});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['part_hash'] = Variable<String>(partHash);
    map['upload_id'] = Variable<String>(uploadID);
    map['upload_info'] = Variable<String>(uploadInfo);
    map['expire_time'] = Variable<int>(expireTime);
    map['create_time'] = Variable<int>(createTime);
    return map;
  }

  LocalUploadCompanion toCompanion(bool nullToAbsent) {
    return LocalUploadCompanion(
      partHash: Value(partHash),
      uploadID: Value(uploadID),
      uploadInfo: Value(uploadInfo),
      expireTime: Value(expireTime),
      createTime: Value(createTime),
    );
  }

  factory LocalUploadData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return LocalUploadData(
      partHash: serializer.fromJson<String>(json['partHash']),
      uploadID: serializer.fromJson<String>(json['uploadID']),
      uploadInfo: serializer.fromJson<String>(json['uploadInfo']),
      expireTime: serializer.fromJson<int>(json['expireTime']),
      createTime: serializer.fromJson<int>(json['createTime']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'partHash': serializer.toJson<String>(partHash),
      'uploadID': serializer.toJson<String>(uploadID),
      'uploadInfo': serializer.toJson<String>(uploadInfo),
      'expireTime': serializer.toJson<int>(expireTime),
      'createTime': serializer.toJson<int>(createTime),
    };
  }

  LocalUploadData copyWith(
          {String? partHash,
          String? uploadID,
          String? uploadInfo,
          int? expireTime,
          int? createTime}) =>
      LocalUploadData(
        partHash: partHash ?? this.partHash,
        uploadID: uploadID ?? this.uploadID,
        uploadInfo: uploadInfo ?? this.uploadInfo,
        expireTime: expireTime ?? this.expireTime,
        createTime: createTime ?? this.createTime,
      );
  LocalUploadData copyWithCompanion(LocalUploadCompanion data) {
    return LocalUploadData(
      partHash: data.partHash.present ? data.partHash.value : this.partHash,
      uploadID: data.uploadID.present ? data.uploadID.value : this.uploadID,
      uploadInfo:
          data.uploadInfo.present ? data.uploadInfo.value : this.uploadInfo,
      expireTime:
          data.expireTime.present ? data.expireTime.value : this.expireTime,
      createTime:
          data.createTime.present ? data.createTime.value : this.createTime,
    );
  }

  @override
  String toString() {
    return (StringBuffer('LocalUploadData(')
          ..write('partHash: $partHash, ')
          ..write('uploadID: $uploadID, ')
          ..write('uploadInfo: $uploadInfo, ')
          ..write('expireTime: $expireTime, ')
          ..write('createTime: $createTime')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(partHash, uploadID, uploadInfo, expireTime, createTime);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is LocalUploadData &&
          other.partHash == this.partHash &&
          other.uploadID == this.uploadID &&
          other.uploadInfo == this.uploadInfo &&
          other.expireTime == this.expireTime &&
          other.createTime == this.createTime);
}

class LocalUploadCompanion extends UpdateCompanion<LocalUploadData> {
  final Value<String> partHash;
  final Value<String> uploadID;
  final Value<String> uploadInfo;
  final Value<int> expireTime;
  final Value<int> createTime;
  final Value<int> rowid;
  const LocalUploadCompanion({
    this.partHash = const Value.absent(),
    this.uploadID = const Value.absent(),
    this.uploadInfo = const Value.absent(),
    this.expireTime = const Value.absent(),
    this.createTime = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  LocalUploadCompanion.insert({
    required String partHash,
    required String uploadID,
    required String uploadInfo,
    required int expireTime,
    required int createTime,
    this.rowid = const Value.absent(),
  })  : partHash = Value(partHash),
        uploadID = Value(uploadID),
        uploadInfo = Value(uploadInfo),
        expireTime = Value(expireTime),
        createTime = Value(createTime);
  static Insertable<LocalUploadData> custom({
    Expression<String>? partHash,
    Expression<String>? uploadID,
    Expression<String>? uploadInfo,
    Expression<int>? expireTime,
    Expression<int>? createTime,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (partHash != null) 'part_hash': partHash,
      if (uploadID != null) 'upload_id': uploadID,
      if (uploadInfo != null) 'upload_info': uploadInfo,
      if (expireTime != null) 'expire_time': expireTime,
      if (createTime != null) 'create_time': createTime,
      if (rowid != null) 'rowid': rowid,
    });
  }

  LocalUploadCompanion copyWith(
      {Value<String>? partHash,
      Value<String>? uploadID,
      Value<String>? uploadInfo,
      Value<int>? expireTime,
      Value<int>? createTime,
      Value<int>? rowid}) {
    return LocalUploadCompanion(
      partHash: partHash ?? this.partHash,
      uploadID: uploadID ?? this.uploadID,
      uploadInfo: uploadInfo ?? this.uploadInfo,
      expireTime: expireTime ?? this.expireTime,
      createTime: createTime ?? this.createTime,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (partHash.present) {
      map['part_hash'] = Variable<String>(partHash.value);
    }
    if (uploadID.present) {
      map['upload_id'] = Variable<String>(uploadID.value);
    }
    if (uploadInfo.present) {
      map['upload_info'] = Variable<String>(uploadInfo.value);
    }
    if (expireTime.present) {
      map['expire_time'] = Variable<int>(expireTime.value);
    }
    if (createTime.present) {
      map['create_time'] = Variable<int>(createTime.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('LocalUploadCompanion(')
          ..write('partHash: $partHash, ')
          ..write('uploadID: $uploadID, ')
          ..write('uploadInfo: $uploadInfo, ')
          ..write('expireTime: $expireTime, ')
          ..write('createTime: $createTime, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $LocalStrangerTable extends LocalStranger
    with TableInfo<$LocalStrangerTable, LocalStrangerData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $LocalStrangerTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _userIDMeta = const VerificationMeta('userID');
  @override
  late final GeneratedColumn<String> userID = GeneratedColumn<String>(
      'user_id', aliasedName, false,
      additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 64),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  static const VerificationMeta _nicknameMeta =
      const VerificationMeta('nickname');
  @override
  late final GeneratedColumn<String> nickname = GeneratedColumn<String>(
      'nickname', aliasedName, false,
      additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 255),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  static const VerificationMeta _faceURLMeta =
      const VerificationMeta('faceURL');
  @override
  late final GeneratedColumn<String> faceURL = GeneratedColumn<String>(
      'face_url', aliasedName, false,
      additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 255),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  static const VerificationMeta _createTimeMeta =
      const VerificationMeta('createTime');
  @override
  late final GeneratedColumn<int> createTime = GeneratedColumn<int>(
      'create_time', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _appMangerLevelMeta =
      const VerificationMeta('appMangerLevel');
  @override
  late final GeneratedColumn<int> appMangerLevel = GeneratedColumn<int>(
      'app_manger_level', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _exMeta = const VerificationMeta('ex');
  @override
  late final GeneratedColumn<String> ex = GeneratedColumn<String>(
      'ex', aliasedName, false,
      additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 1024),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  static const VerificationMeta _attachedInfoMeta =
      const VerificationMeta('attachedInfo');
  @override
  late final GeneratedColumn<String> attachedInfo = GeneratedColumn<String>(
      'attached_info', aliasedName, false,
      additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 1024),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  static const VerificationMeta _globalRecvMsgOptMeta =
      const VerificationMeta('globalRecvMsgOpt');
  @override
  late final GeneratedColumn<int> globalRecvMsgOpt = GeneratedColumn<int>(
      'global_recv_msg_opt', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [
        userID,
        nickname,
        faceURL,
        createTime,
        appMangerLevel,
        ex,
        attachedInfo,
        globalRecvMsgOpt
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'local_stranger';
  @override
  VerificationContext validateIntegrity(Insertable<LocalStrangerData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('user_id')) {
      context.handle(_userIDMeta,
          userID.isAcceptableOrUnknown(data['user_id']!, _userIDMeta));
    } else if (isInserting) {
      context.missing(_userIDMeta);
    }
    if (data.containsKey('nickname')) {
      context.handle(_nicknameMeta,
          nickname.isAcceptableOrUnknown(data['nickname']!, _nicknameMeta));
    } else if (isInserting) {
      context.missing(_nicknameMeta);
    }
    if (data.containsKey('face_url')) {
      context.handle(_faceURLMeta,
          faceURL.isAcceptableOrUnknown(data['face_url']!, _faceURLMeta));
    } else if (isInserting) {
      context.missing(_faceURLMeta);
    }
    if (data.containsKey('create_time')) {
      context.handle(
          _createTimeMeta,
          createTime.isAcceptableOrUnknown(
              data['create_time']!, _createTimeMeta));
    } else if (isInserting) {
      context.missing(_createTimeMeta);
    }
    if (data.containsKey('app_manger_level')) {
      context.handle(
          _appMangerLevelMeta,
          appMangerLevel.isAcceptableOrUnknown(
              data['app_manger_level']!, _appMangerLevelMeta));
    } else if (isInserting) {
      context.missing(_appMangerLevelMeta);
    }
    if (data.containsKey('ex')) {
      context.handle(_exMeta, ex.isAcceptableOrUnknown(data['ex']!, _exMeta));
    } else if (isInserting) {
      context.missing(_exMeta);
    }
    if (data.containsKey('attached_info')) {
      context.handle(
          _attachedInfoMeta,
          attachedInfo.isAcceptableOrUnknown(
              data['attached_info']!, _attachedInfoMeta));
    } else if (isInserting) {
      context.missing(_attachedInfoMeta);
    }
    if (data.containsKey('global_recv_msg_opt')) {
      context.handle(
          _globalRecvMsgOptMeta,
          globalRecvMsgOpt.isAcceptableOrUnknown(
              data['global_recv_msg_opt']!, _globalRecvMsgOptMeta));
    } else if (isInserting) {
      context.missing(_globalRecvMsgOptMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {userID};
  @override
  LocalStrangerData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return LocalStrangerData(
      userID: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}user_id'])!,
      nickname: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}nickname'])!,
      faceURL: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}face_url'])!,
      createTime: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}create_time'])!,
      appMangerLevel: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}app_manger_level'])!,
      ex: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}ex'])!,
      attachedInfo: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}attached_info'])!,
      globalRecvMsgOpt: attachedDatabase.typeMapping.read(
          DriftSqlType.int, data['${effectivePrefix}global_recv_msg_opt'])!,
    );
  }

  @override
  $LocalStrangerTable createAlias(String alias) {
    return $LocalStrangerTable(attachedDatabase, alias);
  }
}

class LocalStrangerData extends DataClass
    implements Insertable<LocalStrangerData> {
  final String userID;
  final String nickname;
  final String faceURL;
  final int createTime;
  final int appMangerLevel;
  final String ex;
  final String attachedInfo;
  final int globalRecvMsgOpt;
  const LocalStrangerData(
      {required this.userID,
      required this.nickname,
      required this.faceURL,
      required this.createTime,
      required this.appMangerLevel,
      required this.ex,
      required this.attachedInfo,
      required this.globalRecvMsgOpt});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['user_id'] = Variable<String>(userID);
    map['nickname'] = Variable<String>(nickname);
    map['face_url'] = Variable<String>(faceURL);
    map['create_time'] = Variable<int>(createTime);
    map['app_manger_level'] = Variable<int>(appMangerLevel);
    map['ex'] = Variable<String>(ex);
    map['attached_info'] = Variable<String>(attachedInfo);
    map['global_recv_msg_opt'] = Variable<int>(globalRecvMsgOpt);
    return map;
  }

  LocalStrangerCompanion toCompanion(bool nullToAbsent) {
    return LocalStrangerCompanion(
      userID: Value(userID),
      nickname: Value(nickname),
      faceURL: Value(faceURL),
      createTime: Value(createTime),
      appMangerLevel: Value(appMangerLevel),
      ex: Value(ex),
      attachedInfo: Value(attachedInfo),
      globalRecvMsgOpt: Value(globalRecvMsgOpt),
    );
  }

  factory LocalStrangerData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return LocalStrangerData(
      userID: serializer.fromJson<String>(json['userID']),
      nickname: serializer.fromJson<String>(json['nickname']),
      faceURL: serializer.fromJson<String>(json['faceURL']),
      createTime: serializer.fromJson<int>(json['createTime']),
      appMangerLevel: serializer.fromJson<int>(json['appMangerLevel']),
      ex: serializer.fromJson<String>(json['ex']),
      attachedInfo: serializer.fromJson<String>(json['attachedInfo']),
      globalRecvMsgOpt: serializer.fromJson<int>(json['globalRecvMsgOpt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'userID': serializer.toJson<String>(userID),
      'nickname': serializer.toJson<String>(nickname),
      'faceURL': serializer.toJson<String>(faceURL),
      'createTime': serializer.toJson<int>(createTime),
      'appMangerLevel': serializer.toJson<int>(appMangerLevel),
      'ex': serializer.toJson<String>(ex),
      'attachedInfo': serializer.toJson<String>(attachedInfo),
      'globalRecvMsgOpt': serializer.toJson<int>(globalRecvMsgOpt),
    };
  }

  LocalStrangerData copyWith(
          {String? userID,
          String? nickname,
          String? faceURL,
          int? createTime,
          int? appMangerLevel,
          String? ex,
          String? attachedInfo,
          int? globalRecvMsgOpt}) =>
      LocalStrangerData(
        userID: userID ?? this.userID,
        nickname: nickname ?? this.nickname,
        faceURL: faceURL ?? this.faceURL,
        createTime: createTime ?? this.createTime,
        appMangerLevel: appMangerLevel ?? this.appMangerLevel,
        ex: ex ?? this.ex,
        attachedInfo: attachedInfo ?? this.attachedInfo,
        globalRecvMsgOpt: globalRecvMsgOpt ?? this.globalRecvMsgOpt,
      );
  LocalStrangerData copyWithCompanion(LocalStrangerCompanion data) {
    return LocalStrangerData(
      userID: data.userID.present ? data.userID.value : this.userID,
      nickname: data.nickname.present ? data.nickname.value : this.nickname,
      faceURL: data.faceURL.present ? data.faceURL.value : this.faceURL,
      createTime:
          data.createTime.present ? data.createTime.value : this.createTime,
      appMangerLevel: data.appMangerLevel.present
          ? data.appMangerLevel.value
          : this.appMangerLevel,
      ex: data.ex.present ? data.ex.value : this.ex,
      attachedInfo: data.attachedInfo.present
          ? data.attachedInfo.value
          : this.attachedInfo,
      globalRecvMsgOpt: data.globalRecvMsgOpt.present
          ? data.globalRecvMsgOpt.value
          : this.globalRecvMsgOpt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('LocalStrangerData(')
          ..write('userID: $userID, ')
          ..write('nickname: $nickname, ')
          ..write('faceURL: $faceURL, ')
          ..write('createTime: $createTime, ')
          ..write('appMangerLevel: $appMangerLevel, ')
          ..write('ex: $ex, ')
          ..write('attachedInfo: $attachedInfo, ')
          ..write('globalRecvMsgOpt: $globalRecvMsgOpt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(userID, nickname, faceURL, createTime,
      appMangerLevel, ex, attachedInfo, globalRecvMsgOpt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is LocalStrangerData &&
          other.userID == this.userID &&
          other.nickname == this.nickname &&
          other.faceURL == this.faceURL &&
          other.createTime == this.createTime &&
          other.appMangerLevel == this.appMangerLevel &&
          other.ex == this.ex &&
          other.attachedInfo == this.attachedInfo &&
          other.globalRecvMsgOpt == this.globalRecvMsgOpt);
}

class LocalStrangerCompanion extends UpdateCompanion<LocalStrangerData> {
  final Value<String> userID;
  final Value<String> nickname;
  final Value<String> faceURL;
  final Value<int> createTime;
  final Value<int> appMangerLevel;
  final Value<String> ex;
  final Value<String> attachedInfo;
  final Value<int> globalRecvMsgOpt;
  final Value<int> rowid;
  const LocalStrangerCompanion({
    this.userID = const Value.absent(),
    this.nickname = const Value.absent(),
    this.faceURL = const Value.absent(),
    this.createTime = const Value.absent(),
    this.appMangerLevel = const Value.absent(),
    this.ex = const Value.absent(),
    this.attachedInfo = const Value.absent(),
    this.globalRecvMsgOpt = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  LocalStrangerCompanion.insert({
    required String userID,
    required String nickname,
    required String faceURL,
    required int createTime,
    required int appMangerLevel,
    required String ex,
    required String attachedInfo,
    required int globalRecvMsgOpt,
    this.rowid = const Value.absent(),
  })  : userID = Value(userID),
        nickname = Value(nickname),
        faceURL = Value(faceURL),
        createTime = Value(createTime),
        appMangerLevel = Value(appMangerLevel),
        ex = Value(ex),
        attachedInfo = Value(attachedInfo),
        globalRecvMsgOpt = Value(globalRecvMsgOpt);
  static Insertable<LocalStrangerData> custom({
    Expression<String>? userID,
    Expression<String>? nickname,
    Expression<String>? faceURL,
    Expression<int>? createTime,
    Expression<int>? appMangerLevel,
    Expression<String>? ex,
    Expression<String>? attachedInfo,
    Expression<int>? globalRecvMsgOpt,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (userID != null) 'user_id': userID,
      if (nickname != null) 'nickname': nickname,
      if (faceURL != null) 'face_url': faceURL,
      if (createTime != null) 'create_time': createTime,
      if (appMangerLevel != null) 'app_manger_level': appMangerLevel,
      if (ex != null) 'ex': ex,
      if (attachedInfo != null) 'attached_info': attachedInfo,
      if (globalRecvMsgOpt != null) 'global_recv_msg_opt': globalRecvMsgOpt,
      if (rowid != null) 'rowid': rowid,
    });
  }

  LocalStrangerCompanion copyWith(
      {Value<String>? userID,
      Value<String>? nickname,
      Value<String>? faceURL,
      Value<int>? createTime,
      Value<int>? appMangerLevel,
      Value<String>? ex,
      Value<String>? attachedInfo,
      Value<int>? globalRecvMsgOpt,
      Value<int>? rowid}) {
    return LocalStrangerCompanion(
      userID: userID ?? this.userID,
      nickname: nickname ?? this.nickname,
      faceURL: faceURL ?? this.faceURL,
      createTime: createTime ?? this.createTime,
      appMangerLevel: appMangerLevel ?? this.appMangerLevel,
      ex: ex ?? this.ex,
      attachedInfo: attachedInfo ?? this.attachedInfo,
      globalRecvMsgOpt: globalRecvMsgOpt ?? this.globalRecvMsgOpt,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (userID.present) {
      map['user_id'] = Variable<String>(userID.value);
    }
    if (nickname.present) {
      map['nickname'] = Variable<String>(nickname.value);
    }
    if (faceURL.present) {
      map['face_url'] = Variable<String>(faceURL.value);
    }
    if (createTime.present) {
      map['create_time'] = Variable<int>(createTime.value);
    }
    if (appMangerLevel.present) {
      map['app_manger_level'] = Variable<int>(appMangerLevel.value);
    }
    if (ex.present) {
      map['ex'] = Variable<String>(ex.value);
    }
    if (attachedInfo.present) {
      map['attached_info'] = Variable<String>(attachedInfo.value);
    }
    if (globalRecvMsgOpt.present) {
      map['global_recv_msg_opt'] = Variable<int>(globalRecvMsgOpt.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('LocalStrangerCompanion(')
          ..write('userID: $userID, ')
          ..write('nickname: $nickname, ')
          ..write('faceURL: $faceURL, ')
          ..write('createTime: $createTime, ')
          ..write('appMangerLevel: $appMangerLevel, ')
          ..write('ex: $ex, ')
          ..write('attachedInfo: $attachedInfo, ')
          ..write('globalRecvMsgOpt: $globalRecvMsgOpt, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $LocalSendingMessageTable extends LocalSendingMessage
    with TableInfo<$LocalSendingMessageTable, LocalSendingMessageData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $LocalSendingMessageTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _conversationIDMeta =
      const VerificationMeta('conversationID');
  @override
  late final GeneratedColumn<String> conversationID = GeneratedColumn<String>(
      'conversation_id', aliasedName, false,
      additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 128),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  static const VerificationMeta _clientMsgIDMeta =
      const VerificationMeta('clientMsgID');
  @override
  late final GeneratedColumn<String> clientMsgID = GeneratedColumn<String>(
      'client_msg_id', aliasedName, false,
      additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 64),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  static const VerificationMeta _exMeta = const VerificationMeta('ex');
  @override
  late final GeneratedColumn<String> ex = GeneratedColumn<String>(
      'ex', aliasedName, false,
      additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 1024),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [conversationID, clientMsgID, ex];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'local_sending_messages';
  @override
  VerificationContext validateIntegrity(
      Insertable<LocalSendingMessageData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('conversation_id')) {
      context.handle(
          _conversationIDMeta,
          conversationID.isAcceptableOrUnknown(
              data['conversation_id']!, _conversationIDMeta));
    } else if (isInserting) {
      context.missing(_conversationIDMeta);
    }
    if (data.containsKey('client_msg_id')) {
      context.handle(
          _clientMsgIDMeta,
          clientMsgID.isAcceptableOrUnknown(
              data['client_msg_id']!, _clientMsgIDMeta));
    } else if (isInserting) {
      context.missing(_clientMsgIDMeta);
    }
    if (data.containsKey('ex')) {
      context.handle(_exMeta, ex.isAcceptableOrUnknown(data['ex']!, _exMeta));
    } else if (isInserting) {
      context.missing(_exMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {conversationID, clientMsgID};
  @override
  LocalSendingMessageData map(Map<String, dynamic> data,
      {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return LocalSendingMessageData(
      conversationID: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}conversation_id'])!,
      clientMsgID: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}client_msg_id'])!,
      ex: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}ex'])!,
    );
  }

  @override
  $LocalSendingMessageTable createAlias(String alias) {
    return $LocalSendingMessageTable(attachedDatabase, alias);
  }
}

class LocalSendingMessageData extends DataClass
    implements Insertable<LocalSendingMessageData> {
  final String conversationID;
  final String clientMsgID;
  final String ex;
  const LocalSendingMessageData(
      {required this.conversationID,
      required this.clientMsgID,
      required this.ex});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['conversation_id'] = Variable<String>(conversationID);
    map['client_msg_id'] = Variable<String>(clientMsgID);
    map['ex'] = Variable<String>(ex);
    return map;
  }

  LocalSendingMessageCompanion toCompanion(bool nullToAbsent) {
    return LocalSendingMessageCompanion(
      conversationID: Value(conversationID),
      clientMsgID: Value(clientMsgID),
      ex: Value(ex),
    );
  }

  factory LocalSendingMessageData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return LocalSendingMessageData(
      conversationID: serializer.fromJson<String>(json['conversationID']),
      clientMsgID: serializer.fromJson<String>(json['clientMsgID']),
      ex: serializer.fromJson<String>(json['ex']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'conversationID': serializer.toJson<String>(conversationID),
      'clientMsgID': serializer.toJson<String>(clientMsgID),
      'ex': serializer.toJson<String>(ex),
    };
  }

  LocalSendingMessageData copyWith(
          {String? conversationID, String? clientMsgID, String? ex}) =>
      LocalSendingMessageData(
        conversationID: conversationID ?? this.conversationID,
        clientMsgID: clientMsgID ?? this.clientMsgID,
        ex: ex ?? this.ex,
      );
  LocalSendingMessageData copyWithCompanion(LocalSendingMessageCompanion data) {
    return LocalSendingMessageData(
      conversationID: data.conversationID.present
          ? data.conversationID.value
          : this.conversationID,
      clientMsgID:
          data.clientMsgID.present ? data.clientMsgID.value : this.clientMsgID,
      ex: data.ex.present ? data.ex.value : this.ex,
    );
  }

  @override
  String toString() {
    return (StringBuffer('LocalSendingMessageData(')
          ..write('conversationID: $conversationID, ')
          ..write('clientMsgID: $clientMsgID, ')
          ..write('ex: $ex')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(conversationID, clientMsgID, ex);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is LocalSendingMessageData &&
          other.conversationID == this.conversationID &&
          other.clientMsgID == this.clientMsgID &&
          other.ex == this.ex);
}

class LocalSendingMessageCompanion
    extends UpdateCompanion<LocalSendingMessageData> {
  final Value<String> conversationID;
  final Value<String> clientMsgID;
  final Value<String> ex;
  final Value<int> rowid;
  const LocalSendingMessageCompanion({
    this.conversationID = const Value.absent(),
    this.clientMsgID = const Value.absent(),
    this.ex = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  LocalSendingMessageCompanion.insert({
    required String conversationID,
    required String clientMsgID,
    required String ex,
    this.rowid = const Value.absent(),
  })  : conversationID = Value(conversationID),
        clientMsgID = Value(clientMsgID),
        ex = Value(ex);
  static Insertable<LocalSendingMessageData> custom({
    Expression<String>? conversationID,
    Expression<String>? clientMsgID,
    Expression<String>? ex,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (conversationID != null) 'conversation_id': conversationID,
      if (clientMsgID != null) 'client_msg_id': clientMsgID,
      if (ex != null) 'ex': ex,
      if (rowid != null) 'rowid': rowid,
    });
  }

  LocalSendingMessageCompanion copyWith(
      {Value<String>? conversationID,
      Value<String>? clientMsgID,
      Value<String>? ex,
      Value<int>? rowid}) {
    return LocalSendingMessageCompanion(
      conversationID: conversationID ?? this.conversationID,
      clientMsgID: clientMsgID ?? this.clientMsgID,
      ex: ex ?? this.ex,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (conversationID.present) {
      map['conversation_id'] = Variable<String>(conversationID.value);
    }
    if (clientMsgID.present) {
      map['client_msg_id'] = Variable<String>(clientMsgID.value);
    }
    if (ex.present) {
      map['ex'] = Variable<String>(ex.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('LocalSendingMessageCompanion(')
          ..write('conversationID: $conversationID, ')
          ..write('clientMsgID: $clientMsgID, ')
          ..write('ex: $ex, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $LocalUserCommandTable extends LocalUserCommand
    with TableInfo<$LocalUserCommandTable, LocalUserCommandData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $LocalUserCommandTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _userIDMeta = const VerificationMeta('userID');
  @override
  late final GeneratedColumn<String> userID = GeneratedColumn<String>(
      'user_id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _typeMeta = const VerificationMeta('type');
  @override
  late final GeneratedColumn<int> type = GeneratedColumn<int>(
      'type', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _uuidMeta = const VerificationMeta('uuid');
  @override
  late final GeneratedColumn<String> uuid = GeneratedColumn<String>(
      'uuid', aliasedName, false,
      additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 255),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  static const VerificationMeta _createTimeMeta =
      const VerificationMeta('createTime');
  @override
  late final GeneratedColumn<int> createTime = GeneratedColumn<int>(
      'create_time', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _valueMeta = const VerificationMeta('value');
  @override
  late final GeneratedColumn<String> value = GeneratedColumn<String>(
      'value', aliasedName, false,
      additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 255),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  static const VerificationMeta _exMeta = const VerificationMeta('ex');
  @override
  late final GeneratedColumn<String> ex = GeneratedColumn<String>(
      'ex', aliasedName, false,
      additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 1024),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns =>
      [userID, type, uuid, createTime, value, ex];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'local_user_command';
  @override
  VerificationContext validateIntegrity(
      Insertable<LocalUserCommandData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('user_id')) {
      context.handle(_userIDMeta,
          userID.isAcceptableOrUnknown(data['user_id']!, _userIDMeta));
    } else if (isInserting) {
      context.missing(_userIDMeta);
    }
    if (data.containsKey('type')) {
      context.handle(
          _typeMeta, type.isAcceptableOrUnknown(data['type']!, _typeMeta));
    } else if (isInserting) {
      context.missing(_typeMeta);
    }
    if (data.containsKey('uuid')) {
      context.handle(
          _uuidMeta, uuid.isAcceptableOrUnknown(data['uuid']!, _uuidMeta));
    } else if (isInserting) {
      context.missing(_uuidMeta);
    }
    if (data.containsKey('create_time')) {
      context.handle(
          _createTimeMeta,
          createTime.isAcceptableOrUnknown(
              data['create_time']!, _createTimeMeta));
    } else if (isInserting) {
      context.missing(_createTimeMeta);
    }
    if (data.containsKey('value')) {
      context.handle(
          _valueMeta, value.isAcceptableOrUnknown(data['value']!, _valueMeta));
    } else if (isInserting) {
      context.missing(_valueMeta);
    }
    if (data.containsKey('ex')) {
      context.handle(_exMeta, ex.isAcceptableOrUnknown(data['ex']!, _exMeta));
    } else if (isInserting) {
      context.missing(_exMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {userID, type, uuid};
  @override
  LocalUserCommandData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return LocalUserCommandData(
      userID: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}user_id'])!,
      type: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}type'])!,
      uuid: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}uuid'])!,
      createTime: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}create_time'])!,
      value: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}value'])!,
      ex: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}ex'])!,
    );
  }

  @override
  $LocalUserCommandTable createAlias(String alias) {
    return $LocalUserCommandTable(attachedDatabase, alias);
  }
}

class LocalUserCommandData extends DataClass
    implements Insertable<LocalUserCommandData> {
  final String userID;
  final int type;
  final String uuid;
  final int createTime;
  final String value;
  final String ex;
  const LocalUserCommandData(
      {required this.userID,
      required this.type,
      required this.uuid,
      required this.createTime,
      required this.value,
      required this.ex});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['user_id'] = Variable<String>(userID);
    map['type'] = Variable<int>(type);
    map['uuid'] = Variable<String>(uuid);
    map['create_time'] = Variable<int>(createTime);
    map['value'] = Variable<String>(value);
    map['ex'] = Variable<String>(ex);
    return map;
  }

  LocalUserCommandCompanion toCompanion(bool nullToAbsent) {
    return LocalUserCommandCompanion(
      userID: Value(userID),
      type: Value(type),
      uuid: Value(uuid),
      createTime: Value(createTime),
      value: Value(value),
      ex: Value(ex),
    );
  }

  factory LocalUserCommandData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return LocalUserCommandData(
      userID: serializer.fromJson<String>(json['userID']),
      type: serializer.fromJson<int>(json['type']),
      uuid: serializer.fromJson<String>(json['uuid']),
      createTime: serializer.fromJson<int>(json['createTime']),
      value: serializer.fromJson<String>(json['value']),
      ex: serializer.fromJson<String>(json['ex']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'userID': serializer.toJson<String>(userID),
      'type': serializer.toJson<int>(type),
      'uuid': serializer.toJson<String>(uuid),
      'createTime': serializer.toJson<int>(createTime),
      'value': serializer.toJson<String>(value),
      'ex': serializer.toJson<String>(ex),
    };
  }

  LocalUserCommandData copyWith(
          {String? userID,
          int? type,
          String? uuid,
          int? createTime,
          String? value,
          String? ex}) =>
      LocalUserCommandData(
        userID: userID ?? this.userID,
        type: type ?? this.type,
        uuid: uuid ?? this.uuid,
        createTime: createTime ?? this.createTime,
        value: value ?? this.value,
        ex: ex ?? this.ex,
      );
  LocalUserCommandData copyWithCompanion(LocalUserCommandCompanion data) {
    return LocalUserCommandData(
      userID: data.userID.present ? data.userID.value : this.userID,
      type: data.type.present ? data.type.value : this.type,
      uuid: data.uuid.present ? data.uuid.value : this.uuid,
      createTime:
          data.createTime.present ? data.createTime.value : this.createTime,
      value: data.value.present ? data.value.value : this.value,
      ex: data.ex.present ? data.ex.value : this.ex,
    );
  }

  @override
  String toString() {
    return (StringBuffer('LocalUserCommandData(')
          ..write('userID: $userID, ')
          ..write('type: $type, ')
          ..write('uuid: $uuid, ')
          ..write('createTime: $createTime, ')
          ..write('value: $value, ')
          ..write('ex: $ex')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(userID, type, uuid, createTime, value, ex);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is LocalUserCommandData &&
          other.userID == this.userID &&
          other.type == this.type &&
          other.uuid == this.uuid &&
          other.createTime == this.createTime &&
          other.value == this.value &&
          other.ex == this.ex);
}

class LocalUserCommandCompanion extends UpdateCompanion<LocalUserCommandData> {
  final Value<String> userID;
  final Value<int> type;
  final Value<String> uuid;
  final Value<int> createTime;
  final Value<String> value;
  final Value<String> ex;
  final Value<int> rowid;
  const LocalUserCommandCompanion({
    this.userID = const Value.absent(),
    this.type = const Value.absent(),
    this.uuid = const Value.absent(),
    this.createTime = const Value.absent(),
    this.value = const Value.absent(),
    this.ex = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  LocalUserCommandCompanion.insert({
    required String userID,
    required int type,
    required String uuid,
    required int createTime,
    required String value,
    required String ex,
    this.rowid = const Value.absent(),
  })  : userID = Value(userID),
        type = Value(type),
        uuid = Value(uuid),
        createTime = Value(createTime),
        value = Value(value),
        ex = Value(ex);
  static Insertable<LocalUserCommandData> custom({
    Expression<String>? userID,
    Expression<int>? type,
    Expression<String>? uuid,
    Expression<int>? createTime,
    Expression<String>? value,
    Expression<String>? ex,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (userID != null) 'user_id': userID,
      if (type != null) 'type': type,
      if (uuid != null) 'uuid': uuid,
      if (createTime != null) 'create_time': createTime,
      if (value != null) 'value': value,
      if (ex != null) 'ex': ex,
      if (rowid != null) 'rowid': rowid,
    });
  }

  LocalUserCommandCompanion copyWith(
      {Value<String>? userID,
      Value<int>? type,
      Value<String>? uuid,
      Value<int>? createTime,
      Value<String>? value,
      Value<String>? ex,
      Value<int>? rowid}) {
    return LocalUserCommandCompanion(
      userID: userID ?? this.userID,
      type: type ?? this.type,
      uuid: uuid ?? this.uuid,
      createTime: createTime ?? this.createTime,
      value: value ?? this.value,
      ex: ex ?? this.ex,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (userID.present) {
      map['user_id'] = Variable<String>(userID.value);
    }
    if (type.present) {
      map['type'] = Variable<int>(type.value);
    }
    if (uuid.present) {
      map['uuid'] = Variable<String>(uuid.value);
    }
    if (createTime.present) {
      map['create_time'] = Variable<int>(createTime.value);
    }
    if (value.present) {
      map['value'] = Variable<String>(value.value);
    }
    if (ex.present) {
      map['ex'] = Variable<String>(ex.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('LocalUserCommandCompanion(')
          ..write('userID: $userID, ')
          ..write('type: $type, ')
          ..write('uuid: $uuid, ')
          ..write('createTime: $createTime, ')
          ..write('value: $value, ')
          ..write('ex: $ex, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $LocalVersionSyncsTable extends LocalVersionSyncs
    with TableInfo<$LocalVersionSyncsTable, LocalVersionSync> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $LocalVersionSyncsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _tableMeta = const VerificationMeta('table');
  @override
  late final GeneratedColumn<String> table = GeneratedColumn<String>(
      'table', aliasedName, false,
      additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 255),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  static const VerificationMeta _entityIDMeta =
      const VerificationMeta('entityID');
  @override
  late final GeneratedColumn<String> entityID = GeneratedColumn<String>(
      'entity_id', aliasedName, false,
      additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 255),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  static const VerificationMeta _versionIDMeta =
      const VerificationMeta('versionID');
  @override
  late final GeneratedColumn<String> versionID = GeneratedColumn<String>(
      'version_id', aliasedName, false,
      additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 255),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  static const VerificationMeta _versionMeta =
      const VerificationMeta('version');
  @override
  late final GeneratedColumn<int> version = GeneratedColumn<int>(
      'version', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _createTimeMeta =
      const VerificationMeta('createTime');
  @override
  late final GeneratedColumn<int> createTime = GeneratedColumn<int>(
      'create_time', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _uidListMeta =
      const VerificationMeta('uidList');
  @override
  late final GeneratedColumnWithTypeConverter<List<String>, String> uidList =
      GeneratedColumn<String>('uid_list', aliasedName, false,
              additionalChecks:
                  GeneratedColumn.checkTextLength(maxTextLength: 65535),
              type: DriftSqlType.string,
              requiredDuringInsert: true)
          .withConverter<List<String>>(
              $LocalVersionSyncsTable.$converteruidList);
  @override
  List<GeneratedColumn> get $columns =>
      [table, entityID, versionID, version, createTime, uidList];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'local_sync_version';
  @override
  VerificationContext validateIntegrity(Insertable<LocalVersionSync> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('table')) {
      context.handle(
          _tableMeta, table.isAcceptableOrUnknown(data['table']!, _tableMeta));
    } else if (isInserting) {
      context.missing(_tableMeta);
    }
    if (data.containsKey('entity_id')) {
      context.handle(_entityIDMeta,
          entityID.isAcceptableOrUnknown(data['entity_id']!, _entityIDMeta));
    } else if (isInserting) {
      context.missing(_entityIDMeta);
    }
    if (data.containsKey('version_id')) {
      context.handle(_versionIDMeta,
          versionID.isAcceptableOrUnknown(data['version_id']!, _versionIDMeta));
    } else if (isInserting) {
      context.missing(_versionIDMeta);
    }
    if (data.containsKey('version')) {
      context.handle(_versionMeta,
          version.isAcceptableOrUnknown(data['version']!, _versionMeta));
    } else if (isInserting) {
      context.missing(_versionMeta);
    }
    if (data.containsKey('create_time')) {
      context.handle(
          _createTimeMeta,
          createTime.isAcceptableOrUnknown(
              data['create_time']!, _createTimeMeta));
    } else if (isInserting) {
      context.missing(_createTimeMeta);
    }
    context.handle(_uidListMeta, const VerificationResult.success());
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {table, entityID};
  @override
  LocalVersionSync map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return LocalVersionSync(
      table: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}table'])!,
      entityID: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}entity_id'])!,
      versionID: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}version_id'])!,
      version: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}version'])!,
      createTime: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}create_time'])!,
      uidList: $LocalVersionSyncsTable.$converteruidList.fromSql(
          attachedDatabase.typeMapping
              .read(DriftSqlType.string, data['${effectivePrefix}uid_list'])!),
    );
  }

  @override
  $LocalVersionSyncsTable createAlias(String alias) {
    return $LocalVersionSyncsTable(attachedDatabase, alias);
  }

  static TypeConverter<List<String>, String> $converteruidList =
      StringListTypeConverter();
}

class LocalVersionSyncsCompanion extends UpdateCompanion<LocalVersionSync> {
  final Value<String> table;
  final Value<String> entityID;
  final Value<String> versionID;
  final Value<int> version;
  final Value<int> createTime;
  final Value<List<String>> uidList;
  final Value<int> rowid;
  const LocalVersionSyncsCompanion({
    this.table = const Value.absent(),
    this.entityID = const Value.absent(),
    this.versionID = const Value.absent(),
    this.version = const Value.absent(),
    this.createTime = const Value.absent(),
    this.uidList = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  LocalVersionSyncsCompanion.insert({
    required String table,
    required String entityID,
    required String versionID,
    required int version,
    required int createTime,
    required List<String> uidList,
    this.rowid = const Value.absent(),
  })  : table = Value(table),
        entityID = Value(entityID),
        versionID = Value(versionID),
        version = Value(version),
        createTime = Value(createTime),
        uidList = Value(uidList);
  static Insertable<LocalVersionSync> custom({
    Expression<String>? table,
    Expression<String>? entityID,
    Expression<String>? versionID,
    Expression<int>? version,
    Expression<int>? createTime,
    Expression<String>? uidList,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (table != null) 'table': table,
      if (entityID != null) 'entity_id': entityID,
      if (versionID != null) 'version_id': versionID,
      if (version != null) 'version': version,
      if (createTime != null) 'create_time': createTime,
      if (uidList != null) 'uid_list': uidList,
      if (rowid != null) 'rowid': rowid,
    });
  }

  LocalVersionSyncsCompanion copyWith(
      {Value<String>? table,
      Value<String>? entityID,
      Value<String>? versionID,
      Value<int>? version,
      Value<int>? createTime,
      Value<List<String>>? uidList,
      Value<int>? rowid}) {
    return LocalVersionSyncsCompanion(
      table: table ?? this.table,
      entityID: entityID ?? this.entityID,
      versionID: versionID ?? this.versionID,
      version: version ?? this.version,
      createTime: createTime ?? this.createTime,
      uidList: uidList ?? this.uidList,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (table.present) {
      map['table'] = Variable<String>(table.value);
    }
    if (entityID.present) {
      map['entity_id'] = Variable<String>(entityID.value);
    }
    if (versionID.present) {
      map['version_id'] = Variable<String>(versionID.value);
    }
    if (version.present) {
      map['version'] = Variable<int>(version.value);
    }
    if (createTime.present) {
      map['create_time'] = Variable<int>(createTime.value);
    }
    if (uidList.present) {
      map['uid_list'] = Variable<String>(
          $LocalVersionSyncsTable.$converteruidList.toSql(uidList.value));
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('LocalVersionSyncsCompanion(')
          ..write('table: $table, ')
          ..write('entityID: $entityID, ')
          ..write('versionID: $versionID, ')
          ..write('version: $version, ')
          ..write('createTime: $createTime, ')
          ..write('uidList: $uidList, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $LocalAppSDKVersionsTable extends LocalAppSDKVersions
    with TableInfo<$LocalAppSDKVersionsTable, LocalAppSDKVersion> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $LocalAppSDKVersionsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _versionMeta =
      const VerificationMeta('version');
  @override
  late final GeneratedColumn<String> version = GeneratedColumn<String>(
      'version', aliasedName, false,
      additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 255),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [version];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'local_app_sdk_version';
  @override
  VerificationContext validateIntegrity(Insertable<LocalAppSDKVersion> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('version')) {
      context.handle(_versionMeta,
          version.isAcceptableOrUnknown(data['version']!, _versionMeta));
    } else if (isInserting) {
      context.missing(_versionMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {version};
  @override
  LocalAppSDKVersion map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return LocalAppSDKVersion(
      version: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}version'])!,
    );
  }

  @override
  $LocalAppSDKVersionsTable createAlias(String alias) {
    return $LocalAppSDKVersionsTable(attachedDatabase, alias);
  }
}

class LocalAppSDKVersion extends DataClass
    implements Insertable<LocalAppSDKVersion> {
  final String version;
  const LocalAppSDKVersion({required this.version});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['version'] = Variable<String>(version);
    return map;
  }

  LocalAppSDKVersionsCompanion toCompanion(bool nullToAbsent) {
    return LocalAppSDKVersionsCompanion(
      version: Value(version),
    );
  }

  factory LocalAppSDKVersion.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return LocalAppSDKVersion(
      version: serializer.fromJson<String>(json['version']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'version': serializer.toJson<String>(version),
    };
  }

  LocalAppSDKVersion copyWith({String? version}) => LocalAppSDKVersion(
        version: version ?? this.version,
      );
  LocalAppSDKVersion copyWithCompanion(LocalAppSDKVersionsCompanion data) {
    return LocalAppSDKVersion(
      version: data.version.present ? data.version.value : this.version,
    );
  }

  @override
  String toString() {
    return (StringBuffer('LocalAppSDKVersion(')
          ..write('version: $version')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => version.hashCode;
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is LocalAppSDKVersion && other.version == this.version);
}

class LocalAppSDKVersionsCompanion extends UpdateCompanion<LocalAppSDKVersion> {
  final Value<String> version;
  final Value<int> rowid;
  const LocalAppSDKVersionsCompanion({
    this.version = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  LocalAppSDKVersionsCompanion.insert({
    required String version,
    this.rowid = const Value.absent(),
  }) : version = Value(version);
  static Insertable<LocalAppSDKVersion> custom({
    Expression<String>? version,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (version != null) 'version': version,
      if (rowid != null) 'rowid': rowid,
    });
  }

  LocalAppSDKVersionsCompanion copyWith(
      {Value<String>? version, Value<int>? rowid}) {
    return LocalAppSDKVersionsCompanion(
      version: version ?? this.version,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (version.present) {
      map['version'] = Variable<String>(version.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('LocalAppSDKVersionsCompanion(')
          ..write('version: $version, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $LocalFriendTable localFriend = $LocalFriendTable(this);
  late final $LocalFriendRequestTable localFriendRequest =
      $LocalFriendRequestTable(this);
  late final $LocalGroupTable localGroup = $LocalGroupTable(this);
  late final $LocalGroupMemberTable localGroupMember =
      $LocalGroupMemberTable(this);
  late final $LocalGroupRequestTable localGroupRequest =
      $LocalGroupRequestTable(this);
  late final $LocalUserTable localUser = $LocalUserTable(this);
  late final $LocalBlackTable localBlack = $LocalBlackTable(this);
  late final $LocalSeqDataTableTable localSeqDataTable =
      $LocalSeqDataTableTable(this);
  late final $LocalSeqTable localSeq = $LocalSeqTable(this);
  late final $LocalChatLogTable localChatLog = $LocalChatLogTable(this);
  late final $LocalErrChatLogTable localErrChatLog =
      $LocalErrChatLogTable(this);
  late final $TempCacheLocalChatLogTable tempCacheLocalChatLog =
      $TempCacheLocalChatLogTable(this);
  late final $LocalConversationTable localConversation =
      $LocalConversationTable(this);
  late final $LocalConversationUnreadMessageTable
      localConversationUnreadMessage =
      $LocalConversationUnreadMessageTable(this);
  late final $LocalAdminGroupRequestsTable localAdminGroupRequests =
      $LocalAdminGroupRequestsTable(this);
  late final $LocalChatLogReactionExtensionsTable
      localChatLogReactionExtensions =
      $LocalChatLogReactionExtensionsTable(this);
  late final $LocalWorkMomentNotificationTable localWorkMomentNotification =
      $LocalWorkMomentNotificationTable(this);
  late final $LocalWorkMomentsNotificationUnreadCountTable
      localWorkMomentsNotificationUnreadCount =
      $LocalWorkMomentsNotificationUnreadCountTable(this);
  late final $NotificationSeqTable notificationSeq =
      $NotificationSeqTable(this);
  late final $LocalUploadTable localUpload = $LocalUploadTable(this);
  late final $LocalStrangerTable localStranger = $LocalStrangerTable(this);
  late final $LocalSendingMessageTable localSendingMessage =
      $LocalSendingMessageTable(this);
  late final $LocalUserCommandTable localUserCommand =
      $LocalUserCommandTable(this);
  late final $LocalVersionSyncsTable localVersionSyncs =
      $LocalVersionSyncsTable(this);
  late final $LocalAppSDKVersionsTable localAppSDKVersions =
      $LocalAppSDKVersionsTable(this);
  late final Index indexRoleLevel = Index('index_role_level',
      'CREATE INDEX index_role_level ON local_group_members (role_level)');
  late final Index indexJoinTime = Index('index_join_time',
      'CREATE INDEX index_join_time ON local_group_members (join_time)');
  late final Index indexRecvId = Index('index_recv_id',
      'CREATE INDEX index_recv_id ON local_chat_log (recv_id)');
  late final Index contentTypeAlone = Index('content_type_alone',
      'CREATE INDEX content_type_alone ON local_chat_log (content_type)');
  late final Index indexSeq =
      Index('index_seq', 'CREATE INDEX index_seq ON local_chat_log (seq)');
  late final Index indexSendTime = Index('index_send_time',
      'CREATE INDEX index_send_time ON local_chat_log (send_time)');
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [
        localFriend,
        localFriendRequest,
        localGroup,
        localGroupMember,
        localGroupRequest,
        localUser,
        localBlack,
        localSeqDataTable,
        localSeq,
        localChatLog,
        localErrChatLog,
        tempCacheLocalChatLog,
        localConversation,
        localConversationUnreadMessage,
        localAdminGroupRequests,
        localChatLogReactionExtensions,
        localWorkMomentNotification,
        localWorkMomentsNotificationUnreadCount,
        notificationSeq,
        localUpload,
        localStranger,
        localSendingMessage,
        localUserCommand,
        localVersionSyncs,
        localAppSDKVersions,
        indexRoleLevel,
        indexJoinTime,
        indexRecvId,
        contentTypeAlone,
        indexSeq,
        indexSendTime
      ];
}

typedef $$LocalFriendTableCreateCompanionBuilder = LocalFriendCompanion
    Function({
  required String ownerUserID,
  required String friendUserID,
  required String remark,
  required int createTime,
  required int addSource,
  required String operatorUserID,
  required String nickname,
  required String faceURL,
  required String ex,
  required String attachedInfo,
  required bool isPinned,
  Value<int> rowid,
});
typedef $$LocalFriendTableUpdateCompanionBuilder = LocalFriendCompanion
    Function({
  Value<String> ownerUserID,
  Value<String> friendUserID,
  Value<String> remark,
  Value<int> createTime,
  Value<int> addSource,
  Value<String> operatorUserID,
  Value<String> nickname,
  Value<String> faceURL,
  Value<String> ex,
  Value<String> attachedInfo,
  Value<bool> isPinned,
  Value<int> rowid,
});

class $$LocalFriendTableFilterComposer
    extends FilterComposer<_$AppDatabase, $LocalFriendTable> {
  $$LocalFriendTableFilterComposer(super.$state);
  ColumnFilters<String> get ownerUserID => $state.composableBuilder(
      column: $state.table.ownerUserID,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get friendUserID => $state.composableBuilder(
      column: $state.table.friendUserID,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get remark => $state.composableBuilder(
      column: $state.table.remark,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get createTime => $state.composableBuilder(
      column: $state.table.createTime,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get addSource => $state.composableBuilder(
      column: $state.table.addSource,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get operatorUserID => $state.composableBuilder(
      column: $state.table.operatorUserID,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get nickname => $state.composableBuilder(
      column: $state.table.nickname,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get faceURL => $state.composableBuilder(
      column: $state.table.faceURL,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get ex => $state.composableBuilder(
      column: $state.table.ex,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get attachedInfo => $state.composableBuilder(
      column: $state.table.attachedInfo,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<bool> get isPinned => $state.composableBuilder(
      column: $state.table.isPinned,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));
}

class $$LocalFriendTableOrderingComposer
    extends OrderingComposer<_$AppDatabase, $LocalFriendTable> {
  $$LocalFriendTableOrderingComposer(super.$state);
  ColumnOrderings<String> get ownerUserID => $state.composableBuilder(
      column: $state.table.ownerUserID,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get friendUserID => $state.composableBuilder(
      column: $state.table.friendUserID,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get remark => $state.composableBuilder(
      column: $state.table.remark,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get createTime => $state.composableBuilder(
      column: $state.table.createTime,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get addSource => $state.composableBuilder(
      column: $state.table.addSource,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get operatorUserID => $state.composableBuilder(
      column: $state.table.operatorUserID,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get nickname => $state.composableBuilder(
      column: $state.table.nickname,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get faceURL => $state.composableBuilder(
      column: $state.table.faceURL,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get ex => $state.composableBuilder(
      column: $state.table.ex,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get attachedInfo => $state.composableBuilder(
      column: $state.table.attachedInfo,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<bool> get isPinned => $state.composableBuilder(
      column: $state.table.isPinned,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));
}

class $$LocalFriendTableTableManager extends RootTableManager<
    _$AppDatabase,
    $LocalFriendTable,
    LocalFriendData,
    $$LocalFriendTableFilterComposer,
    $$LocalFriendTableOrderingComposer,
    $$LocalFriendTableCreateCompanionBuilder,
    $$LocalFriendTableUpdateCompanionBuilder,
    (
      LocalFriendData,
      BaseReferences<_$AppDatabase, $LocalFriendTable, LocalFriendData>
    ),
    LocalFriendData,
    PrefetchHooks Function()> {
  $$LocalFriendTableTableManager(_$AppDatabase db, $LocalFriendTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$LocalFriendTableFilterComposer(ComposerState(db, table)),
          orderingComposer:
              $$LocalFriendTableOrderingComposer(ComposerState(db, table)),
          updateCompanionCallback: ({
            Value<String> ownerUserID = const Value.absent(),
            Value<String> friendUserID = const Value.absent(),
            Value<String> remark = const Value.absent(),
            Value<int> createTime = const Value.absent(),
            Value<int> addSource = const Value.absent(),
            Value<String> operatorUserID = const Value.absent(),
            Value<String> nickname = const Value.absent(),
            Value<String> faceURL = const Value.absent(),
            Value<String> ex = const Value.absent(),
            Value<String> attachedInfo = const Value.absent(),
            Value<bool> isPinned = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              LocalFriendCompanion(
            ownerUserID: ownerUserID,
            friendUserID: friendUserID,
            remark: remark,
            createTime: createTime,
            addSource: addSource,
            operatorUserID: operatorUserID,
            nickname: nickname,
            faceURL: faceURL,
            ex: ex,
            attachedInfo: attachedInfo,
            isPinned: isPinned,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String ownerUserID,
            required String friendUserID,
            required String remark,
            required int createTime,
            required int addSource,
            required String operatorUserID,
            required String nickname,
            required String faceURL,
            required String ex,
            required String attachedInfo,
            required bool isPinned,
            Value<int> rowid = const Value.absent(),
          }) =>
              LocalFriendCompanion.insert(
            ownerUserID: ownerUserID,
            friendUserID: friendUserID,
            remark: remark,
            createTime: createTime,
            addSource: addSource,
            operatorUserID: operatorUserID,
            nickname: nickname,
            faceURL: faceURL,
            ex: ex,
            attachedInfo: attachedInfo,
            isPinned: isPinned,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$LocalFriendTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $LocalFriendTable,
    LocalFriendData,
    $$LocalFriendTableFilterComposer,
    $$LocalFriendTableOrderingComposer,
    $$LocalFriendTableCreateCompanionBuilder,
    $$LocalFriendTableUpdateCompanionBuilder,
    (
      LocalFriendData,
      BaseReferences<_$AppDatabase, $LocalFriendTable, LocalFriendData>
    ),
    LocalFriendData,
    PrefetchHooks Function()>;
typedef $$LocalFriendRequestTableCreateCompanionBuilder
    = LocalFriendRequestCompanion Function({
  required String fromUserID,
  required String fromNickname,
  required String fromFaceURL,
  required String toUserID,
  required String toNickname,
  required String toFaceURL,
  required int handleResult,
  required String reqMsg,
  required int createTime,
  required String handlerUserID,
  required String handleMsg,
  required int handleTime,
  required String ex,
  required String attachedInfo,
  Value<int> rowid,
});
typedef $$LocalFriendRequestTableUpdateCompanionBuilder
    = LocalFriendRequestCompanion Function({
  Value<String> fromUserID,
  Value<String> fromNickname,
  Value<String> fromFaceURL,
  Value<String> toUserID,
  Value<String> toNickname,
  Value<String> toFaceURL,
  Value<int> handleResult,
  Value<String> reqMsg,
  Value<int> createTime,
  Value<String> handlerUserID,
  Value<String> handleMsg,
  Value<int> handleTime,
  Value<String> ex,
  Value<String> attachedInfo,
  Value<int> rowid,
});

class $$LocalFriendRequestTableFilterComposer
    extends FilterComposer<_$AppDatabase, $LocalFriendRequestTable> {
  $$LocalFriendRequestTableFilterComposer(super.$state);
  ColumnFilters<String> get fromUserID => $state.composableBuilder(
      column: $state.table.fromUserID,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get fromNickname => $state.composableBuilder(
      column: $state.table.fromNickname,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get fromFaceURL => $state.composableBuilder(
      column: $state.table.fromFaceURL,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get toUserID => $state.composableBuilder(
      column: $state.table.toUserID,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get toNickname => $state.composableBuilder(
      column: $state.table.toNickname,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get toFaceURL => $state.composableBuilder(
      column: $state.table.toFaceURL,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get handleResult => $state.composableBuilder(
      column: $state.table.handleResult,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get reqMsg => $state.composableBuilder(
      column: $state.table.reqMsg,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get createTime => $state.composableBuilder(
      column: $state.table.createTime,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get handlerUserID => $state.composableBuilder(
      column: $state.table.handlerUserID,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get handleMsg => $state.composableBuilder(
      column: $state.table.handleMsg,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get handleTime => $state.composableBuilder(
      column: $state.table.handleTime,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get ex => $state.composableBuilder(
      column: $state.table.ex,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get attachedInfo => $state.composableBuilder(
      column: $state.table.attachedInfo,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));
}

class $$LocalFriendRequestTableOrderingComposer
    extends OrderingComposer<_$AppDatabase, $LocalFriendRequestTable> {
  $$LocalFriendRequestTableOrderingComposer(super.$state);
  ColumnOrderings<String> get fromUserID => $state.composableBuilder(
      column: $state.table.fromUserID,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get fromNickname => $state.composableBuilder(
      column: $state.table.fromNickname,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get fromFaceURL => $state.composableBuilder(
      column: $state.table.fromFaceURL,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get toUserID => $state.composableBuilder(
      column: $state.table.toUserID,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get toNickname => $state.composableBuilder(
      column: $state.table.toNickname,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get toFaceURL => $state.composableBuilder(
      column: $state.table.toFaceURL,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get handleResult => $state.composableBuilder(
      column: $state.table.handleResult,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get reqMsg => $state.composableBuilder(
      column: $state.table.reqMsg,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get createTime => $state.composableBuilder(
      column: $state.table.createTime,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get handlerUserID => $state.composableBuilder(
      column: $state.table.handlerUserID,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get handleMsg => $state.composableBuilder(
      column: $state.table.handleMsg,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get handleTime => $state.composableBuilder(
      column: $state.table.handleTime,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get ex => $state.composableBuilder(
      column: $state.table.ex,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get attachedInfo => $state.composableBuilder(
      column: $state.table.attachedInfo,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));
}

class $$LocalFriendRequestTableTableManager extends RootTableManager<
    _$AppDatabase,
    $LocalFriendRequestTable,
    LocalFriendRequestData,
    $$LocalFriendRequestTableFilterComposer,
    $$LocalFriendRequestTableOrderingComposer,
    $$LocalFriendRequestTableCreateCompanionBuilder,
    $$LocalFriendRequestTableUpdateCompanionBuilder,
    (
      LocalFriendRequestData,
      BaseReferences<_$AppDatabase, $LocalFriendRequestTable,
          LocalFriendRequestData>
    ),
    LocalFriendRequestData,
    PrefetchHooks Function()> {
  $$LocalFriendRequestTableTableManager(
      _$AppDatabase db, $LocalFriendRequestTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$LocalFriendRequestTableFilterComposer(ComposerState(db, table)),
          orderingComposer: $$LocalFriendRequestTableOrderingComposer(
              ComposerState(db, table)),
          updateCompanionCallback: ({
            Value<String> fromUserID = const Value.absent(),
            Value<String> fromNickname = const Value.absent(),
            Value<String> fromFaceURL = const Value.absent(),
            Value<String> toUserID = const Value.absent(),
            Value<String> toNickname = const Value.absent(),
            Value<String> toFaceURL = const Value.absent(),
            Value<int> handleResult = const Value.absent(),
            Value<String> reqMsg = const Value.absent(),
            Value<int> createTime = const Value.absent(),
            Value<String> handlerUserID = const Value.absent(),
            Value<String> handleMsg = const Value.absent(),
            Value<int> handleTime = const Value.absent(),
            Value<String> ex = const Value.absent(),
            Value<String> attachedInfo = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              LocalFriendRequestCompanion(
            fromUserID: fromUserID,
            fromNickname: fromNickname,
            fromFaceURL: fromFaceURL,
            toUserID: toUserID,
            toNickname: toNickname,
            toFaceURL: toFaceURL,
            handleResult: handleResult,
            reqMsg: reqMsg,
            createTime: createTime,
            handlerUserID: handlerUserID,
            handleMsg: handleMsg,
            handleTime: handleTime,
            ex: ex,
            attachedInfo: attachedInfo,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String fromUserID,
            required String fromNickname,
            required String fromFaceURL,
            required String toUserID,
            required String toNickname,
            required String toFaceURL,
            required int handleResult,
            required String reqMsg,
            required int createTime,
            required String handlerUserID,
            required String handleMsg,
            required int handleTime,
            required String ex,
            required String attachedInfo,
            Value<int> rowid = const Value.absent(),
          }) =>
              LocalFriendRequestCompanion.insert(
            fromUserID: fromUserID,
            fromNickname: fromNickname,
            fromFaceURL: fromFaceURL,
            toUserID: toUserID,
            toNickname: toNickname,
            toFaceURL: toFaceURL,
            handleResult: handleResult,
            reqMsg: reqMsg,
            createTime: createTime,
            handlerUserID: handlerUserID,
            handleMsg: handleMsg,
            handleTime: handleTime,
            ex: ex,
            attachedInfo: attachedInfo,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$LocalFriendRequestTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $LocalFriendRequestTable,
    LocalFriendRequestData,
    $$LocalFriendRequestTableFilterComposer,
    $$LocalFriendRequestTableOrderingComposer,
    $$LocalFriendRequestTableCreateCompanionBuilder,
    $$LocalFriendRequestTableUpdateCompanionBuilder,
    (
      LocalFriendRequestData,
      BaseReferences<_$AppDatabase, $LocalFriendRequestTable,
          LocalFriendRequestData>
    ),
    LocalFriendRequestData,
    PrefetchHooks Function()>;
typedef $$LocalGroupTableCreateCompanionBuilder = LocalGroupCompanion Function({
  required String groupID,
  required String groupName,
  required String notification,
  required String introduction,
  required String faceURL,
  required int createTime,
  required int status,
  required String creatorUserID,
  required int groupType,
  required String ownerUserID,
  required int memberCount,
  required String ex,
  required String attachedInfo,
  required int needVerification,
  required int lookMemberInfo,
  required int applyMemberFriend,
  required int notificationUpdateTime,
  required String notificationUserID,
  Value<int> rowid,
});
typedef $$LocalGroupTableUpdateCompanionBuilder = LocalGroupCompanion Function({
  Value<String> groupID,
  Value<String> groupName,
  Value<String> notification,
  Value<String> introduction,
  Value<String> faceURL,
  Value<int> createTime,
  Value<int> status,
  Value<String> creatorUserID,
  Value<int> groupType,
  Value<String> ownerUserID,
  Value<int> memberCount,
  Value<String> ex,
  Value<String> attachedInfo,
  Value<int> needVerification,
  Value<int> lookMemberInfo,
  Value<int> applyMemberFriend,
  Value<int> notificationUpdateTime,
  Value<String> notificationUserID,
  Value<int> rowid,
});

class $$LocalGroupTableFilterComposer
    extends FilterComposer<_$AppDatabase, $LocalGroupTable> {
  $$LocalGroupTableFilterComposer(super.$state);
  ColumnFilters<String> get groupID => $state.composableBuilder(
      column: $state.table.groupID,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get groupName => $state.composableBuilder(
      column: $state.table.groupName,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get notification => $state.composableBuilder(
      column: $state.table.notification,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get introduction => $state.composableBuilder(
      column: $state.table.introduction,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get faceURL => $state.composableBuilder(
      column: $state.table.faceURL,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get createTime => $state.composableBuilder(
      column: $state.table.createTime,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get status => $state.composableBuilder(
      column: $state.table.status,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get creatorUserID => $state.composableBuilder(
      column: $state.table.creatorUserID,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get groupType => $state.composableBuilder(
      column: $state.table.groupType,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get ownerUserID => $state.composableBuilder(
      column: $state.table.ownerUserID,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get memberCount => $state.composableBuilder(
      column: $state.table.memberCount,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get ex => $state.composableBuilder(
      column: $state.table.ex,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get attachedInfo => $state.composableBuilder(
      column: $state.table.attachedInfo,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get needVerification => $state.composableBuilder(
      column: $state.table.needVerification,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get lookMemberInfo => $state.composableBuilder(
      column: $state.table.lookMemberInfo,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get applyMemberFriend => $state.composableBuilder(
      column: $state.table.applyMemberFriend,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get notificationUpdateTime => $state.composableBuilder(
      column: $state.table.notificationUpdateTime,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get notificationUserID => $state.composableBuilder(
      column: $state.table.notificationUserID,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));
}

class $$LocalGroupTableOrderingComposer
    extends OrderingComposer<_$AppDatabase, $LocalGroupTable> {
  $$LocalGroupTableOrderingComposer(super.$state);
  ColumnOrderings<String> get groupID => $state.composableBuilder(
      column: $state.table.groupID,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get groupName => $state.composableBuilder(
      column: $state.table.groupName,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get notification => $state.composableBuilder(
      column: $state.table.notification,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get introduction => $state.composableBuilder(
      column: $state.table.introduction,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get faceURL => $state.composableBuilder(
      column: $state.table.faceURL,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get createTime => $state.composableBuilder(
      column: $state.table.createTime,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get status => $state.composableBuilder(
      column: $state.table.status,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get creatorUserID => $state.composableBuilder(
      column: $state.table.creatorUserID,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get groupType => $state.composableBuilder(
      column: $state.table.groupType,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get ownerUserID => $state.composableBuilder(
      column: $state.table.ownerUserID,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get memberCount => $state.composableBuilder(
      column: $state.table.memberCount,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get ex => $state.composableBuilder(
      column: $state.table.ex,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get attachedInfo => $state.composableBuilder(
      column: $state.table.attachedInfo,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get needVerification => $state.composableBuilder(
      column: $state.table.needVerification,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get lookMemberInfo => $state.composableBuilder(
      column: $state.table.lookMemberInfo,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get applyMemberFriend => $state.composableBuilder(
      column: $state.table.applyMemberFriend,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get notificationUpdateTime => $state.composableBuilder(
      column: $state.table.notificationUpdateTime,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get notificationUserID => $state.composableBuilder(
      column: $state.table.notificationUserID,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));
}

class $$LocalGroupTableTableManager extends RootTableManager<
    _$AppDatabase,
    $LocalGroupTable,
    LocalGroupData,
    $$LocalGroupTableFilterComposer,
    $$LocalGroupTableOrderingComposer,
    $$LocalGroupTableCreateCompanionBuilder,
    $$LocalGroupTableUpdateCompanionBuilder,
    (
      LocalGroupData,
      BaseReferences<_$AppDatabase, $LocalGroupTable, LocalGroupData>
    ),
    LocalGroupData,
    PrefetchHooks Function()> {
  $$LocalGroupTableTableManager(_$AppDatabase db, $LocalGroupTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$LocalGroupTableFilterComposer(ComposerState(db, table)),
          orderingComposer:
              $$LocalGroupTableOrderingComposer(ComposerState(db, table)),
          updateCompanionCallback: ({
            Value<String> groupID = const Value.absent(),
            Value<String> groupName = const Value.absent(),
            Value<String> notification = const Value.absent(),
            Value<String> introduction = const Value.absent(),
            Value<String> faceURL = const Value.absent(),
            Value<int> createTime = const Value.absent(),
            Value<int> status = const Value.absent(),
            Value<String> creatorUserID = const Value.absent(),
            Value<int> groupType = const Value.absent(),
            Value<String> ownerUserID = const Value.absent(),
            Value<int> memberCount = const Value.absent(),
            Value<String> ex = const Value.absent(),
            Value<String> attachedInfo = const Value.absent(),
            Value<int> needVerification = const Value.absent(),
            Value<int> lookMemberInfo = const Value.absent(),
            Value<int> applyMemberFriend = const Value.absent(),
            Value<int> notificationUpdateTime = const Value.absent(),
            Value<String> notificationUserID = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              LocalGroupCompanion(
            groupID: groupID,
            groupName: groupName,
            notification: notification,
            introduction: introduction,
            faceURL: faceURL,
            createTime: createTime,
            status: status,
            creatorUserID: creatorUserID,
            groupType: groupType,
            ownerUserID: ownerUserID,
            memberCount: memberCount,
            ex: ex,
            attachedInfo: attachedInfo,
            needVerification: needVerification,
            lookMemberInfo: lookMemberInfo,
            applyMemberFriend: applyMemberFriend,
            notificationUpdateTime: notificationUpdateTime,
            notificationUserID: notificationUserID,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String groupID,
            required String groupName,
            required String notification,
            required String introduction,
            required String faceURL,
            required int createTime,
            required int status,
            required String creatorUserID,
            required int groupType,
            required String ownerUserID,
            required int memberCount,
            required String ex,
            required String attachedInfo,
            required int needVerification,
            required int lookMemberInfo,
            required int applyMemberFriend,
            required int notificationUpdateTime,
            required String notificationUserID,
            Value<int> rowid = const Value.absent(),
          }) =>
              LocalGroupCompanion.insert(
            groupID: groupID,
            groupName: groupName,
            notification: notification,
            introduction: introduction,
            faceURL: faceURL,
            createTime: createTime,
            status: status,
            creatorUserID: creatorUserID,
            groupType: groupType,
            ownerUserID: ownerUserID,
            memberCount: memberCount,
            ex: ex,
            attachedInfo: attachedInfo,
            needVerification: needVerification,
            lookMemberInfo: lookMemberInfo,
            applyMemberFriend: applyMemberFriend,
            notificationUpdateTime: notificationUpdateTime,
            notificationUserID: notificationUserID,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$LocalGroupTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $LocalGroupTable,
    LocalGroupData,
    $$LocalGroupTableFilterComposer,
    $$LocalGroupTableOrderingComposer,
    $$LocalGroupTableCreateCompanionBuilder,
    $$LocalGroupTableUpdateCompanionBuilder,
    (
      LocalGroupData,
      BaseReferences<_$AppDatabase, $LocalGroupTable, LocalGroupData>
    ),
    LocalGroupData,
    PrefetchHooks Function()>;
typedef $$LocalGroupMemberTableCreateCompanionBuilder
    = LocalGroupMemberCompanion Function({
  required String groupID,
  required String userID,
  required String nickname,
  required String faceURL,
  required int roleLevel,
  required int joinTime,
  required int joinSource,
  required String inviterUserID,
  Value<int> muteEndTime,
  required String operatorUserID,
  required String ex,
  required String attachedInfo,
  Value<int> rowid,
});
typedef $$LocalGroupMemberTableUpdateCompanionBuilder
    = LocalGroupMemberCompanion Function({
  Value<String> groupID,
  Value<String> userID,
  Value<String> nickname,
  Value<String> faceURL,
  Value<int> roleLevel,
  Value<int> joinTime,
  Value<int> joinSource,
  Value<String> inviterUserID,
  Value<int> muteEndTime,
  Value<String> operatorUserID,
  Value<String> ex,
  Value<String> attachedInfo,
  Value<int> rowid,
});

class $$LocalGroupMemberTableFilterComposer
    extends FilterComposer<_$AppDatabase, $LocalGroupMemberTable> {
  $$LocalGroupMemberTableFilterComposer(super.$state);
  ColumnFilters<String> get groupID => $state.composableBuilder(
      column: $state.table.groupID,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get userID => $state.composableBuilder(
      column: $state.table.userID,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get nickname => $state.composableBuilder(
      column: $state.table.nickname,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get faceURL => $state.composableBuilder(
      column: $state.table.faceURL,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get roleLevel => $state.composableBuilder(
      column: $state.table.roleLevel,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get joinTime => $state.composableBuilder(
      column: $state.table.joinTime,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get joinSource => $state.composableBuilder(
      column: $state.table.joinSource,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get inviterUserID => $state.composableBuilder(
      column: $state.table.inviterUserID,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get muteEndTime => $state.composableBuilder(
      column: $state.table.muteEndTime,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get operatorUserID => $state.composableBuilder(
      column: $state.table.operatorUserID,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get ex => $state.composableBuilder(
      column: $state.table.ex,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get attachedInfo => $state.composableBuilder(
      column: $state.table.attachedInfo,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));
}

class $$LocalGroupMemberTableOrderingComposer
    extends OrderingComposer<_$AppDatabase, $LocalGroupMemberTable> {
  $$LocalGroupMemberTableOrderingComposer(super.$state);
  ColumnOrderings<String> get groupID => $state.composableBuilder(
      column: $state.table.groupID,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get userID => $state.composableBuilder(
      column: $state.table.userID,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get nickname => $state.composableBuilder(
      column: $state.table.nickname,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get faceURL => $state.composableBuilder(
      column: $state.table.faceURL,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get roleLevel => $state.composableBuilder(
      column: $state.table.roleLevel,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get joinTime => $state.composableBuilder(
      column: $state.table.joinTime,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get joinSource => $state.composableBuilder(
      column: $state.table.joinSource,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get inviterUserID => $state.composableBuilder(
      column: $state.table.inviterUserID,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get muteEndTime => $state.composableBuilder(
      column: $state.table.muteEndTime,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get operatorUserID => $state.composableBuilder(
      column: $state.table.operatorUserID,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get ex => $state.composableBuilder(
      column: $state.table.ex,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get attachedInfo => $state.composableBuilder(
      column: $state.table.attachedInfo,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));
}

class $$LocalGroupMemberTableTableManager extends RootTableManager<
    _$AppDatabase,
    $LocalGroupMemberTable,
    LocalGroupMemberData,
    $$LocalGroupMemberTableFilterComposer,
    $$LocalGroupMemberTableOrderingComposer,
    $$LocalGroupMemberTableCreateCompanionBuilder,
    $$LocalGroupMemberTableUpdateCompanionBuilder,
    (
      LocalGroupMemberData,
      BaseReferences<_$AppDatabase, $LocalGroupMemberTable,
          LocalGroupMemberData>
    ),
    LocalGroupMemberData,
    PrefetchHooks Function()> {
  $$LocalGroupMemberTableTableManager(
      _$AppDatabase db, $LocalGroupMemberTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$LocalGroupMemberTableFilterComposer(ComposerState(db, table)),
          orderingComposer:
              $$LocalGroupMemberTableOrderingComposer(ComposerState(db, table)),
          updateCompanionCallback: ({
            Value<String> groupID = const Value.absent(),
            Value<String> userID = const Value.absent(),
            Value<String> nickname = const Value.absent(),
            Value<String> faceURL = const Value.absent(),
            Value<int> roleLevel = const Value.absent(),
            Value<int> joinTime = const Value.absent(),
            Value<int> joinSource = const Value.absent(),
            Value<String> inviterUserID = const Value.absent(),
            Value<int> muteEndTime = const Value.absent(),
            Value<String> operatorUserID = const Value.absent(),
            Value<String> ex = const Value.absent(),
            Value<String> attachedInfo = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              LocalGroupMemberCompanion(
            groupID: groupID,
            userID: userID,
            nickname: nickname,
            faceURL: faceURL,
            roleLevel: roleLevel,
            joinTime: joinTime,
            joinSource: joinSource,
            inviterUserID: inviterUserID,
            muteEndTime: muteEndTime,
            operatorUserID: operatorUserID,
            ex: ex,
            attachedInfo: attachedInfo,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String groupID,
            required String userID,
            required String nickname,
            required String faceURL,
            required int roleLevel,
            required int joinTime,
            required int joinSource,
            required String inviterUserID,
            Value<int> muteEndTime = const Value.absent(),
            required String operatorUserID,
            required String ex,
            required String attachedInfo,
            Value<int> rowid = const Value.absent(),
          }) =>
              LocalGroupMemberCompanion.insert(
            groupID: groupID,
            userID: userID,
            nickname: nickname,
            faceURL: faceURL,
            roleLevel: roleLevel,
            joinTime: joinTime,
            joinSource: joinSource,
            inviterUserID: inviterUserID,
            muteEndTime: muteEndTime,
            operatorUserID: operatorUserID,
            ex: ex,
            attachedInfo: attachedInfo,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$LocalGroupMemberTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $LocalGroupMemberTable,
    LocalGroupMemberData,
    $$LocalGroupMemberTableFilterComposer,
    $$LocalGroupMemberTableOrderingComposer,
    $$LocalGroupMemberTableCreateCompanionBuilder,
    $$LocalGroupMemberTableUpdateCompanionBuilder,
    (
      LocalGroupMemberData,
      BaseReferences<_$AppDatabase, $LocalGroupMemberTable,
          LocalGroupMemberData>
    ),
    LocalGroupMemberData,
    PrefetchHooks Function()>;
typedef $$LocalGroupRequestTableCreateCompanionBuilder
    = LocalGroupRequestCompanion Function({
  required String groupID,
  required String groupName,
  required String notification,
  required String introduction,
  required String groupFaceURL,
  required int createTime,
  required int status,
  required String creatorUserID,
  required int groupType,
  required String ownerUserID,
  required int memberCount,
  required String userID,
  required String nickname,
  required String userFaceURL,
  required int handleResult,
  required String reqMsg,
  required String handleMsg,
  required int reqTime,
  required String handleUserID,
  required int handleTime,
  required String ex,
  required String attachedInfo,
  required int joinSource,
  required String inviterUserID,
  Value<int> rowid,
});
typedef $$LocalGroupRequestTableUpdateCompanionBuilder
    = LocalGroupRequestCompanion Function({
  Value<String> groupID,
  Value<String> groupName,
  Value<String> notification,
  Value<String> introduction,
  Value<String> groupFaceURL,
  Value<int> createTime,
  Value<int> status,
  Value<String> creatorUserID,
  Value<int> groupType,
  Value<String> ownerUserID,
  Value<int> memberCount,
  Value<String> userID,
  Value<String> nickname,
  Value<String> userFaceURL,
  Value<int> handleResult,
  Value<String> reqMsg,
  Value<String> handleMsg,
  Value<int> reqTime,
  Value<String> handleUserID,
  Value<int> handleTime,
  Value<String> ex,
  Value<String> attachedInfo,
  Value<int> joinSource,
  Value<String> inviterUserID,
  Value<int> rowid,
});

class $$LocalGroupRequestTableFilterComposer
    extends FilterComposer<_$AppDatabase, $LocalGroupRequestTable> {
  $$LocalGroupRequestTableFilterComposer(super.$state);
  ColumnFilters<String> get groupID => $state.composableBuilder(
      column: $state.table.groupID,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get groupName => $state.composableBuilder(
      column: $state.table.groupName,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get notification => $state.composableBuilder(
      column: $state.table.notification,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get introduction => $state.composableBuilder(
      column: $state.table.introduction,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get groupFaceURL => $state.composableBuilder(
      column: $state.table.groupFaceURL,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get createTime => $state.composableBuilder(
      column: $state.table.createTime,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get status => $state.composableBuilder(
      column: $state.table.status,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get creatorUserID => $state.composableBuilder(
      column: $state.table.creatorUserID,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get groupType => $state.composableBuilder(
      column: $state.table.groupType,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get ownerUserID => $state.composableBuilder(
      column: $state.table.ownerUserID,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get memberCount => $state.composableBuilder(
      column: $state.table.memberCount,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get userID => $state.composableBuilder(
      column: $state.table.userID,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get nickname => $state.composableBuilder(
      column: $state.table.nickname,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get userFaceURL => $state.composableBuilder(
      column: $state.table.userFaceURL,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get handleResult => $state.composableBuilder(
      column: $state.table.handleResult,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get reqMsg => $state.composableBuilder(
      column: $state.table.reqMsg,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get handleMsg => $state.composableBuilder(
      column: $state.table.handleMsg,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get reqTime => $state.composableBuilder(
      column: $state.table.reqTime,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get handleUserID => $state.composableBuilder(
      column: $state.table.handleUserID,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get handleTime => $state.composableBuilder(
      column: $state.table.handleTime,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get ex => $state.composableBuilder(
      column: $state.table.ex,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get attachedInfo => $state.composableBuilder(
      column: $state.table.attachedInfo,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get joinSource => $state.composableBuilder(
      column: $state.table.joinSource,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get inviterUserID => $state.composableBuilder(
      column: $state.table.inviterUserID,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));
}

class $$LocalGroupRequestTableOrderingComposer
    extends OrderingComposer<_$AppDatabase, $LocalGroupRequestTable> {
  $$LocalGroupRequestTableOrderingComposer(super.$state);
  ColumnOrderings<String> get groupID => $state.composableBuilder(
      column: $state.table.groupID,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get groupName => $state.composableBuilder(
      column: $state.table.groupName,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get notification => $state.composableBuilder(
      column: $state.table.notification,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get introduction => $state.composableBuilder(
      column: $state.table.introduction,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get groupFaceURL => $state.composableBuilder(
      column: $state.table.groupFaceURL,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get createTime => $state.composableBuilder(
      column: $state.table.createTime,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get status => $state.composableBuilder(
      column: $state.table.status,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get creatorUserID => $state.composableBuilder(
      column: $state.table.creatorUserID,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get groupType => $state.composableBuilder(
      column: $state.table.groupType,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get ownerUserID => $state.composableBuilder(
      column: $state.table.ownerUserID,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get memberCount => $state.composableBuilder(
      column: $state.table.memberCount,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get userID => $state.composableBuilder(
      column: $state.table.userID,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get nickname => $state.composableBuilder(
      column: $state.table.nickname,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get userFaceURL => $state.composableBuilder(
      column: $state.table.userFaceURL,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get handleResult => $state.composableBuilder(
      column: $state.table.handleResult,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get reqMsg => $state.composableBuilder(
      column: $state.table.reqMsg,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get handleMsg => $state.composableBuilder(
      column: $state.table.handleMsg,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get reqTime => $state.composableBuilder(
      column: $state.table.reqTime,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get handleUserID => $state.composableBuilder(
      column: $state.table.handleUserID,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get handleTime => $state.composableBuilder(
      column: $state.table.handleTime,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get ex => $state.composableBuilder(
      column: $state.table.ex,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get attachedInfo => $state.composableBuilder(
      column: $state.table.attachedInfo,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get joinSource => $state.composableBuilder(
      column: $state.table.joinSource,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get inviterUserID => $state.composableBuilder(
      column: $state.table.inviterUserID,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));
}

class $$LocalGroupRequestTableTableManager extends RootTableManager<
    _$AppDatabase,
    $LocalGroupRequestTable,
    LocalGroupRequestData,
    $$LocalGroupRequestTableFilterComposer,
    $$LocalGroupRequestTableOrderingComposer,
    $$LocalGroupRequestTableCreateCompanionBuilder,
    $$LocalGroupRequestTableUpdateCompanionBuilder,
    (
      LocalGroupRequestData,
      BaseReferences<_$AppDatabase, $LocalGroupRequestTable,
          LocalGroupRequestData>
    ),
    LocalGroupRequestData,
    PrefetchHooks Function()> {
  $$LocalGroupRequestTableTableManager(
      _$AppDatabase db, $LocalGroupRequestTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$LocalGroupRequestTableFilterComposer(ComposerState(db, table)),
          orderingComposer: $$LocalGroupRequestTableOrderingComposer(
              ComposerState(db, table)),
          updateCompanionCallback: ({
            Value<String> groupID = const Value.absent(),
            Value<String> groupName = const Value.absent(),
            Value<String> notification = const Value.absent(),
            Value<String> introduction = const Value.absent(),
            Value<String> groupFaceURL = const Value.absent(),
            Value<int> createTime = const Value.absent(),
            Value<int> status = const Value.absent(),
            Value<String> creatorUserID = const Value.absent(),
            Value<int> groupType = const Value.absent(),
            Value<String> ownerUserID = const Value.absent(),
            Value<int> memberCount = const Value.absent(),
            Value<String> userID = const Value.absent(),
            Value<String> nickname = const Value.absent(),
            Value<String> userFaceURL = const Value.absent(),
            Value<int> handleResult = const Value.absent(),
            Value<String> reqMsg = const Value.absent(),
            Value<String> handleMsg = const Value.absent(),
            Value<int> reqTime = const Value.absent(),
            Value<String> handleUserID = const Value.absent(),
            Value<int> handleTime = const Value.absent(),
            Value<String> ex = const Value.absent(),
            Value<String> attachedInfo = const Value.absent(),
            Value<int> joinSource = const Value.absent(),
            Value<String> inviterUserID = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              LocalGroupRequestCompanion(
            groupID: groupID,
            groupName: groupName,
            notification: notification,
            introduction: introduction,
            groupFaceURL: groupFaceURL,
            createTime: createTime,
            status: status,
            creatorUserID: creatorUserID,
            groupType: groupType,
            ownerUserID: ownerUserID,
            memberCount: memberCount,
            userID: userID,
            nickname: nickname,
            userFaceURL: userFaceURL,
            handleResult: handleResult,
            reqMsg: reqMsg,
            handleMsg: handleMsg,
            reqTime: reqTime,
            handleUserID: handleUserID,
            handleTime: handleTime,
            ex: ex,
            attachedInfo: attachedInfo,
            joinSource: joinSource,
            inviterUserID: inviterUserID,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String groupID,
            required String groupName,
            required String notification,
            required String introduction,
            required String groupFaceURL,
            required int createTime,
            required int status,
            required String creatorUserID,
            required int groupType,
            required String ownerUserID,
            required int memberCount,
            required String userID,
            required String nickname,
            required String userFaceURL,
            required int handleResult,
            required String reqMsg,
            required String handleMsg,
            required int reqTime,
            required String handleUserID,
            required int handleTime,
            required String ex,
            required String attachedInfo,
            required int joinSource,
            required String inviterUserID,
            Value<int> rowid = const Value.absent(),
          }) =>
              LocalGroupRequestCompanion.insert(
            groupID: groupID,
            groupName: groupName,
            notification: notification,
            introduction: introduction,
            groupFaceURL: groupFaceURL,
            createTime: createTime,
            status: status,
            creatorUserID: creatorUserID,
            groupType: groupType,
            ownerUserID: ownerUserID,
            memberCount: memberCount,
            userID: userID,
            nickname: nickname,
            userFaceURL: userFaceURL,
            handleResult: handleResult,
            reqMsg: reqMsg,
            handleMsg: handleMsg,
            reqTime: reqTime,
            handleUserID: handleUserID,
            handleTime: handleTime,
            ex: ex,
            attachedInfo: attachedInfo,
            joinSource: joinSource,
            inviterUserID: inviterUserID,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$LocalGroupRequestTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $LocalGroupRequestTable,
    LocalGroupRequestData,
    $$LocalGroupRequestTableFilterComposer,
    $$LocalGroupRequestTableOrderingComposer,
    $$LocalGroupRequestTableCreateCompanionBuilder,
    $$LocalGroupRequestTableUpdateCompanionBuilder,
    (
      LocalGroupRequestData,
      BaseReferences<_$AppDatabase, $LocalGroupRequestTable,
          LocalGroupRequestData>
    ),
    LocalGroupRequestData,
    PrefetchHooks Function()>;
typedef $$LocalUserTableCreateCompanionBuilder = LocalUserCompanion Function({
  required String userID,
  required String nickname,
  required String faceURL,
  required int createTime,
  required int appMangerLevel,
  required String ex,
  required String attachedInfo,
  required int globalRecvMsgOpt,
  Value<int> rowid,
});
typedef $$LocalUserTableUpdateCompanionBuilder = LocalUserCompanion Function({
  Value<String> userID,
  Value<String> nickname,
  Value<String> faceURL,
  Value<int> createTime,
  Value<int> appMangerLevel,
  Value<String> ex,
  Value<String> attachedInfo,
  Value<int> globalRecvMsgOpt,
  Value<int> rowid,
});

class $$LocalUserTableFilterComposer
    extends FilterComposer<_$AppDatabase, $LocalUserTable> {
  $$LocalUserTableFilterComposer(super.$state);
  ColumnFilters<String> get userID => $state.composableBuilder(
      column: $state.table.userID,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get nickname => $state.composableBuilder(
      column: $state.table.nickname,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get faceURL => $state.composableBuilder(
      column: $state.table.faceURL,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get createTime => $state.composableBuilder(
      column: $state.table.createTime,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get appMangerLevel => $state.composableBuilder(
      column: $state.table.appMangerLevel,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get ex => $state.composableBuilder(
      column: $state.table.ex,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get attachedInfo => $state.composableBuilder(
      column: $state.table.attachedInfo,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get globalRecvMsgOpt => $state.composableBuilder(
      column: $state.table.globalRecvMsgOpt,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));
}

class $$LocalUserTableOrderingComposer
    extends OrderingComposer<_$AppDatabase, $LocalUserTable> {
  $$LocalUserTableOrderingComposer(super.$state);
  ColumnOrderings<String> get userID => $state.composableBuilder(
      column: $state.table.userID,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get nickname => $state.composableBuilder(
      column: $state.table.nickname,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get faceURL => $state.composableBuilder(
      column: $state.table.faceURL,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get createTime => $state.composableBuilder(
      column: $state.table.createTime,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get appMangerLevel => $state.composableBuilder(
      column: $state.table.appMangerLevel,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get ex => $state.composableBuilder(
      column: $state.table.ex,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get attachedInfo => $state.composableBuilder(
      column: $state.table.attachedInfo,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get globalRecvMsgOpt => $state.composableBuilder(
      column: $state.table.globalRecvMsgOpt,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));
}

class $$LocalUserTableTableManager extends RootTableManager<
    _$AppDatabase,
    $LocalUserTable,
    LocalUserData,
    $$LocalUserTableFilterComposer,
    $$LocalUserTableOrderingComposer,
    $$LocalUserTableCreateCompanionBuilder,
    $$LocalUserTableUpdateCompanionBuilder,
    (
      LocalUserData,
      BaseReferences<_$AppDatabase, $LocalUserTable, LocalUserData>
    ),
    LocalUserData,
    PrefetchHooks Function()> {
  $$LocalUserTableTableManager(_$AppDatabase db, $LocalUserTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$LocalUserTableFilterComposer(ComposerState(db, table)),
          orderingComposer:
              $$LocalUserTableOrderingComposer(ComposerState(db, table)),
          updateCompanionCallback: ({
            Value<String> userID = const Value.absent(),
            Value<String> nickname = const Value.absent(),
            Value<String> faceURL = const Value.absent(),
            Value<int> createTime = const Value.absent(),
            Value<int> appMangerLevel = const Value.absent(),
            Value<String> ex = const Value.absent(),
            Value<String> attachedInfo = const Value.absent(),
            Value<int> globalRecvMsgOpt = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              LocalUserCompanion(
            userID: userID,
            nickname: nickname,
            faceURL: faceURL,
            createTime: createTime,
            appMangerLevel: appMangerLevel,
            ex: ex,
            attachedInfo: attachedInfo,
            globalRecvMsgOpt: globalRecvMsgOpt,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String userID,
            required String nickname,
            required String faceURL,
            required int createTime,
            required int appMangerLevel,
            required String ex,
            required String attachedInfo,
            required int globalRecvMsgOpt,
            Value<int> rowid = const Value.absent(),
          }) =>
              LocalUserCompanion.insert(
            userID: userID,
            nickname: nickname,
            faceURL: faceURL,
            createTime: createTime,
            appMangerLevel: appMangerLevel,
            ex: ex,
            attachedInfo: attachedInfo,
            globalRecvMsgOpt: globalRecvMsgOpt,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$LocalUserTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $LocalUserTable,
    LocalUserData,
    $$LocalUserTableFilterComposer,
    $$LocalUserTableOrderingComposer,
    $$LocalUserTableCreateCompanionBuilder,
    $$LocalUserTableUpdateCompanionBuilder,
    (
      LocalUserData,
      BaseReferences<_$AppDatabase, $LocalUserTable, LocalUserData>
    ),
    LocalUserData,
    PrefetchHooks Function()>;
typedef $$LocalBlackTableCreateCompanionBuilder = LocalBlackCompanion Function({
  required String ownerUserID,
  required String blockUserID,
  required String nickname,
  required String faceURL,
  required int createTime,
  required int addSource,
  required String operatorUserID,
  required String ex,
  required String attachedInfo,
  Value<int> rowid,
});
typedef $$LocalBlackTableUpdateCompanionBuilder = LocalBlackCompanion Function({
  Value<String> ownerUserID,
  Value<String> blockUserID,
  Value<String> nickname,
  Value<String> faceURL,
  Value<int> createTime,
  Value<int> addSource,
  Value<String> operatorUserID,
  Value<String> ex,
  Value<String> attachedInfo,
  Value<int> rowid,
});

class $$LocalBlackTableFilterComposer
    extends FilterComposer<_$AppDatabase, $LocalBlackTable> {
  $$LocalBlackTableFilterComposer(super.$state);
  ColumnFilters<String> get ownerUserID => $state.composableBuilder(
      column: $state.table.ownerUserID,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get blockUserID => $state.composableBuilder(
      column: $state.table.blockUserID,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get nickname => $state.composableBuilder(
      column: $state.table.nickname,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get faceURL => $state.composableBuilder(
      column: $state.table.faceURL,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get createTime => $state.composableBuilder(
      column: $state.table.createTime,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get addSource => $state.composableBuilder(
      column: $state.table.addSource,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get operatorUserID => $state.composableBuilder(
      column: $state.table.operatorUserID,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get ex => $state.composableBuilder(
      column: $state.table.ex,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get attachedInfo => $state.composableBuilder(
      column: $state.table.attachedInfo,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));
}

class $$LocalBlackTableOrderingComposer
    extends OrderingComposer<_$AppDatabase, $LocalBlackTable> {
  $$LocalBlackTableOrderingComposer(super.$state);
  ColumnOrderings<String> get ownerUserID => $state.composableBuilder(
      column: $state.table.ownerUserID,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get blockUserID => $state.composableBuilder(
      column: $state.table.blockUserID,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get nickname => $state.composableBuilder(
      column: $state.table.nickname,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get faceURL => $state.composableBuilder(
      column: $state.table.faceURL,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get createTime => $state.composableBuilder(
      column: $state.table.createTime,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get addSource => $state.composableBuilder(
      column: $state.table.addSource,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get operatorUserID => $state.composableBuilder(
      column: $state.table.operatorUserID,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get ex => $state.composableBuilder(
      column: $state.table.ex,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get attachedInfo => $state.composableBuilder(
      column: $state.table.attachedInfo,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));
}

class $$LocalBlackTableTableManager extends RootTableManager<
    _$AppDatabase,
    $LocalBlackTable,
    LocalBlackData,
    $$LocalBlackTableFilterComposer,
    $$LocalBlackTableOrderingComposer,
    $$LocalBlackTableCreateCompanionBuilder,
    $$LocalBlackTableUpdateCompanionBuilder,
    (
      LocalBlackData,
      BaseReferences<_$AppDatabase, $LocalBlackTable, LocalBlackData>
    ),
    LocalBlackData,
    PrefetchHooks Function()> {
  $$LocalBlackTableTableManager(_$AppDatabase db, $LocalBlackTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$LocalBlackTableFilterComposer(ComposerState(db, table)),
          orderingComposer:
              $$LocalBlackTableOrderingComposer(ComposerState(db, table)),
          updateCompanionCallback: ({
            Value<String> ownerUserID = const Value.absent(),
            Value<String> blockUserID = const Value.absent(),
            Value<String> nickname = const Value.absent(),
            Value<String> faceURL = const Value.absent(),
            Value<int> createTime = const Value.absent(),
            Value<int> addSource = const Value.absent(),
            Value<String> operatorUserID = const Value.absent(),
            Value<String> ex = const Value.absent(),
            Value<String> attachedInfo = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              LocalBlackCompanion(
            ownerUserID: ownerUserID,
            blockUserID: blockUserID,
            nickname: nickname,
            faceURL: faceURL,
            createTime: createTime,
            addSource: addSource,
            operatorUserID: operatorUserID,
            ex: ex,
            attachedInfo: attachedInfo,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String ownerUserID,
            required String blockUserID,
            required String nickname,
            required String faceURL,
            required int createTime,
            required int addSource,
            required String operatorUserID,
            required String ex,
            required String attachedInfo,
            Value<int> rowid = const Value.absent(),
          }) =>
              LocalBlackCompanion.insert(
            ownerUserID: ownerUserID,
            blockUserID: blockUserID,
            nickname: nickname,
            faceURL: faceURL,
            createTime: createTime,
            addSource: addSource,
            operatorUserID: operatorUserID,
            ex: ex,
            attachedInfo: attachedInfo,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$LocalBlackTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $LocalBlackTable,
    LocalBlackData,
    $$LocalBlackTableFilterComposer,
    $$LocalBlackTableOrderingComposer,
    $$LocalBlackTableCreateCompanionBuilder,
    $$LocalBlackTableUpdateCompanionBuilder,
    (
      LocalBlackData,
      BaseReferences<_$AppDatabase, $LocalBlackTable, LocalBlackData>
    ),
    LocalBlackData,
    PrefetchHooks Function()>;
typedef $$LocalSeqDataTableTableCreateCompanionBuilder
    = LocalSeqDataTableCompanion Function({
  required String userID,
  required int seq,
  Value<int> rowid,
});
typedef $$LocalSeqDataTableTableUpdateCompanionBuilder
    = LocalSeqDataTableCompanion Function({
  Value<String> userID,
  Value<int> seq,
  Value<int> rowid,
});

class $$LocalSeqDataTableTableFilterComposer
    extends FilterComposer<_$AppDatabase, $LocalSeqDataTableTable> {
  $$LocalSeqDataTableTableFilterComposer(super.$state);
  ColumnFilters<String> get userID => $state.composableBuilder(
      column: $state.table.userID,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get seq => $state.composableBuilder(
      column: $state.table.seq,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));
}

class $$LocalSeqDataTableTableOrderingComposer
    extends OrderingComposer<_$AppDatabase, $LocalSeqDataTableTable> {
  $$LocalSeqDataTableTableOrderingComposer(super.$state);
  ColumnOrderings<String> get userID => $state.composableBuilder(
      column: $state.table.userID,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get seq => $state.composableBuilder(
      column: $state.table.seq,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));
}

class $$LocalSeqDataTableTableTableManager extends RootTableManager<
    _$AppDatabase,
    $LocalSeqDataTableTable,
    LocalSeqDataTableData,
    $$LocalSeqDataTableTableFilterComposer,
    $$LocalSeqDataTableTableOrderingComposer,
    $$LocalSeqDataTableTableCreateCompanionBuilder,
    $$LocalSeqDataTableTableUpdateCompanionBuilder,
    (
      LocalSeqDataTableData,
      BaseReferences<_$AppDatabase, $LocalSeqDataTableTable,
          LocalSeqDataTableData>
    ),
    LocalSeqDataTableData,
    PrefetchHooks Function()> {
  $$LocalSeqDataTableTableTableManager(
      _$AppDatabase db, $LocalSeqDataTableTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$LocalSeqDataTableTableFilterComposer(ComposerState(db, table)),
          orderingComposer: $$LocalSeqDataTableTableOrderingComposer(
              ComposerState(db, table)),
          updateCompanionCallback: ({
            Value<String> userID = const Value.absent(),
            Value<int> seq = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              LocalSeqDataTableCompanion(
            userID: userID,
            seq: seq,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String userID,
            required int seq,
            Value<int> rowid = const Value.absent(),
          }) =>
              LocalSeqDataTableCompanion.insert(
            userID: userID,
            seq: seq,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$LocalSeqDataTableTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $LocalSeqDataTableTable,
    LocalSeqDataTableData,
    $$LocalSeqDataTableTableFilterComposer,
    $$LocalSeqDataTableTableOrderingComposer,
    $$LocalSeqDataTableTableCreateCompanionBuilder,
    $$LocalSeqDataTableTableUpdateCompanionBuilder,
    (
      LocalSeqDataTableData,
      BaseReferences<_$AppDatabase, $LocalSeqDataTableTable,
          LocalSeqDataTableData>
    ),
    LocalSeqDataTableData,
    PrefetchHooks Function()>;
typedef $$LocalSeqTableCreateCompanionBuilder = LocalSeqCompanion Function({
  required String id,
  required int minSeq,
  Value<int> rowid,
});
typedef $$LocalSeqTableUpdateCompanionBuilder = LocalSeqCompanion Function({
  Value<String> id,
  Value<int> minSeq,
  Value<int> rowid,
});

class $$LocalSeqTableFilterComposer
    extends FilterComposer<_$AppDatabase, $LocalSeqTable> {
  $$LocalSeqTableFilterComposer(super.$state);
  ColumnFilters<String> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get minSeq => $state.composableBuilder(
      column: $state.table.minSeq,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));
}

class $$LocalSeqTableOrderingComposer
    extends OrderingComposer<_$AppDatabase, $LocalSeqTable> {
  $$LocalSeqTableOrderingComposer(super.$state);
  ColumnOrderings<String> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get minSeq => $state.composableBuilder(
      column: $state.table.minSeq,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));
}

class $$LocalSeqTableTableManager extends RootTableManager<
    _$AppDatabase,
    $LocalSeqTable,
    LocalSeqData,
    $$LocalSeqTableFilterComposer,
    $$LocalSeqTableOrderingComposer,
    $$LocalSeqTableCreateCompanionBuilder,
    $$LocalSeqTableUpdateCompanionBuilder,
    (LocalSeqData, BaseReferences<_$AppDatabase, $LocalSeqTable, LocalSeqData>),
    LocalSeqData,
    PrefetchHooks Function()> {
  $$LocalSeqTableTableManager(_$AppDatabase db, $LocalSeqTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$LocalSeqTableFilterComposer(ComposerState(db, table)),
          orderingComposer:
              $$LocalSeqTableOrderingComposer(ComposerState(db, table)),
          updateCompanionCallback: ({
            Value<String> id = const Value.absent(),
            Value<int> minSeq = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              LocalSeqCompanion(
            id: id,
            minSeq: minSeq,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String id,
            required int minSeq,
            Value<int> rowid = const Value.absent(),
          }) =>
              LocalSeqCompanion.insert(
            id: id,
            minSeq: minSeq,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$LocalSeqTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $LocalSeqTable,
    LocalSeqData,
    $$LocalSeqTableFilterComposer,
    $$LocalSeqTableOrderingComposer,
    $$LocalSeqTableCreateCompanionBuilder,
    $$LocalSeqTableUpdateCompanionBuilder,
    (LocalSeqData, BaseReferences<_$AppDatabase, $LocalSeqTable, LocalSeqData>),
    LocalSeqData,
    PrefetchHooks Function()>;
typedef $$LocalChatLogTableCreateCompanionBuilder = LocalChatLogCompanion
    Function({
  required String clientMsgID,
  required String serverMsgID,
  required String sendID,
  required String recvID,
  required int senderPlatformID,
  required String senderNickname,
  required String senderFaceURL,
  required int sessionType,
  required int msgFrom,
  required int contentType,
  required String content,
  required bool isRead,
  required int status,
  Value<int> seq,
  required int sendTime,
  required int createTime,
  required String attachedInfo,
  required String ex,
  required String localEx,
  required bool isReact,
  required bool isExternalExtensions,
  required int msgFirstModifyTime,
  Value<int> rowid,
});
typedef $$LocalChatLogTableUpdateCompanionBuilder = LocalChatLogCompanion
    Function({
  Value<String> clientMsgID,
  Value<String> serverMsgID,
  Value<String> sendID,
  Value<String> recvID,
  Value<int> senderPlatformID,
  Value<String> senderNickname,
  Value<String> senderFaceURL,
  Value<int> sessionType,
  Value<int> msgFrom,
  Value<int> contentType,
  Value<String> content,
  Value<bool> isRead,
  Value<int> status,
  Value<int> seq,
  Value<int> sendTime,
  Value<int> createTime,
  Value<String> attachedInfo,
  Value<String> ex,
  Value<String> localEx,
  Value<bool> isReact,
  Value<bool> isExternalExtensions,
  Value<int> msgFirstModifyTime,
  Value<int> rowid,
});

class $$LocalChatLogTableFilterComposer
    extends FilterComposer<_$AppDatabase, $LocalChatLogTable> {
  $$LocalChatLogTableFilterComposer(super.$state);
  ColumnFilters<String> get clientMsgID => $state.composableBuilder(
      column: $state.table.clientMsgID,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get serverMsgID => $state.composableBuilder(
      column: $state.table.serverMsgID,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get sendID => $state.composableBuilder(
      column: $state.table.sendID,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get recvID => $state.composableBuilder(
      column: $state.table.recvID,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get senderPlatformID => $state.composableBuilder(
      column: $state.table.senderPlatformID,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get senderNickname => $state.composableBuilder(
      column: $state.table.senderNickname,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get senderFaceURL => $state.composableBuilder(
      column: $state.table.senderFaceURL,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get sessionType => $state.composableBuilder(
      column: $state.table.sessionType,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get msgFrom => $state.composableBuilder(
      column: $state.table.msgFrom,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get contentType => $state.composableBuilder(
      column: $state.table.contentType,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get content => $state.composableBuilder(
      column: $state.table.content,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<bool> get isRead => $state.composableBuilder(
      column: $state.table.isRead,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get status => $state.composableBuilder(
      column: $state.table.status,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get seq => $state.composableBuilder(
      column: $state.table.seq,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get sendTime => $state.composableBuilder(
      column: $state.table.sendTime,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get createTime => $state.composableBuilder(
      column: $state.table.createTime,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get attachedInfo => $state.composableBuilder(
      column: $state.table.attachedInfo,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get ex => $state.composableBuilder(
      column: $state.table.ex,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get localEx => $state.composableBuilder(
      column: $state.table.localEx,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<bool> get isReact => $state.composableBuilder(
      column: $state.table.isReact,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<bool> get isExternalExtensions => $state.composableBuilder(
      column: $state.table.isExternalExtensions,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get msgFirstModifyTime => $state.composableBuilder(
      column: $state.table.msgFirstModifyTime,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));
}

class $$LocalChatLogTableOrderingComposer
    extends OrderingComposer<_$AppDatabase, $LocalChatLogTable> {
  $$LocalChatLogTableOrderingComposer(super.$state);
  ColumnOrderings<String> get clientMsgID => $state.composableBuilder(
      column: $state.table.clientMsgID,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get serverMsgID => $state.composableBuilder(
      column: $state.table.serverMsgID,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get sendID => $state.composableBuilder(
      column: $state.table.sendID,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get recvID => $state.composableBuilder(
      column: $state.table.recvID,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get senderPlatformID => $state.composableBuilder(
      column: $state.table.senderPlatformID,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get senderNickname => $state.composableBuilder(
      column: $state.table.senderNickname,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get senderFaceURL => $state.composableBuilder(
      column: $state.table.senderFaceURL,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get sessionType => $state.composableBuilder(
      column: $state.table.sessionType,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get msgFrom => $state.composableBuilder(
      column: $state.table.msgFrom,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get contentType => $state.composableBuilder(
      column: $state.table.contentType,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get content => $state.composableBuilder(
      column: $state.table.content,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<bool> get isRead => $state.composableBuilder(
      column: $state.table.isRead,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get status => $state.composableBuilder(
      column: $state.table.status,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get seq => $state.composableBuilder(
      column: $state.table.seq,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get sendTime => $state.composableBuilder(
      column: $state.table.sendTime,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get createTime => $state.composableBuilder(
      column: $state.table.createTime,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get attachedInfo => $state.composableBuilder(
      column: $state.table.attachedInfo,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get ex => $state.composableBuilder(
      column: $state.table.ex,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get localEx => $state.composableBuilder(
      column: $state.table.localEx,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<bool> get isReact => $state.composableBuilder(
      column: $state.table.isReact,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<bool> get isExternalExtensions => $state.composableBuilder(
      column: $state.table.isExternalExtensions,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get msgFirstModifyTime => $state.composableBuilder(
      column: $state.table.msgFirstModifyTime,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));
}

class $$LocalChatLogTableTableManager extends RootTableManager<
    _$AppDatabase,
    $LocalChatLogTable,
    LocalChatLogData,
    $$LocalChatLogTableFilterComposer,
    $$LocalChatLogTableOrderingComposer,
    $$LocalChatLogTableCreateCompanionBuilder,
    $$LocalChatLogTableUpdateCompanionBuilder,
    (
      LocalChatLogData,
      BaseReferences<_$AppDatabase, $LocalChatLogTable, LocalChatLogData>
    ),
    LocalChatLogData,
    PrefetchHooks Function()> {
  $$LocalChatLogTableTableManager(_$AppDatabase db, $LocalChatLogTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$LocalChatLogTableFilterComposer(ComposerState(db, table)),
          orderingComposer:
              $$LocalChatLogTableOrderingComposer(ComposerState(db, table)),
          updateCompanionCallback: ({
            Value<String> clientMsgID = const Value.absent(),
            Value<String> serverMsgID = const Value.absent(),
            Value<String> sendID = const Value.absent(),
            Value<String> recvID = const Value.absent(),
            Value<int> senderPlatformID = const Value.absent(),
            Value<String> senderNickname = const Value.absent(),
            Value<String> senderFaceURL = const Value.absent(),
            Value<int> sessionType = const Value.absent(),
            Value<int> msgFrom = const Value.absent(),
            Value<int> contentType = const Value.absent(),
            Value<String> content = const Value.absent(),
            Value<bool> isRead = const Value.absent(),
            Value<int> status = const Value.absent(),
            Value<int> seq = const Value.absent(),
            Value<int> sendTime = const Value.absent(),
            Value<int> createTime = const Value.absent(),
            Value<String> attachedInfo = const Value.absent(),
            Value<String> ex = const Value.absent(),
            Value<String> localEx = const Value.absent(),
            Value<bool> isReact = const Value.absent(),
            Value<bool> isExternalExtensions = const Value.absent(),
            Value<int> msgFirstModifyTime = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              LocalChatLogCompanion(
            clientMsgID: clientMsgID,
            serverMsgID: serverMsgID,
            sendID: sendID,
            recvID: recvID,
            senderPlatformID: senderPlatformID,
            senderNickname: senderNickname,
            senderFaceURL: senderFaceURL,
            sessionType: sessionType,
            msgFrom: msgFrom,
            contentType: contentType,
            content: content,
            isRead: isRead,
            status: status,
            seq: seq,
            sendTime: sendTime,
            createTime: createTime,
            attachedInfo: attachedInfo,
            ex: ex,
            localEx: localEx,
            isReact: isReact,
            isExternalExtensions: isExternalExtensions,
            msgFirstModifyTime: msgFirstModifyTime,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String clientMsgID,
            required String serverMsgID,
            required String sendID,
            required String recvID,
            required int senderPlatformID,
            required String senderNickname,
            required String senderFaceURL,
            required int sessionType,
            required int msgFrom,
            required int contentType,
            required String content,
            required bool isRead,
            required int status,
            Value<int> seq = const Value.absent(),
            required int sendTime,
            required int createTime,
            required String attachedInfo,
            required String ex,
            required String localEx,
            required bool isReact,
            required bool isExternalExtensions,
            required int msgFirstModifyTime,
            Value<int> rowid = const Value.absent(),
          }) =>
              LocalChatLogCompanion.insert(
            clientMsgID: clientMsgID,
            serverMsgID: serverMsgID,
            sendID: sendID,
            recvID: recvID,
            senderPlatformID: senderPlatformID,
            senderNickname: senderNickname,
            senderFaceURL: senderFaceURL,
            sessionType: sessionType,
            msgFrom: msgFrom,
            contentType: contentType,
            content: content,
            isRead: isRead,
            status: status,
            seq: seq,
            sendTime: sendTime,
            createTime: createTime,
            attachedInfo: attachedInfo,
            ex: ex,
            localEx: localEx,
            isReact: isReact,
            isExternalExtensions: isExternalExtensions,
            msgFirstModifyTime: msgFirstModifyTime,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$LocalChatLogTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $LocalChatLogTable,
    LocalChatLogData,
    $$LocalChatLogTableFilterComposer,
    $$LocalChatLogTableOrderingComposer,
    $$LocalChatLogTableCreateCompanionBuilder,
    $$LocalChatLogTableUpdateCompanionBuilder,
    (
      LocalChatLogData,
      BaseReferences<_$AppDatabase, $LocalChatLogTable, LocalChatLogData>
    ),
    LocalChatLogData,
    PrefetchHooks Function()>;
typedef $$LocalErrChatLogTableCreateCompanionBuilder = LocalErrChatLogCompanion
    Function({
  Value<int> seq,
  required String clientMsgID,
  required String serverMsgID,
  required String sendID,
  required String recvID,
  required int senderPlatformID,
  required String senderNickname,
  required String senderFaceURL,
  required int sessionType,
  required int msgFrom,
  required int contentType,
  required String content,
  required bool isRead,
  required int status,
  required int sendTime,
  required int createTime,
  required String attachedInfo,
  required String ex,
});
typedef $$LocalErrChatLogTableUpdateCompanionBuilder = LocalErrChatLogCompanion
    Function({
  Value<int> seq,
  Value<String> clientMsgID,
  Value<String> serverMsgID,
  Value<String> sendID,
  Value<String> recvID,
  Value<int> senderPlatformID,
  Value<String> senderNickname,
  Value<String> senderFaceURL,
  Value<int> sessionType,
  Value<int> msgFrom,
  Value<int> contentType,
  Value<String> content,
  Value<bool> isRead,
  Value<int> status,
  Value<int> sendTime,
  Value<int> createTime,
  Value<String> attachedInfo,
  Value<String> ex,
});

class $$LocalErrChatLogTableFilterComposer
    extends FilterComposer<_$AppDatabase, $LocalErrChatLogTable> {
  $$LocalErrChatLogTableFilterComposer(super.$state);
  ColumnFilters<int> get seq => $state.composableBuilder(
      column: $state.table.seq,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get clientMsgID => $state.composableBuilder(
      column: $state.table.clientMsgID,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get serverMsgID => $state.composableBuilder(
      column: $state.table.serverMsgID,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get sendID => $state.composableBuilder(
      column: $state.table.sendID,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get recvID => $state.composableBuilder(
      column: $state.table.recvID,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get senderPlatformID => $state.composableBuilder(
      column: $state.table.senderPlatformID,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get senderNickname => $state.composableBuilder(
      column: $state.table.senderNickname,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get senderFaceURL => $state.composableBuilder(
      column: $state.table.senderFaceURL,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get sessionType => $state.composableBuilder(
      column: $state.table.sessionType,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get msgFrom => $state.composableBuilder(
      column: $state.table.msgFrom,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get contentType => $state.composableBuilder(
      column: $state.table.contentType,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get content => $state.composableBuilder(
      column: $state.table.content,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<bool> get isRead => $state.composableBuilder(
      column: $state.table.isRead,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get status => $state.composableBuilder(
      column: $state.table.status,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get sendTime => $state.composableBuilder(
      column: $state.table.sendTime,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get createTime => $state.composableBuilder(
      column: $state.table.createTime,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get attachedInfo => $state.composableBuilder(
      column: $state.table.attachedInfo,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get ex => $state.composableBuilder(
      column: $state.table.ex,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));
}

class $$LocalErrChatLogTableOrderingComposer
    extends OrderingComposer<_$AppDatabase, $LocalErrChatLogTable> {
  $$LocalErrChatLogTableOrderingComposer(super.$state);
  ColumnOrderings<int> get seq => $state.composableBuilder(
      column: $state.table.seq,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get clientMsgID => $state.composableBuilder(
      column: $state.table.clientMsgID,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get serverMsgID => $state.composableBuilder(
      column: $state.table.serverMsgID,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get sendID => $state.composableBuilder(
      column: $state.table.sendID,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get recvID => $state.composableBuilder(
      column: $state.table.recvID,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get senderPlatformID => $state.composableBuilder(
      column: $state.table.senderPlatformID,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get senderNickname => $state.composableBuilder(
      column: $state.table.senderNickname,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get senderFaceURL => $state.composableBuilder(
      column: $state.table.senderFaceURL,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get sessionType => $state.composableBuilder(
      column: $state.table.sessionType,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get msgFrom => $state.composableBuilder(
      column: $state.table.msgFrom,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get contentType => $state.composableBuilder(
      column: $state.table.contentType,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get content => $state.composableBuilder(
      column: $state.table.content,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<bool> get isRead => $state.composableBuilder(
      column: $state.table.isRead,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get status => $state.composableBuilder(
      column: $state.table.status,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get sendTime => $state.composableBuilder(
      column: $state.table.sendTime,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get createTime => $state.composableBuilder(
      column: $state.table.createTime,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get attachedInfo => $state.composableBuilder(
      column: $state.table.attachedInfo,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get ex => $state.composableBuilder(
      column: $state.table.ex,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));
}

class $$LocalErrChatLogTableTableManager extends RootTableManager<
    _$AppDatabase,
    $LocalErrChatLogTable,
    LocalErrChatLogData,
    $$LocalErrChatLogTableFilterComposer,
    $$LocalErrChatLogTableOrderingComposer,
    $$LocalErrChatLogTableCreateCompanionBuilder,
    $$LocalErrChatLogTableUpdateCompanionBuilder,
    (
      LocalErrChatLogData,
      BaseReferences<_$AppDatabase, $LocalErrChatLogTable, LocalErrChatLogData>
    ),
    LocalErrChatLogData,
    PrefetchHooks Function()> {
  $$LocalErrChatLogTableTableManager(
      _$AppDatabase db, $LocalErrChatLogTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$LocalErrChatLogTableFilterComposer(ComposerState(db, table)),
          orderingComposer:
              $$LocalErrChatLogTableOrderingComposer(ComposerState(db, table)),
          updateCompanionCallback: ({
            Value<int> seq = const Value.absent(),
            Value<String> clientMsgID = const Value.absent(),
            Value<String> serverMsgID = const Value.absent(),
            Value<String> sendID = const Value.absent(),
            Value<String> recvID = const Value.absent(),
            Value<int> senderPlatformID = const Value.absent(),
            Value<String> senderNickname = const Value.absent(),
            Value<String> senderFaceURL = const Value.absent(),
            Value<int> sessionType = const Value.absent(),
            Value<int> msgFrom = const Value.absent(),
            Value<int> contentType = const Value.absent(),
            Value<String> content = const Value.absent(),
            Value<bool> isRead = const Value.absent(),
            Value<int> status = const Value.absent(),
            Value<int> sendTime = const Value.absent(),
            Value<int> createTime = const Value.absent(),
            Value<String> attachedInfo = const Value.absent(),
            Value<String> ex = const Value.absent(),
          }) =>
              LocalErrChatLogCompanion(
            seq: seq,
            clientMsgID: clientMsgID,
            serverMsgID: serverMsgID,
            sendID: sendID,
            recvID: recvID,
            senderPlatformID: senderPlatformID,
            senderNickname: senderNickname,
            senderFaceURL: senderFaceURL,
            sessionType: sessionType,
            msgFrom: msgFrom,
            contentType: contentType,
            content: content,
            isRead: isRead,
            status: status,
            sendTime: sendTime,
            createTime: createTime,
            attachedInfo: attachedInfo,
            ex: ex,
          ),
          createCompanionCallback: ({
            Value<int> seq = const Value.absent(),
            required String clientMsgID,
            required String serverMsgID,
            required String sendID,
            required String recvID,
            required int senderPlatformID,
            required String senderNickname,
            required String senderFaceURL,
            required int sessionType,
            required int msgFrom,
            required int contentType,
            required String content,
            required bool isRead,
            required int status,
            required int sendTime,
            required int createTime,
            required String attachedInfo,
            required String ex,
          }) =>
              LocalErrChatLogCompanion.insert(
            seq: seq,
            clientMsgID: clientMsgID,
            serverMsgID: serverMsgID,
            sendID: sendID,
            recvID: recvID,
            senderPlatformID: senderPlatformID,
            senderNickname: senderNickname,
            senderFaceURL: senderFaceURL,
            sessionType: sessionType,
            msgFrom: msgFrom,
            contentType: contentType,
            content: content,
            isRead: isRead,
            status: status,
            sendTime: sendTime,
            createTime: createTime,
            attachedInfo: attachedInfo,
            ex: ex,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$LocalErrChatLogTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $LocalErrChatLogTable,
    LocalErrChatLogData,
    $$LocalErrChatLogTableFilterComposer,
    $$LocalErrChatLogTableOrderingComposer,
    $$LocalErrChatLogTableCreateCompanionBuilder,
    $$LocalErrChatLogTableUpdateCompanionBuilder,
    (
      LocalErrChatLogData,
      BaseReferences<_$AppDatabase, $LocalErrChatLogTable, LocalErrChatLogData>
    ),
    LocalErrChatLogData,
    PrefetchHooks Function()>;
typedef $$TempCacheLocalChatLogTableCreateCompanionBuilder
    = TempCacheLocalChatLogCompanion Function({
  required String clientMsgID,
  required String serverMsgID,
  required String sendID,
  required String recvID,
  required int senderPlatformID,
  required String senderNickname,
  required String senderFaceURL,
  required int sessionType,
  required int msgFrom,
  required int contentType,
  required String content,
  required bool isRead,
  required int status,
  Value<int> seq,
  required int sendTime,
  required int createTime,
  required String attachedInfo,
  required String ex,
  Value<int> rowid,
});
typedef $$TempCacheLocalChatLogTableUpdateCompanionBuilder
    = TempCacheLocalChatLogCompanion Function({
  Value<String> clientMsgID,
  Value<String> serverMsgID,
  Value<String> sendID,
  Value<String> recvID,
  Value<int> senderPlatformID,
  Value<String> senderNickname,
  Value<String> senderFaceURL,
  Value<int> sessionType,
  Value<int> msgFrom,
  Value<int> contentType,
  Value<String> content,
  Value<bool> isRead,
  Value<int> status,
  Value<int> seq,
  Value<int> sendTime,
  Value<int> createTime,
  Value<String> attachedInfo,
  Value<String> ex,
  Value<int> rowid,
});

class $$TempCacheLocalChatLogTableFilterComposer
    extends FilterComposer<_$AppDatabase, $TempCacheLocalChatLogTable> {
  $$TempCacheLocalChatLogTableFilterComposer(super.$state);
  ColumnFilters<String> get clientMsgID => $state.composableBuilder(
      column: $state.table.clientMsgID,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get serverMsgID => $state.composableBuilder(
      column: $state.table.serverMsgID,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get sendID => $state.composableBuilder(
      column: $state.table.sendID,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get recvID => $state.composableBuilder(
      column: $state.table.recvID,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get senderPlatformID => $state.composableBuilder(
      column: $state.table.senderPlatformID,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get senderNickname => $state.composableBuilder(
      column: $state.table.senderNickname,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get senderFaceURL => $state.composableBuilder(
      column: $state.table.senderFaceURL,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get sessionType => $state.composableBuilder(
      column: $state.table.sessionType,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get msgFrom => $state.composableBuilder(
      column: $state.table.msgFrom,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get contentType => $state.composableBuilder(
      column: $state.table.contentType,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get content => $state.composableBuilder(
      column: $state.table.content,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<bool> get isRead => $state.composableBuilder(
      column: $state.table.isRead,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get status => $state.composableBuilder(
      column: $state.table.status,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get seq => $state.composableBuilder(
      column: $state.table.seq,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get sendTime => $state.composableBuilder(
      column: $state.table.sendTime,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get createTime => $state.composableBuilder(
      column: $state.table.createTime,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get attachedInfo => $state.composableBuilder(
      column: $state.table.attachedInfo,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get ex => $state.composableBuilder(
      column: $state.table.ex,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));
}

class $$TempCacheLocalChatLogTableOrderingComposer
    extends OrderingComposer<_$AppDatabase, $TempCacheLocalChatLogTable> {
  $$TempCacheLocalChatLogTableOrderingComposer(super.$state);
  ColumnOrderings<String> get clientMsgID => $state.composableBuilder(
      column: $state.table.clientMsgID,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get serverMsgID => $state.composableBuilder(
      column: $state.table.serverMsgID,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get sendID => $state.composableBuilder(
      column: $state.table.sendID,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get recvID => $state.composableBuilder(
      column: $state.table.recvID,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get senderPlatformID => $state.composableBuilder(
      column: $state.table.senderPlatformID,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get senderNickname => $state.composableBuilder(
      column: $state.table.senderNickname,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get senderFaceURL => $state.composableBuilder(
      column: $state.table.senderFaceURL,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get sessionType => $state.composableBuilder(
      column: $state.table.sessionType,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get msgFrom => $state.composableBuilder(
      column: $state.table.msgFrom,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get contentType => $state.composableBuilder(
      column: $state.table.contentType,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get content => $state.composableBuilder(
      column: $state.table.content,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<bool> get isRead => $state.composableBuilder(
      column: $state.table.isRead,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get status => $state.composableBuilder(
      column: $state.table.status,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get seq => $state.composableBuilder(
      column: $state.table.seq,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get sendTime => $state.composableBuilder(
      column: $state.table.sendTime,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get createTime => $state.composableBuilder(
      column: $state.table.createTime,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get attachedInfo => $state.composableBuilder(
      column: $state.table.attachedInfo,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get ex => $state.composableBuilder(
      column: $state.table.ex,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));
}

class $$TempCacheLocalChatLogTableTableManager extends RootTableManager<
    _$AppDatabase,
    $TempCacheLocalChatLogTable,
    TempCacheLocalChatLogData,
    $$TempCacheLocalChatLogTableFilterComposer,
    $$TempCacheLocalChatLogTableOrderingComposer,
    $$TempCacheLocalChatLogTableCreateCompanionBuilder,
    $$TempCacheLocalChatLogTableUpdateCompanionBuilder,
    (
      TempCacheLocalChatLogData,
      BaseReferences<_$AppDatabase, $TempCacheLocalChatLogTable,
          TempCacheLocalChatLogData>
    ),
    TempCacheLocalChatLogData,
    PrefetchHooks Function()> {
  $$TempCacheLocalChatLogTableTableManager(
      _$AppDatabase db, $TempCacheLocalChatLogTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer: $$TempCacheLocalChatLogTableFilterComposer(
              ComposerState(db, table)),
          orderingComposer: $$TempCacheLocalChatLogTableOrderingComposer(
              ComposerState(db, table)),
          updateCompanionCallback: ({
            Value<String> clientMsgID = const Value.absent(),
            Value<String> serverMsgID = const Value.absent(),
            Value<String> sendID = const Value.absent(),
            Value<String> recvID = const Value.absent(),
            Value<int> senderPlatformID = const Value.absent(),
            Value<String> senderNickname = const Value.absent(),
            Value<String> senderFaceURL = const Value.absent(),
            Value<int> sessionType = const Value.absent(),
            Value<int> msgFrom = const Value.absent(),
            Value<int> contentType = const Value.absent(),
            Value<String> content = const Value.absent(),
            Value<bool> isRead = const Value.absent(),
            Value<int> status = const Value.absent(),
            Value<int> seq = const Value.absent(),
            Value<int> sendTime = const Value.absent(),
            Value<int> createTime = const Value.absent(),
            Value<String> attachedInfo = const Value.absent(),
            Value<String> ex = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              TempCacheLocalChatLogCompanion(
            clientMsgID: clientMsgID,
            serverMsgID: serverMsgID,
            sendID: sendID,
            recvID: recvID,
            senderPlatformID: senderPlatformID,
            senderNickname: senderNickname,
            senderFaceURL: senderFaceURL,
            sessionType: sessionType,
            msgFrom: msgFrom,
            contentType: contentType,
            content: content,
            isRead: isRead,
            status: status,
            seq: seq,
            sendTime: sendTime,
            createTime: createTime,
            attachedInfo: attachedInfo,
            ex: ex,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String clientMsgID,
            required String serverMsgID,
            required String sendID,
            required String recvID,
            required int senderPlatformID,
            required String senderNickname,
            required String senderFaceURL,
            required int sessionType,
            required int msgFrom,
            required int contentType,
            required String content,
            required bool isRead,
            required int status,
            Value<int> seq = const Value.absent(),
            required int sendTime,
            required int createTime,
            required String attachedInfo,
            required String ex,
            Value<int> rowid = const Value.absent(),
          }) =>
              TempCacheLocalChatLogCompanion.insert(
            clientMsgID: clientMsgID,
            serverMsgID: serverMsgID,
            sendID: sendID,
            recvID: recvID,
            senderPlatformID: senderPlatformID,
            senderNickname: senderNickname,
            senderFaceURL: senderFaceURL,
            sessionType: sessionType,
            msgFrom: msgFrom,
            contentType: contentType,
            content: content,
            isRead: isRead,
            status: status,
            seq: seq,
            sendTime: sendTime,
            createTime: createTime,
            attachedInfo: attachedInfo,
            ex: ex,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$TempCacheLocalChatLogTableProcessedTableManager
    = ProcessedTableManager<
        _$AppDatabase,
        $TempCacheLocalChatLogTable,
        TempCacheLocalChatLogData,
        $$TempCacheLocalChatLogTableFilterComposer,
        $$TempCacheLocalChatLogTableOrderingComposer,
        $$TempCacheLocalChatLogTableCreateCompanionBuilder,
        $$TempCacheLocalChatLogTableUpdateCompanionBuilder,
        (
          TempCacheLocalChatLogData,
          BaseReferences<_$AppDatabase, $TempCacheLocalChatLogTable,
              TempCacheLocalChatLogData>
        ),
        TempCacheLocalChatLogData,
        PrefetchHooks Function()>;
typedef $$LocalConversationTableCreateCompanionBuilder
    = LocalConversationCompanion Function({
  required String conversationID,
  required int conversationType,
  required String userID,
  required String groupID,
  required String showName,
  required String faceURL,
  required int recvMsgOpt,
  required int unreadCount,
  required int groupAtType,
  required String latestMsg,
  required int latestMsgSendTime,
  required String draftText,
  required int draftTextTime,
  required bool isPinned,
  required bool isPrivateChat,
  Value<int> burnDuration,
  required bool isNotInGroup,
  required int updateUnreadCountTime,
  required String attachedInfo,
  required String ex,
  required int maxSeq,
  required int minSeq,
  required int hasReadSeq,
  Value<int> msgDestructTime,
  Value<bool> isMsgDestruct,
  Value<int> rowid,
});
typedef $$LocalConversationTableUpdateCompanionBuilder
    = LocalConversationCompanion Function({
  Value<String> conversationID,
  Value<int> conversationType,
  Value<String> userID,
  Value<String> groupID,
  Value<String> showName,
  Value<String> faceURL,
  Value<int> recvMsgOpt,
  Value<int> unreadCount,
  Value<int> groupAtType,
  Value<String> latestMsg,
  Value<int> latestMsgSendTime,
  Value<String> draftText,
  Value<int> draftTextTime,
  Value<bool> isPinned,
  Value<bool> isPrivateChat,
  Value<int> burnDuration,
  Value<bool> isNotInGroup,
  Value<int> updateUnreadCountTime,
  Value<String> attachedInfo,
  Value<String> ex,
  Value<int> maxSeq,
  Value<int> minSeq,
  Value<int> hasReadSeq,
  Value<int> msgDestructTime,
  Value<bool> isMsgDestruct,
  Value<int> rowid,
});

class $$LocalConversationTableFilterComposer
    extends FilterComposer<_$AppDatabase, $LocalConversationTable> {
  $$LocalConversationTableFilterComposer(super.$state);
  ColumnFilters<String> get conversationID => $state.composableBuilder(
      column: $state.table.conversationID,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get conversationType => $state.composableBuilder(
      column: $state.table.conversationType,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get userID => $state.composableBuilder(
      column: $state.table.userID,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get groupID => $state.composableBuilder(
      column: $state.table.groupID,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get showName => $state.composableBuilder(
      column: $state.table.showName,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get faceURL => $state.composableBuilder(
      column: $state.table.faceURL,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get recvMsgOpt => $state.composableBuilder(
      column: $state.table.recvMsgOpt,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get unreadCount => $state.composableBuilder(
      column: $state.table.unreadCount,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get groupAtType => $state.composableBuilder(
      column: $state.table.groupAtType,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get latestMsg => $state.composableBuilder(
      column: $state.table.latestMsg,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get latestMsgSendTime => $state.composableBuilder(
      column: $state.table.latestMsgSendTime,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get draftText => $state.composableBuilder(
      column: $state.table.draftText,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get draftTextTime => $state.composableBuilder(
      column: $state.table.draftTextTime,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<bool> get isPinned => $state.composableBuilder(
      column: $state.table.isPinned,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<bool> get isPrivateChat => $state.composableBuilder(
      column: $state.table.isPrivateChat,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get burnDuration => $state.composableBuilder(
      column: $state.table.burnDuration,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<bool> get isNotInGroup => $state.composableBuilder(
      column: $state.table.isNotInGroup,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get updateUnreadCountTime => $state.composableBuilder(
      column: $state.table.updateUnreadCountTime,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get attachedInfo => $state.composableBuilder(
      column: $state.table.attachedInfo,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get ex => $state.composableBuilder(
      column: $state.table.ex,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get maxSeq => $state.composableBuilder(
      column: $state.table.maxSeq,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get minSeq => $state.composableBuilder(
      column: $state.table.minSeq,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get hasReadSeq => $state.composableBuilder(
      column: $state.table.hasReadSeq,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get msgDestructTime => $state.composableBuilder(
      column: $state.table.msgDestructTime,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<bool> get isMsgDestruct => $state.composableBuilder(
      column: $state.table.isMsgDestruct,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));
}

class $$LocalConversationTableOrderingComposer
    extends OrderingComposer<_$AppDatabase, $LocalConversationTable> {
  $$LocalConversationTableOrderingComposer(super.$state);
  ColumnOrderings<String> get conversationID => $state.composableBuilder(
      column: $state.table.conversationID,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get conversationType => $state.composableBuilder(
      column: $state.table.conversationType,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get userID => $state.composableBuilder(
      column: $state.table.userID,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get groupID => $state.composableBuilder(
      column: $state.table.groupID,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get showName => $state.composableBuilder(
      column: $state.table.showName,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get faceURL => $state.composableBuilder(
      column: $state.table.faceURL,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get recvMsgOpt => $state.composableBuilder(
      column: $state.table.recvMsgOpt,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get unreadCount => $state.composableBuilder(
      column: $state.table.unreadCount,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get groupAtType => $state.composableBuilder(
      column: $state.table.groupAtType,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get latestMsg => $state.composableBuilder(
      column: $state.table.latestMsg,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get latestMsgSendTime => $state.composableBuilder(
      column: $state.table.latestMsgSendTime,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get draftText => $state.composableBuilder(
      column: $state.table.draftText,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get draftTextTime => $state.composableBuilder(
      column: $state.table.draftTextTime,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<bool> get isPinned => $state.composableBuilder(
      column: $state.table.isPinned,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<bool> get isPrivateChat => $state.composableBuilder(
      column: $state.table.isPrivateChat,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get burnDuration => $state.composableBuilder(
      column: $state.table.burnDuration,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<bool> get isNotInGroup => $state.composableBuilder(
      column: $state.table.isNotInGroup,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get updateUnreadCountTime => $state.composableBuilder(
      column: $state.table.updateUnreadCountTime,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get attachedInfo => $state.composableBuilder(
      column: $state.table.attachedInfo,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get ex => $state.composableBuilder(
      column: $state.table.ex,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get maxSeq => $state.composableBuilder(
      column: $state.table.maxSeq,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get minSeq => $state.composableBuilder(
      column: $state.table.minSeq,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get hasReadSeq => $state.composableBuilder(
      column: $state.table.hasReadSeq,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get msgDestructTime => $state.composableBuilder(
      column: $state.table.msgDestructTime,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<bool> get isMsgDestruct => $state.composableBuilder(
      column: $state.table.isMsgDestruct,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));
}

class $$LocalConversationTableTableManager extends RootTableManager<
    _$AppDatabase,
    $LocalConversationTable,
    LocalConversationData,
    $$LocalConversationTableFilterComposer,
    $$LocalConversationTableOrderingComposer,
    $$LocalConversationTableCreateCompanionBuilder,
    $$LocalConversationTableUpdateCompanionBuilder,
    (
      LocalConversationData,
      BaseReferences<_$AppDatabase, $LocalConversationTable,
          LocalConversationData>
    ),
    LocalConversationData,
    PrefetchHooks Function()> {
  $$LocalConversationTableTableManager(
      _$AppDatabase db, $LocalConversationTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$LocalConversationTableFilterComposer(ComposerState(db, table)),
          orderingComposer: $$LocalConversationTableOrderingComposer(
              ComposerState(db, table)),
          updateCompanionCallback: ({
            Value<String> conversationID = const Value.absent(),
            Value<int> conversationType = const Value.absent(),
            Value<String> userID = const Value.absent(),
            Value<String> groupID = const Value.absent(),
            Value<String> showName = const Value.absent(),
            Value<String> faceURL = const Value.absent(),
            Value<int> recvMsgOpt = const Value.absent(),
            Value<int> unreadCount = const Value.absent(),
            Value<int> groupAtType = const Value.absent(),
            Value<String> latestMsg = const Value.absent(),
            Value<int> latestMsgSendTime = const Value.absent(),
            Value<String> draftText = const Value.absent(),
            Value<int> draftTextTime = const Value.absent(),
            Value<bool> isPinned = const Value.absent(),
            Value<bool> isPrivateChat = const Value.absent(),
            Value<int> burnDuration = const Value.absent(),
            Value<bool> isNotInGroup = const Value.absent(),
            Value<int> updateUnreadCountTime = const Value.absent(),
            Value<String> attachedInfo = const Value.absent(),
            Value<String> ex = const Value.absent(),
            Value<int> maxSeq = const Value.absent(),
            Value<int> minSeq = const Value.absent(),
            Value<int> hasReadSeq = const Value.absent(),
            Value<int> msgDestructTime = const Value.absent(),
            Value<bool> isMsgDestruct = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              LocalConversationCompanion(
            conversationID: conversationID,
            conversationType: conversationType,
            userID: userID,
            groupID: groupID,
            showName: showName,
            faceURL: faceURL,
            recvMsgOpt: recvMsgOpt,
            unreadCount: unreadCount,
            groupAtType: groupAtType,
            latestMsg: latestMsg,
            latestMsgSendTime: latestMsgSendTime,
            draftText: draftText,
            draftTextTime: draftTextTime,
            isPinned: isPinned,
            isPrivateChat: isPrivateChat,
            burnDuration: burnDuration,
            isNotInGroup: isNotInGroup,
            updateUnreadCountTime: updateUnreadCountTime,
            attachedInfo: attachedInfo,
            ex: ex,
            maxSeq: maxSeq,
            minSeq: minSeq,
            hasReadSeq: hasReadSeq,
            msgDestructTime: msgDestructTime,
            isMsgDestruct: isMsgDestruct,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String conversationID,
            required int conversationType,
            required String userID,
            required String groupID,
            required String showName,
            required String faceURL,
            required int recvMsgOpt,
            required int unreadCount,
            required int groupAtType,
            required String latestMsg,
            required int latestMsgSendTime,
            required String draftText,
            required int draftTextTime,
            required bool isPinned,
            required bool isPrivateChat,
            Value<int> burnDuration = const Value.absent(),
            required bool isNotInGroup,
            required int updateUnreadCountTime,
            required String attachedInfo,
            required String ex,
            required int maxSeq,
            required int minSeq,
            required int hasReadSeq,
            Value<int> msgDestructTime = const Value.absent(),
            Value<bool> isMsgDestruct = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              LocalConversationCompanion.insert(
            conversationID: conversationID,
            conversationType: conversationType,
            userID: userID,
            groupID: groupID,
            showName: showName,
            faceURL: faceURL,
            recvMsgOpt: recvMsgOpt,
            unreadCount: unreadCount,
            groupAtType: groupAtType,
            latestMsg: latestMsg,
            latestMsgSendTime: latestMsgSendTime,
            draftText: draftText,
            draftTextTime: draftTextTime,
            isPinned: isPinned,
            isPrivateChat: isPrivateChat,
            burnDuration: burnDuration,
            isNotInGroup: isNotInGroup,
            updateUnreadCountTime: updateUnreadCountTime,
            attachedInfo: attachedInfo,
            ex: ex,
            maxSeq: maxSeq,
            minSeq: minSeq,
            hasReadSeq: hasReadSeq,
            msgDestructTime: msgDestructTime,
            isMsgDestruct: isMsgDestruct,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$LocalConversationTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $LocalConversationTable,
    LocalConversationData,
    $$LocalConversationTableFilterComposer,
    $$LocalConversationTableOrderingComposer,
    $$LocalConversationTableCreateCompanionBuilder,
    $$LocalConversationTableUpdateCompanionBuilder,
    (
      LocalConversationData,
      BaseReferences<_$AppDatabase, $LocalConversationTable,
          LocalConversationData>
    ),
    LocalConversationData,
    PrefetchHooks Function()>;
typedef $$LocalConversationUnreadMessageTableCreateCompanionBuilder
    = LocalConversationUnreadMessageCompanion Function({
  required String conversationID,
  required String clientMsgID,
  required int sendTime,
  required String ex,
  Value<int> rowid,
});
typedef $$LocalConversationUnreadMessageTableUpdateCompanionBuilder
    = LocalConversationUnreadMessageCompanion Function({
  Value<String> conversationID,
  Value<String> clientMsgID,
  Value<int> sendTime,
  Value<String> ex,
  Value<int> rowid,
});

class $$LocalConversationUnreadMessageTableFilterComposer
    extends FilterComposer<_$AppDatabase,
        $LocalConversationUnreadMessageTable> {
  $$LocalConversationUnreadMessageTableFilterComposer(super.$state);
  ColumnFilters<String> get conversationID => $state.composableBuilder(
      column: $state.table.conversationID,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get clientMsgID => $state.composableBuilder(
      column: $state.table.clientMsgID,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get sendTime => $state.composableBuilder(
      column: $state.table.sendTime,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get ex => $state.composableBuilder(
      column: $state.table.ex,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));
}

class $$LocalConversationUnreadMessageTableOrderingComposer
    extends OrderingComposer<_$AppDatabase,
        $LocalConversationUnreadMessageTable> {
  $$LocalConversationUnreadMessageTableOrderingComposer(super.$state);
  ColumnOrderings<String> get conversationID => $state.composableBuilder(
      column: $state.table.conversationID,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get clientMsgID => $state.composableBuilder(
      column: $state.table.clientMsgID,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get sendTime => $state.composableBuilder(
      column: $state.table.sendTime,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get ex => $state.composableBuilder(
      column: $state.table.ex,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));
}

class $$LocalConversationUnreadMessageTableTableManager
    extends RootTableManager<
        _$AppDatabase,
        $LocalConversationUnreadMessageTable,
        LocalConversationUnreadMessageData,
        $$LocalConversationUnreadMessageTableFilterComposer,
        $$LocalConversationUnreadMessageTableOrderingComposer,
        $$LocalConversationUnreadMessageTableCreateCompanionBuilder,
        $$LocalConversationUnreadMessageTableUpdateCompanionBuilder,
        (
          LocalConversationUnreadMessageData,
          BaseReferences<_$AppDatabase, $LocalConversationUnreadMessageTable,
              LocalConversationUnreadMessageData>
        ),
        LocalConversationUnreadMessageData,
        PrefetchHooks Function()> {
  $$LocalConversationUnreadMessageTableTableManager(
      _$AppDatabase db, $LocalConversationUnreadMessageTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$LocalConversationUnreadMessageTableFilterComposer(
                  ComposerState(db, table)),
          orderingComposer:
              $$LocalConversationUnreadMessageTableOrderingComposer(
                  ComposerState(db, table)),
          updateCompanionCallback: ({
            Value<String> conversationID = const Value.absent(),
            Value<String> clientMsgID = const Value.absent(),
            Value<int> sendTime = const Value.absent(),
            Value<String> ex = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              LocalConversationUnreadMessageCompanion(
            conversationID: conversationID,
            clientMsgID: clientMsgID,
            sendTime: sendTime,
            ex: ex,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String conversationID,
            required String clientMsgID,
            required int sendTime,
            required String ex,
            Value<int> rowid = const Value.absent(),
          }) =>
              LocalConversationUnreadMessageCompanion.insert(
            conversationID: conversationID,
            clientMsgID: clientMsgID,
            sendTime: sendTime,
            ex: ex,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$LocalConversationUnreadMessageTableProcessedTableManager
    = ProcessedTableManager<
        _$AppDatabase,
        $LocalConversationUnreadMessageTable,
        LocalConversationUnreadMessageData,
        $$LocalConversationUnreadMessageTableFilterComposer,
        $$LocalConversationUnreadMessageTableOrderingComposer,
        $$LocalConversationUnreadMessageTableCreateCompanionBuilder,
        $$LocalConversationUnreadMessageTableUpdateCompanionBuilder,
        (
          LocalConversationUnreadMessageData,
          BaseReferences<_$AppDatabase, $LocalConversationUnreadMessageTable,
              LocalConversationUnreadMessageData>
        ),
        LocalConversationUnreadMessageData,
        PrefetchHooks Function()>;
typedef $$LocalAdminGroupRequestsTableCreateCompanionBuilder
    = LocalAdminGroupRequestsCompanion Function({
  required String groupID,
  required String groupName,
  required String notification,
  required String introduction,
  required String groupFaceURL,
  required int createTime,
  required int status,
  required String creatorUserID,
  required int groupType,
  required String ownerUserID,
  required int memberCount,
  required String userID,
  required String nickname,
  required String userFaceURL,
  required int handleResult,
  required String reqMsg,
  required String handleMsg,
  required int reqTime,
  required String handleUserID,
  required int handleTime,
  required String ex,
  required String attachedInfo,
  required int joinSource,
  required String inviterUserID,
  Value<int> rowid,
});
typedef $$LocalAdminGroupRequestsTableUpdateCompanionBuilder
    = LocalAdminGroupRequestsCompanion Function({
  Value<String> groupID,
  Value<String> groupName,
  Value<String> notification,
  Value<String> introduction,
  Value<String> groupFaceURL,
  Value<int> createTime,
  Value<int> status,
  Value<String> creatorUserID,
  Value<int> groupType,
  Value<String> ownerUserID,
  Value<int> memberCount,
  Value<String> userID,
  Value<String> nickname,
  Value<String> userFaceURL,
  Value<int> handleResult,
  Value<String> reqMsg,
  Value<String> handleMsg,
  Value<int> reqTime,
  Value<String> handleUserID,
  Value<int> handleTime,
  Value<String> ex,
  Value<String> attachedInfo,
  Value<int> joinSource,
  Value<String> inviterUserID,
  Value<int> rowid,
});

class $$LocalAdminGroupRequestsTableFilterComposer
    extends FilterComposer<_$AppDatabase, $LocalAdminGroupRequestsTable> {
  $$LocalAdminGroupRequestsTableFilterComposer(super.$state);
  ColumnFilters<String> get groupID => $state.composableBuilder(
      column: $state.table.groupID,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get groupName => $state.composableBuilder(
      column: $state.table.groupName,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get notification => $state.composableBuilder(
      column: $state.table.notification,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get introduction => $state.composableBuilder(
      column: $state.table.introduction,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get groupFaceURL => $state.composableBuilder(
      column: $state.table.groupFaceURL,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get createTime => $state.composableBuilder(
      column: $state.table.createTime,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get status => $state.composableBuilder(
      column: $state.table.status,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get creatorUserID => $state.composableBuilder(
      column: $state.table.creatorUserID,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get groupType => $state.composableBuilder(
      column: $state.table.groupType,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get ownerUserID => $state.composableBuilder(
      column: $state.table.ownerUserID,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get memberCount => $state.composableBuilder(
      column: $state.table.memberCount,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get userID => $state.composableBuilder(
      column: $state.table.userID,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get nickname => $state.composableBuilder(
      column: $state.table.nickname,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get userFaceURL => $state.composableBuilder(
      column: $state.table.userFaceURL,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get handleResult => $state.composableBuilder(
      column: $state.table.handleResult,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get reqMsg => $state.composableBuilder(
      column: $state.table.reqMsg,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get handleMsg => $state.composableBuilder(
      column: $state.table.handleMsg,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get reqTime => $state.composableBuilder(
      column: $state.table.reqTime,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get handleUserID => $state.composableBuilder(
      column: $state.table.handleUserID,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get handleTime => $state.composableBuilder(
      column: $state.table.handleTime,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get ex => $state.composableBuilder(
      column: $state.table.ex,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get attachedInfo => $state.composableBuilder(
      column: $state.table.attachedInfo,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get joinSource => $state.composableBuilder(
      column: $state.table.joinSource,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get inviterUserID => $state.composableBuilder(
      column: $state.table.inviterUserID,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));
}

class $$LocalAdminGroupRequestsTableOrderingComposer
    extends OrderingComposer<_$AppDatabase, $LocalAdminGroupRequestsTable> {
  $$LocalAdminGroupRequestsTableOrderingComposer(super.$state);
  ColumnOrderings<String> get groupID => $state.composableBuilder(
      column: $state.table.groupID,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get groupName => $state.composableBuilder(
      column: $state.table.groupName,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get notification => $state.composableBuilder(
      column: $state.table.notification,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get introduction => $state.composableBuilder(
      column: $state.table.introduction,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get groupFaceURL => $state.composableBuilder(
      column: $state.table.groupFaceURL,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get createTime => $state.composableBuilder(
      column: $state.table.createTime,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get status => $state.composableBuilder(
      column: $state.table.status,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get creatorUserID => $state.composableBuilder(
      column: $state.table.creatorUserID,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get groupType => $state.composableBuilder(
      column: $state.table.groupType,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get ownerUserID => $state.composableBuilder(
      column: $state.table.ownerUserID,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get memberCount => $state.composableBuilder(
      column: $state.table.memberCount,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get userID => $state.composableBuilder(
      column: $state.table.userID,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get nickname => $state.composableBuilder(
      column: $state.table.nickname,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get userFaceURL => $state.composableBuilder(
      column: $state.table.userFaceURL,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get handleResult => $state.composableBuilder(
      column: $state.table.handleResult,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get reqMsg => $state.composableBuilder(
      column: $state.table.reqMsg,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get handleMsg => $state.composableBuilder(
      column: $state.table.handleMsg,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get reqTime => $state.composableBuilder(
      column: $state.table.reqTime,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get handleUserID => $state.composableBuilder(
      column: $state.table.handleUserID,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get handleTime => $state.composableBuilder(
      column: $state.table.handleTime,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get ex => $state.composableBuilder(
      column: $state.table.ex,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get attachedInfo => $state.composableBuilder(
      column: $state.table.attachedInfo,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get joinSource => $state.composableBuilder(
      column: $state.table.joinSource,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get inviterUserID => $state.composableBuilder(
      column: $state.table.inviterUserID,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));
}

class $$LocalAdminGroupRequestsTableTableManager extends RootTableManager<
    _$AppDatabase,
    $LocalAdminGroupRequestsTable,
    LocalAdminGroupRequest,
    $$LocalAdminGroupRequestsTableFilterComposer,
    $$LocalAdminGroupRequestsTableOrderingComposer,
    $$LocalAdminGroupRequestsTableCreateCompanionBuilder,
    $$LocalAdminGroupRequestsTableUpdateCompanionBuilder,
    (
      LocalAdminGroupRequest,
      BaseReferences<_$AppDatabase, $LocalAdminGroupRequestsTable,
          LocalAdminGroupRequest>
    ),
    LocalAdminGroupRequest,
    PrefetchHooks Function()> {
  $$LocalAdminGroupRequestsTableTableManager(
      _$AppDatabase db, $LocalAdminGroupRequestsTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer: $$LocalAdminGroupRequestsTableFilterComposer(
              ComposerState(db, table)),
          orderingComposer: $$LocalAdminGroupRequestsTableOrderingComposer(
              ComposerState(db, table)),
          updateCompanionCallback: ({
            Value<String> groupID = const Value.absent(),
            Value<String> groupName = const Value.absent(),
            Value<String> notification = const Value.absent(),
            Value<String> introduction = const Value.absent(),
            Value<String> groupFaceURL = const Value.absent(),
            Value<int> createTime = const Value.absent(),
            Value<int> status = const Value.absent(),
            Value<String> creatorUserID = const Value.absent(),
            Value<int> groupType = const Value.absent(),
            Value<String> ownerUserID = const Value.absent(),
            Value<int> memberCount = const Value.absent(),
            Value<String> userID = const Value.absent(),
            Value<String> nickname = const Value.absent(),
            Value<String> userFaceURL = const Value.absent(),
            Value<int> handleResult = const Value.absent(),
            Value<String> reqMsg = const Value.absent(),
            Value<String> handleMsg = const Value.absent(),
            Value<int> reqTime = const Value.absent(),
            Value<String> handleUserID = const Value.absent(),
            Value<int> handleTime = const Value.absent(),
            Value<String> ex = const Value.absent(),
            Value<String> attachedInfo = const Value.absent(),
            Value<int> joinSource = const Value.absent(),
            Value<String> inviterUserID = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              LocalAdminGroupRequestsCompanion(
            groupID: groupID,
            groupName: groupName,
            notification: notification,
            introduction: introduction,
            groupFaceURL: groupFaceURL,
            createTime: createTime,
            status: status,
            creatorUserID: creatorUserID,
            groupType: groupType,
            ownerUserID: ownerUserID,
            memberCount: memberCount,
            userID: userID,
            nickname: nickname,
            userFaceURL: userFaceURL,
            handleResult: handleResult,
            reqMsg: reqMsg,
            handleMsg: handleMsg,
            reqTime: reqTime,
            handleUserID: handleUserID,
            handleTime: handleTime,
            ex: ex,
            attachedInfo: attachedInfo,
            joinSource: joinSource,
            inviterUserID: inviterUserID,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String groupID,
            required String groupName,
            required String notification,
            required String introduction,
            required String groupFaceURL,
            required int createTime,
            required int status,
            required String creatorUserID,
            required int groupType,
            required String ownerUserID,
            required int memberCount,
            required String userID,
            required String nickname,
            required String userFaceURL,
            required int handleResult,
            required String reqMsg,
            required String handleMsg,
            required int reqTime,
            required String handleUserID,
            required int handleTime,
            required String ex,
            required String attachedInfo,
            required int joinSource,
            required String inviterUserID,
            Value<int> rowid = const Value.absent(),
          }) =>
              LocalAdminGroupRequestsCompanion.insert(
            groupID: groupID,
            groupName: groupName,
            notification: notification,
            introduction: introduction,
            groupFaceURL: groupFaceURL,
            createTime: createTime,
            status: status,
            creatorUserID: creatorUserID,
            groupType: groupType,
            ownerUserID: ownerUserID,
            memberCount: memberCount,
            userID: userID,
            nickname: nickname,
            userFaceURL: userFaceURL,
            handleResult: handleResult,
            reqMsg: reqMsg,
            handleMsg: handleMsg,
            reqTime: reqTime,
            handleUserID: handleUserID,
            handleTime: handleTime,
            ex: ex,
            attachedInfo: attachedInfo,
            joinSource: joinSource,
            inviterUserID: inviterUserID,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$LocalAdminGroupRequestsTableProcessedTableManager
    = ProcessedTableManager<
        _$AppDatabase,
        $LocalAdminGroupRequestsTable,
        LocalAdminGroupRequest,
        $$LocalAdminGroupRequestsTableFilterComposer,
        $$LocalAdminGroupRequestsTableOrderingComposer,
        $$LocalAdminGroupRequestsTableCreateCompanionBuilder,
        $$LocalAdminGroupRequestsTableUpdateCompanionBuilder,
        (
          LocalAdminGroupRequest,
          BaseReferences<_$AppDatabase, $LocalAdminGroupRequestsTable,
              LocalAdminGroupRequest>
        ),
        LocalAdminGroupRequest,
        PrefetchHooks Function()>;
typedef $$LocalChatLogReactionExtensionsTableCreateCompanionBuilder
    = LocalChatLogReactionExtensionsCompanion Function({
  required String clientMsgID,
  required List<int> localReactionExtensions,
  Value<int> rowid,
});
typedef $$LocalChatLogReactionExtensionsTableUpdateCompanionBuilder
    = LocalChatLogReactionExtensionsCompanion Function({
  Value<String> clientMsgID,
  Value<List<int>> localReactionExtensions,
  Value<int> rowid,
});

class $$LocalChatLogReactionExtensionsTableFilterComposer
    extends FilterComposer<_$AppDatabase,
        $LocalChatLogReactionExtensionsTable> {
  $$LocalChatLogReactionExtensionsTableFilterComposer(super.$state);
  ColumnFilters<String> get clientMsgID => $state.composableBuilder(
      column: $state.table.clientMsgID,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnWithTypeConverterFilters<List<int>, List<int>, String>
      get localReactionExtensions => $state.composableBuilder(
          column: $state.table.localReactionExtensions,
          builder: (column, joinBuilders) => ColumnWithTypeConverterFilters(
              column,
              joinBuilders: joinBuilders));
}

class $$LocalChatLogReactionExtensionsTableOrderingComposer
    extends OrderingComposer<_$AppDatabase,
        $LocalChatLogReactionExtensionsTable> {
  $$LocalChatLogReactionExtensionsTableOrderingComposer(super.$state);
  ColumnOrderings<String> get clientMsgID => $state.composableBuilder(
      column: $state.table.clientMsgID,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get localReactionExtensions =>
      $state.composableBuilder(
          column: $state.table.localReactionExtensions,
          builder: (column, joinBuilders) =>
              ColumnOrderings(column, joinBuilders: joinBuilders));
}

class $$LocalChatLogReactionExtensionsTableTableManager
    extends RootTableManager<
        _$AppDatabase,
        $LocalChatLogReactionExtensionsTable,
        LocalChatLogReactionExtension,
        $$LocalChatLogReactionExtensionsTableFilterComposer,
        $$LocalChatLogReactionExtensionsTableOrderingComposer,
        $$LocalChatLogReactionExtensionsTableCreateCompanionBuilder,
        $$LocalChatLogReactionExtensionsTableUpdateCompanionBuilder,
        (
          LocalChatLogReactionExtension,
          BaseReferences<_$AppDatabase, $LocalChatLogReactionExtensionsTable,
              LocalChatLogReactionExtension>
        ),
        LocalChatLogReactionExtension,
        PrefetchHooks Function()> {
  $$LocalChatLogReactionExtensionsTableTableManager(
      _$AppDatabase db, $LocalChatLogReactionExtensionsTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$LocalChatLogReactionExtensionsTableFilterComposer(
                  ComposerState(db, table)),
          orderingComposer:
              $$LocalChatLogReactionExtensionsTableOrderingComposer(
                  ComposerState(db, table)),
          updateCompanionCallback: ({
            Value<String> clientMsgID = const Value.absent(),
            Value<List<int>> localReactionExtensions = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              LocalChatLogReactionExtensionsCompanion(
            clientMsgID: clientMsgID,
            localReactionExtensions: localReactionExtensions,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String clientMsgID,
            required List<int> localReactionExtensions,
            Value<int> rowid = const Value.absent(),
          }) =>
              LocalChatLogReactionExtensionsCompanion.insert(
            clientMsgID: clientMsgID,
            localReactionExtensions: localReactionExtensions,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$LocalChatLogReactionExtensionsTableProcessedTableManager
    = ProcessedTableManager<
        _$AppDatabase,
        $LocalChatLogReactionExtensionsTable,
        LocalChatLogReactionExtension,
        $$LocalChatLogReactionExtensionsTableFilterComposer,
        $$LocalChatLogReactionExtensionsTableOrderingComposer,
        $$LocalChatLogReactionExtensionsTableCreateCompanionBuilder,
        $$LocalChatLogReactionExtensionsTableUpdateCompanionBuilder,
        (
          LocalChatLogReactionExtension,
          BaseReferences<_$AppDatabase, $LocalChatLogReactionExtensionsTable,
              LocalChatLogReactionExtension>
        ),
        LocalChatLogReactionExtension,
        PrefetchHooks Function()>;
typedef $$LocalWorkMomentNotificationTableCreateCompanionBuilder
    = LocalWorkMomentNotificationCompanion Function({
  required String jsonDetail,
  required int createTime,
  Value<int> rowid,
});
typedef $$LocalWorkMomentNotificationTableUpdateCompanionBuilder
    = LocalWorkMomentNotificationCompanion Function({
  Value<String> jsonDetail,
  Value<int> createTime,
  Value<int> rowid,
});

class $$LocalWorkMomentNotificationTableFilterComposer
    extends FilterComposer<_$AppDatabase, $LocalWorkMomentNotificationTable> {
  $$LocalWorkMomentNotificationTableFilterComposer(super.$state);
  ColumnFilters<String> get jsonDetail => $state.composableBuilder(
      column: $state.table.jsonDetail,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get createTime => $state.composableBuilder(
      column: $state.table.createTime,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));
}

class $$LocalWorkMomentNotificationTableOrderingComposer
    extends OrderingComposer<_$AppDatabase, $LocalWorkMomentNotificationTable> {
  $$LocalWorkMomentNotificationTableOrderingComposer(super.$state);
  ColumnOrderings<String> get jsonDetail => $state.composableBuilder(
      column: $state.table.jsonDetail,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get createTime => $state.composableBuilder(
      column: $state.table.createTime,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));
}

class $$LocalWorkMomentNotificationTableTableManager extends RootTableManager<
    _$AppDatabase,
    $LocalWorkMomentNotificationTable,
    LocalWorkMomentNotificationData,
    $$LocalWorkMomentNotificationTableFilterComposer,
    $$LocalWorkMomentNotificationTableOrderingComposer,
    $$LocalWorkMomentNotificationTableCreateCompanionBuilder,
    $$LocalWorkMomentNotificationTableUpdateCompanionBuilder,
    (
      LocalWorkMomentNotificationData,
      BaseReferences<_$AppDatabase, $LocalWorkMomentNotificationTable,
          LocalWorkMomentNotificationData>
    ),
    LocalWorkMomentNotificationData,
    PrefetchHooks Function()> {
  $$LocalWorkMomentNotificationTableTableManager(
      _$AppDatabase db, $LocalWorkMomentNotificationTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer: $$LocalWorkMomentNotificationTableFilterComposer(
              ComposerState(db, table)),
          orderingComposer: $$LocalWorkMomentNotificationTableOrderingComposer(
              ComposerState(db, table)),
          updateCompanionCallback: ({
            Value<String> jsonDetail = const Value.absent(),
            Value<int> createTime = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              LocalWorkMomentNotificationCompanion(
            jsonDetail: jsonDetail,
            createTime: createTime,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String jsonDetail,
            required int createTime,
            Value<int> rowid = const Value.absent(),
          }) =>
              LocalWorkMomentNotificationCompanion.insert(
            jsonDetail: jsonDetail,
            createTime: createTime,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$LocalWorkMomentNotificationTableProcessedTableManager
    = ProcessedTableManager<
        _$AppDatabase,
        $LocalWorkMomentNotificationTable,
        LocalWorkMomentNotificationData,
        $$LocalWorkMomentNotificationTableFilterComposer,
        $$LocalWorkMomentNotificationTableOrderingComposer,
        $$LocalWorkMomentNotificationTableCreateCompanionBuilder,
        $$LocalWorkMomentNotificationTableUpdateCompanionBuilder,
        (
          LocalWorkMomentNotificationData,
          BaseReferences<_$AppDatabase, $LocalWorkMomentNotificationTable,
              LocalWorkMomentNotificationData>
        ),
        LocalWorkMomentNotificationData,
        PrefetchHooks Function()>;
typedef $$LocalWorkMomentsNotificationUnreadCountTableCreateCompanionBuilder
    = LocalWorkMomentsNotificationUnreadCountCompanion Function({
  required int unreadCount,
  Value<int> rowid,
});
typedef $$LocalWorkMomentsNotificationUnreadCountTableUpdateCompanionBuilder
    = LocalWorkMomentsNotificationUnreadCountCompanion Function({
  Value<int> unreadCount,
  Value<int> rowid,
});

class $$LocalWorkMomentsNotificationUnreadCountTableFilterComposer
    extends FilterComposer<_$AppDatabase,
        $LocalWorkMomentsNotificationUnreadCountTable> {
  $$LocalWorkMomentsNotificationUnreadCountTableFilterComposer(super.$state);
  ColumnFilters<int> get unreadCount => $state.composableBuilder(
      column: $state.table.unreadCount,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));
}

class $$LocalWorkMomentsNotificationUnreadCountTableOrderingComposer
    extends OrderingComposer<_$AppDatabase,
        $LocalWorkMomentsNotificationUnreadCountTable> {
  $$LocalWorkMomentsNotificationUnreadCountTableOrderingComposer(super.$state);
  ColumnOrderings<int> get unreadCount => $state.composableBuilder(
      column: $state.table.unreadCount,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));
}

class $$LocalWorkMomentsNotificationUnreadCountTableTableManager
    extends RootTableManager<
        _$AppDatabase,
        $LocalWorkMomentsNotificationUnreadCountTable,
        LocalWorkMomentsNotificationUnreadCountData,
        $$LocalWorkMomentsNotificationUnreadCountTableFilterComposer,
        $$LocalWorkMomentsNotificationUnreadCountTableOrderingComposer,
        $$LocalWorkMomentsNotificationUnreadCountTableCreateCompanionBuilder,
        $$LocalWorkMomentsNotificationUnreadCountTableUpdateCompanionBuilder,
        (
          LocalWorkMomentsNotificationUnreadCountData,
          BaseReferences<
              _$AppDatabase,
              $LocalWorkMomentsNotificationUnreadCountTable,
              LocalWorkMomentsNotificationUnreadCountData>
        ),
        LocalWorkMomentsNotificationUnreadCountData,
        PrefetchHooks Function()> {
  $$LocalWorkMomentsNotificationUnreadCountTableTableManager(
      _$AppDatabase db, $LocalWorkMomentsNotificationUnreadCountTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$LocalWorkMomentsNotificationUnreadCountTableFilterComposer(
                  ComposerState(db, table)),
          orderingComposer:
              $$LocalWorkMomentsNotificationUnreadCountTableOrderingComposer(
                  ComposerState(db, table)),
          updateCompanionCallback: ({
            Value<int> unreadCount = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              LocalWorkMomentsNotificationUnreadCountCompanion(
            unreadCount: unreadCount,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required int unreadCount,
            Value<int> rowid = const Value.absent(),
          }) =>
              LocalWorkMomentsNotificationUnreadCountCompanion.insert(
            unreadCount: unreadCount,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$LocalWorkMomentsNotificationUnreadCountTableProcessedTableManager
    = ProcessedTableManager<
        _$AppDatabase,
        $LocalWorkMomentsNotificationUnreadCountTable,
        LocalWorkMomentsNotificationUnreadCountData,
        $$LocalWorkMomentsNotificationUnreadCountTableFilterComposer,
        $$LocalWorkMomentsNotificationUnreadCountTableOrderingComposer,
        $$LocalWorkMomentsNotificationUnreadCountTableCreateCompanionBuilder,
        $$LocalWorkMomentsNotificationUnreadCountTableUpdateCompanionBuilder,
        (
          LocalWorkMomentsNotificationUnreadCountData,
          BaseReferences<
              _$AppDatabase,
              $LocalWorkMomentsNotificationUnreadCountTable,
              LocalWorkMomentsNotificationUnreadCountData>
        ),
        LocalWorkMomentsNotificationUnreadCountData,
        PrefetchHooks Function()>;
typedef $$NotificationSeqTableCreateCompanionBuilder = NotificationSeqCompanion
    Function({
  required String conversationID,
  required int seq,
  Value<int> rowid,
});
typedef $$NotificationSeqTableUpdateCompanionBuilder = NotificationSeqCompanion
    Function({
  Value<String> conversationID,
  Value<int> seq,
  Value<int> rowid,
});

class $$NotificationSeqTableFilterComposer
    extends FilterComposer<_$AppDatabase, $NotificationSeqTable> {
  $$NotificationSeqTableFilterComposer(super.$state);
  ColumnFilters<String> get conversationID => $state.composableBuilder(
      column: $state.table.conversationID,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get seq => $state.composableBuilder(
      column: $state.table.seq,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));
}

class $$NotificationSeqTableOrderingComposer
    extends OrderingComposer<_$AppDatabase, $NotificationSeqTable> {
  $$NotificationSeqTableOrderingComposer(super.$state);
  ColumnOrderings<String> get conversationID => $state.composableBuilder(
      column: $state.table.conversationID,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get seq => $state.composableBuilder(
      column: $state.table.seq,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));
}

class $$NotificationSeqTableTableManager extends RootTableManager<
    _$AppDatabase,
    $NotificationSeqTable,
    NotificationSeqData,
    $$NotificationSeqTableFilterComposer,
    $$NotificationSeqTableOrderingComposer,
    $$NotificationSeqTableCreateCompanionBuilder,
    $$NotificationSeqTableUpdateCompanionBuilder,
    (
      NotificationSeqData,
      BaseReferences<_$AppDatabase, $NotificationSeqTable, NotificationSeqData>
    ),
    NotificationSeqData,
    PrefetchHooks Function()> {
  $$NotificationSeqTableTableManager(
      _$AppDatabase db, $NotificationSeqTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$NotificationSeqTableFilterComposer(ComposerState(db, table)),
          orderingComposer:
              $$NotificationSeqTableOrderingComposer(ComposerState(db, table)),
          updateCompanionCallback: ({
            Value<String> conversationID = const Value.absent(),
            Value<int> seq = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              NotificationSeqCompanion(
            conversationID: conversationID,
            seq: seq,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String conversationID,
            required int seq,
            Value<int> rowid = const Value.absent(),
          }) =>
              NotificationSeqCompanion.insert(
            conversationID: conversationID,
            seq: seq,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$NotificationSeqTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $NotificationSeqTable,
    NotificationSeqData,
    $$NotificationSeqTableFilterComposer,
    $$NotificationSeqTableOrderingComposer,
    $$NotificationSeqTableCreateCompanionBuilder,
    $$NotificationSeqTableUpdateCompanionBuilder,
    (
      NotificationSeqData,
      BaseReferences<_$AppDatabase, $NotificationSeqTable, NotificationSeqData>
    ),
    NotificationSeqData,
    PrefetchHooks Function()>;
typedef $$LocalUploadTableCreateCompanionBuilder = LocalUploadCompanion
    Function({
  required String partHash,
  required String uploadID,
  required String uploadInfo,
  required int expireTime,
  required int createTime,
  Value<int> rowid,
});
typedef $$LocalUploadTableUpdateCompanionBuilder = LocalUploadCompanion
    Function({
  Value<String> partHash,
  Value<String> uploadID,
  Value<String> uploadInfo,
  Value<int> expireTime,
  Value<int> createTime,
  Value<int> rowid,
});

class $$LocalUploadTableFilterComposer
    extends FilterComposer<_$AppDatabase, $LocalUploadTable> {
  $$LocalUploadTableFilterComposer(super.$state);
  ColumnFilters<String> get partHash => $state.composableBuilder(
      column: $state.table.partHash,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get uploadID => $state.composableBuilder(
      column: $state.table.uploadID,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get uploadInfo => $state.composableBuilder(
      column: $state.table.uploadInfo,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get expireTime => $state.composableBuilder(
      column: $state.table.expireTime,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get createTime => $state.composableBuilder(
      column: $state.table.createTime,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));
}

class $$LocalUploadTableOrderingComposer
    extends OrderingComposer<_$AppDatabase, $LocalUploadTable> {
  $$LocalUploadTableOrderingComposer(super.$state);
  ColumnOrderings<String> get partHash => $state.composableBuilder(
      column: $state.table.partHash,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get uploadID => $state.composableBuilder(
      column: $state.table.uploadID,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get uploadInfo => $state.composableBuilder(
      column: $state.table.uploadInfo,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get expireTime => $state.composableBuilder(
      column: $state.table.expireTime,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get createTime => $state.composableBuilder(
      column: $state.table.createTime,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));
}

class $$LocalUploadTableTableManager extends RootTableManager<
    _$AppDatabase,
    $LocalUploadTable,
    LocalUploadData,
    $$LocalUploadTableFilterComposer,
    $$LocalUploadTableOrderingComposer,
    $$LocalUploadTableCreateCompanionBuilder,
    $$LocalUploadTableUpdateCompanionBuilder,
    (
      LocalUploadData,
      BaseReferences<_$AppDatabase, $LocalUploadTable, LocalUploadData>
    ),
    LocalUploadData,
    PrefetchHooks Function()> {
  $$LocalUploadTableTableManager(_$AppDatabase db, $LocalUploadTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$LocalUploadTableFilterComposer(ComposerState(db, table)),
          orderingComposer:
              $$LocalUploadTableOrderingComposer(ComposerState(db, table)),
          updateCompanionCallback: ({
            Value<String> partHash = const Value.absent(),
            Value<String> uploadID = const Value.absent(),
            Value<String> uploadInfo = const Value.absent(),
            Value<int> expireTime = const Value.absent(),
            Value<int> createTime = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              LocalUploadCompanion(
            partHash: partHash,
            uploadID: uploadID,
            uploadInfo: uploadInfo,
            expireTime: expireTime,
            createTime: createTime,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String partHash,
            required String uploadID,
            required String uploadInfo,
            required int expireTime,
            required int createTime,
            Value<int> rowid = const Value.absent(),
          }) =>
              LocalUploadCompanion.insert(
            partHash: partHash,
            uploadID: uploadID,
            uploadInfo: uploadInfo,
            expireTime: expireTime,
            createTime: createTime,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$LocalUploadTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $LocalUploadTable,
    LocalUploadData,
    $$LocalUploadTableFilterComposer,
    $$LocalUploadTableOrderingComposer,
    $$LocalUploadTableCreateCompanionBuilder,
    $$LocalUploadTableUpdateCompanionBuilder,
    (
      LocalUploadData,
      BaseReferences<_$AppDatabase, $LocalUploadTable, LocalUploadData>
    ),
    LocalUploadData,
    PrefetchHooks Function()>;
typedef $$LocalStrangerTableCreateCompanionBuilder = LocalStrangerCompanion
    Function({
  required String userID,
  required String nickname,
  required String faceURL,
  required int createTime,
  required int appMangerLevel,
  required String ex,
  required String attachedInfo,
  required int globalRecvMsgOpt,
  Value<int> rowid,
});
typedef $$LocalStrangerTableUpdateCompanionBuilder = LocalStrangerCompanion
    Function({
  Value<String> userID,
  Value<String> nickname,
  Value<String> faceURL,
  Value<int> createTime,
  Value<int> appMangerLevel,
  Value<String> ex,
  Value<String> attachedInfo,
  Value<int> globalRecvMsgOpt,
  Value<int> rowid,
});

class $$LocalStrangerTableFilterComposer
    extends FilterComposer<_$AppDatabase, $LocalStrangerTable> {
  $$LocalStrangerTableFilterComposer(super.$state);
  ColumnFilters<String> get userID => $state.composableBuilder(
      column: $state.table.userID,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get nickname => $state.composableBuilder(
      column: $state.table.nickname,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get faceURL => $state.composableBuilder(
      column: $state.table.faceURL,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get createTime => $state.composableBuilder(
      column: $state.table.createTime,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get appMangerLevel => $state.composableBuilder(
      column: $state.table.appMangerLevel,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get ex => $state.composableBuilder(
      column: $state.table.ex,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get attachedInfo => $state.composableBuilder(
      column: $state.table.attachedInfo,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get globalRecvMsgOpt => $state.composableBuilder(
      column: $state.table.globalRecvMsgOpt,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));
}

class $$LocalStrangerTableOrderingComposer
    extends OrderingComposer<_$AppDatabase, $LocalStrangerTable> {
  $$LocalStrangerTableOrderingComposer(super.$state);
  ColumnOrderings<String> get userID => $state.composableBuilder(
      column: $state.table.userID,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get nickname => $state.composableBuilder(
      column: $state.table.nickname,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get faceURL => $state.composableBuilder(
      column: $state.table.faceURL,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get createTime => $state.composableBuilder(
      column: $state.table.createTime,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get appMangerLevel => $state.composableBuilder(
      column: $state.table.appMangerLevel,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get ex => $state.composableBuilder(
      column: $state.table.ex,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get attachedInfo => $state.composableBuilder(
      column: $state.table.attachedInfo,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get globalRecvMsgOpt => $state.composableBuilder(
      column: $state.table.globalRecvMsgOpt,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));
}

class $$LocalStrangerTableTableManager extends RootTableManager<
    _$AppDatabase,
    $LocalStrangerTable,
    LocalStrangerData,
    $$LocalStrangerTableFilterComposer,
    $$LocalStrangerTableOrderingComposer,
    $$LocalStrangerTableCreateCompanionBuilder,
    $$LocalStrangerTableUpdateCompanionBuilder,
    (
      LocalStrangerData,
      BaseReferences<_$AppDatabase, $LocalStrangerTable, LocalStrangerData>
    ),
    LocalStrangerData,
    PrefetchHooks Function()> {
  $$LocalStrangerTableTableManager(_$AppDatabase db, $LocalStrangerTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$LocalStrangerTableFilterComposer(ComposerState(db, table)),
          orderingComposer:
              $$LocalStrangerTableOrderingComposer(ComposerState(db, table)),
          updateCompanionCallback: ({
            Value<String> userID = const Value.absent(),
            Value<String> nickname = const Value.absent(),
            Value<String> faceURL = const Value.absent(),
            Value<int> createTime = const Value.absent(),
            Value<int> appMangerLevel = const Value.absent(),
            Value<String> ex = const Value.absent(),
            Value<String> attachedInfo = const Value.absent(),
            Value<int> globalRecvMsgOpt = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              LocalStrangerCompanion(
            userID: userID,
            nickname: nickname,
            faceURL: faceURL,
            createTime: createTime,
            appMangerLevel: appMangerLevel,
            ex: ex,
            attachedInfo: attachedInfo,
            globalRecvMsgOpt: globalRecvMsgOpt,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String userID,
            required String nickname,
            required String faceURL,
            required int createTime,
            required int appMangerLevel,
            required String ex,
            required String attachedInfo,
            required int globalRecvMsgOpt,
            Value<int> rowid = const Value.absent(),
          }) =>
              LocalStrangerCompanion.insert(
            userID: userID,
            nickname: nickname,
            faceURL: faceURL,
            createTime: createTime,
            appMangerLevel: appMangerLevel,
            ex: ex,
            attachedInfo: attachedInfo,
            globalRecvMsgOpt: globalRecvMsgOpt,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$LocalStrangerTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $LocalStrangerTable,
    LocalStrangerData,
    $$LocalStrangerTableFilterComposer,
    $$LocalStrangerTableOrderingComposer,
    $$LocalStrangerTableCreateCompanionBuilder,
    $$LocalStrangerTableUpdateCompanionBuilder,
    (
      LocalStrangerData,
      BaseReferences<_$AppDatabase, $LocalStrangerTable, LocalStrangerData>
    ),
    LocalStrangerData,
    PrefetchHooks Function()>;
typedef $$LocalSendingMessageTableCreateCompanionBuilder
    = LocalSendingMessageCompanion Function({
  required String conversationID,
  required String clientMsgID,
  required String ex,
  Value<int> rowid,
});
typedef $$LocalSendingMessageTableUpdateCompanionBuilder
    = LocalSendingMessageCompanion Function({
  Value<String> conversationID,
  Value<String> clientMsgID,
  Value<String> ex,
  Value<int> rowid,
});

class $$LocalSendingMessageTableFilterComposer
    extends FilterComposer<_$AppDatabase, $LocalSendingMessageTable> {
  $$LocalSendingMessageTableFilterComposer(super.$state);
  ColumnFilters<String> get conversationID => $state.composableBuilder(
      column: $state.table.conversationID,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get clientMsgID => $state.composableBuilder(
      column: $state.table.clientMsgID,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get ex => $state.composableBuilder(
      column: $state.table.ex,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));
}

class $$LocalSendingMessageTableOrderingComposer
    extends OrderingComposer<_$AppDatabase, $LocalSendingMessageTable> {
  $$LocalSendingMessageTableOrderingComposer(super.$state);
  ColumnOrderings<String> get conversationID => $state.composableBuilder(
      column: $state.table.conversationID,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get clientMsgID => $state.composableBuilder(
      column: $state.table.clientMsgID,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get ex => $state.composableBuilder(
      column: $state.table.ex,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));
}

class $$LocalSendingMessageTableTableManager extends RootTableManager<
    _$AppDatabase,
    $LocalSendingMessageTable,
    LocalSendingMessageData,
    $$LocalSendingMessageTableFilterComposer,
    $$LocalSendingMessageTableOrderingComposer,
    $$LocalSendingMessageTableCreateCompanionBuilder,
    $$LocalSendingMessageTableUpdateCompanionBuilder,
    (
      LocalSendingMessageData,
      BaseReferences<_$AppDatabase, $LocalSendingMessageTable,
          LocalSendingMessageData>
    ),
    LocalSendingMessageData,
    PrefetchHooks Function()> {
  $$LocalSendingMessageTableTableManager(
      _$AppDatabase db, $LocalSendingMessageTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer: $$LocalSendingMessageTableFilterComposer(
              ComposerState(db, table)),
          orderingComposer: $$LocalSendingMessageTableOrderingComposer(
              ComposerState(db, table)),
          updateCompanionCallback: ({
            Value<String> conversationID = const Value.absent(),
            Value<String> clientMsgID = const Value.absent(),
            Value<String> ex = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              LocalSendingMessageCompanion(
            conversationID: conversationID,
            clientMsgID: clientMsgID,
            ex: ex,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String conversationID,
            required String clientMsgID,
            required String ex,
            Value<int> rowid = const Value.absent(),
          }) =>
              LocalSendingMessageCompanion.insert(
            conversationID: conversationID,
            clientMsgID: clientMsgID,
            ex: ex,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$LocalSendingMessageTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $LocalSendingMessageTable,
    LocalSendingMessageData,
    $$LocalSendingMessageTableFilterComposer,
    $$LocalSendingMessageTableOrderingComposer,
    $$LocalSendingMessageTableCreateCompanionBuilder,
    $$LocalSendingMessageTableUpdateCompanionBuilder,
    (
      LocalSendingMessageData,
      BaseReferences<_$AppDatabase, $LocalSendingMessageTable,
          LocalSendingMessageData>
    ),
    LocalSendingMessageData,
    PrefetchHooks Function()>;
typedef $$LocalUserCommandTableCreateCompanionBuilder
    = LocalUserCommandCompanion Function({
  required String userID,
  required int type,
  required String uuid,
  required int createTime,
  required String value,
  required String ex,
  Value<int> rowid,
});
typedef $$LocalUserCommandTableUpdateCompanionBuilder
    = LocalUserCommandCompanion Function({
  Value<String> userID,
  Value<int> type,
  Value<String> uuid,
  Value<int> createTime,
  Value<String> value,
  Value<String> ex,
  Value<int> rowid,
});

class $$LocalUserCommandTableFilterComposer
    extends FilterComposer<_$AppDatabase, $LocalUserCommandTable> {
  $$LocalUserCommandTableFilterComposer(super.$state);
  ColumnFilters<String> get userID => $state.composableBuilder(
      column: $state.table.userID,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get type => $state.composableBuilder(
      column: $state.table.type,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get uuid => $state.composableBuilder(
      column: $state.table.uuid,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get createTime => $state.composableBuilder(
      column: $state.table.createTime,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get value => $state.composableBuilder(
      column: $state.table.value,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get ex => $state.composableBuilder(
      column: $state.table.ex,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));
}

class $$LocalUserCommandTableOrderingComposer
    extends OrderingComposer<_$AppDatabase, $LocalUserCommandTable> {
  $$LocalUserCommandTableOrderingComposer(super.$state);
  ColumnOrderings<String> get userID => $state.composableBuilder(
      column: $state.table.userID,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get type => $state.composableBuilder(
      column: $state.table.type,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get uuid => $state.composableBuilder(
      column: $state.table.uuid,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get createTime => $state.composableBuilder(
      column: $state.table.createTime,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get value => $state.composableBuilder(
      column: $state.table.value,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get ex => $state.composableBuilder(
      column: $state.table.ex,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));
}

class $$LocalUserCommandTableTableManager extends RootTableManager<
    _$AppDatabase,
    $LocalUserCommandTable,
    LocalUserCommandData,
    $$LocalUserCommandTableFilterComposer,
    $$LocalUserCommandTableOrderingComposer,
    $$LocalUserCommandTableCreateCompanionBuilder,
    $$LocalUserCommandTableUpdateCompanionBuilder,
    (
      LocalUserCommandData,
      BaseReferences<_$AppDatabase, $LocalUserCommandTable,
          LocalUserCommandData>
    ),
    LocalUserCommandData,
    PrefetchHooks Function()> {
  $$LocalUserCommandTableTableManager(
      _$AppDatabase db, $LocalUserCommandTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$LocalUserCommandTableFilterComposer(ComposerState(db, table)),
          orderingComposer:
              $$LocalUserCommandTableOrderingComposer(ComposerState(db, table)),
          updateCompanionCallback: ({
            Value<String> userID = const Value.absent(),
            Value<int> type = const Value.absent(),
            Value<String> uuid = const Value.absent(),
            Value<int> createTime = const Value.absent(),
            Value<String> value = const Value.absent(),
            Value<String> ex = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              LocalUserCommandCompanion(
            userID: userID,
            type: type,
            uuid: uuid,
            createTime: createTime,
            value: value,
            ex: ex,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String userID,
            required int type,
            required String uuid,
            required int createTime,
            required String value,
            required String ex,
            Value<int> rowid = const Value.absent(),
          }) =>
              LocalUserCommandCompanion.insert(
            userID: userID,
            type: type,
            uuid: uuid,
            createTime: createTime,
            value: value,
            ex: ex,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$LocalUserCommandTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $LocalUserCommandTable,
    LocalUserCommandData,
    $$LocalUserCommandTableFilterComposer,
    $$LocalUserCommandTableOrderingComposer,
    $$LocalUserCommandTableCreateCompanionBuilder,
    $$LocalUserCommandTableUpdateCompanionBuilder,
    (
      LocalUserCommandData,
      BaseReferences<_$AppDatabase, $LocalUserCommandTable,
          LocalUserCommandData>
    ),
    LocalUserCommandData,
    PrefetchHooks Function()>;
typedef $$LocalVersionSyncsTableCreateCompanionBuilder
    = LocalVersionSyncsCompanion Function({
  required String table,
  required String entityID,
  required String versionID,
  required int version,
  required int createTime,
  required List<String> uidList,
  Value<int> rowid,
});
typedef $$LocalVersionSyncsTableUpdateCompanionBuilder
    = LocalVersionSyncsCompanion Function({
  Value<String> table,
  Value<String> entityID,
  Value<String> versionID,
  Value<int> version,
  Value<int> createTime,
  Value<List<String>> uidList,
  Value<int> rowid,
});

class $$LocalVersionSyncsTableFilterComposer
    extends FilterComposer<_$AppDatabase, $LocalVersionSyncsTable> {
  $$LocalVersionSyncsTableFilterComposer(super.$state);
  ColumnFilters<String> get table => $state.composableBuilder(
      column: $state.table.table,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get entityID => $state.composableBuilder(
      column: $state.table.entityID,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get versionID => $state.composableBuilder(
      column: $state.table.versionID,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get version => $state.composableBuilder(
      column: $state.table.version,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get createTime => $state.composableBuilder(
      column: $state.table.createTime,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnWithTypeConverterFilters<List<String>, List<String>, String>
      get uidList => $state.composableBuilder(
          column: $state.table.uidList,
          builder: (column, joinBuilders) => ColumnWithTypeConverterFilters(
              column,
              joinBuilders: joinBuilders));
}

class $$LocalVersionSyncsTableOrderingComposer
    extends OrderingComposer<_$AppDatabase, $LocalVersionSyncsTable> {
  $$LocalVersionSyncsTableOrderingComposer(super.$state);
  ColumnOrderings<String> get table => $state.composableBuilder(
      column: $state.table.table,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get entityID => $state.composableBuilder(
      column: $state.table.entityID,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get versionID => $state.composableBuilder(
      column: $state.table.versionID,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get version => $state.composableBuilder(
      column: $state.table.version,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get createTime => $state.composableBuilder(
      column: $state.table.createTime,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get uidList => $state.composableBuilder(
      column: $state.table.uidList,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));
}

class $$LocalVersionSyncsTableTableManager extends RootTableManager<
    _$AppDatabase,
    $LocalVersionSyncsTable,
    LocalVersionSync,
    $$LocalVersionSyncsTableFilterComposer,
    $$LocalVersionSyncsTableOrderingComposer,
    $$LocalVersionSyncsTableCreateCompanionBuilder,
    $$LocalVersionSyncsTableUpdateCompanionBuilder,
    (
      LocalVersionSync,
      BaseReferences<_$AppDatabase, $LocalVersionSyncsTable, LocalVersionSync>
    ),
    LocalVersionSync,
    PrefetchHooks Function()> {
  $$LocalVersionSyncsTableTableManager(
      _$AppDatabase db, $LocalVersionSyncsTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$LocalVersionSyncsTableFilterComposer(ComposerState(db, table)),
          orderingComposer: $$LocalVersionSyncsTableOrderingComposer(
              ComposerState(db, table)),
          updateCompanionCallback: ({
            Value<String> table = const Value.absent(),
            Value<String> entityID = const Value.absent(),
            Value<String> versionID = const Value.absent(),
            Value<int> version = const Value.absent(),
            Value<int> createTime = const Value.absent(),
            Value<List<String>> uidList = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              LocalVersionSyncsCompanion(
            table: table,
            entityID: entityID,
            versionID: versionID,
            version: version,
            createTime: createTime,
            uidList: uidList,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String table,
            required String entityID,
            required String versionID,
            required int version,
            required int createTime,
            required List<String> uidList,
            Value<int> rowid = const Value.absent(),
          }) =>
              LocalVersionSyncsCompanion.insert(
            table: table,
            entityID: entityID,
            versionID: versionID,
            version: version,
            createTime: createTime,
            uidList: uidList,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$LocalVersionSyncsTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $LocalVersionSyncsTable,
    LocalVersionSync,
    $$LocalVersionSyncsTableFilterComposer,
    $$LocalVersionSyncsTableOrderingComposer,
    $$LocalVersionSyncsTableCreateCompanionBuilder,
    $$LocalVersionSyncsTableUpdateCompanionBuilder,
    (
      LocalVersionSync,
      BaseReferences<_$AppDatabase, $LocalVersionSyncsTable, LocalVersionSync>
    ),
    LocalVersionSync,
    PrefetchHooks Function()>;
typedef $$LocalAppSDKVersionsTableCreateCompanionBuilder
    = LocalAppSDKVersionsCompanion Function({
  required String version,
  Value<int> rowid,
});
typedef $$LocalAppSDKVersionsTableUpdateCompanionBuilder
    = LocalAppSDKVersionsCompanion Function({
  Value<String> version,
  Value<int> rowid,
});

class $$LocalAppSDKVersionsTableFilterComposer
    extends FilterComposer<_$AppDatabase, $LocalAppSDKVersionsTable> {
  $$LocalAppSDKVersionsTableFilterComposer(super.$state);
  ColumnFilters<String> get version => $state.composableBuilder(
      column: $state.table.version,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));
}

class $$LocalAppSDKVersionsTableOrderingComposer
    extends OrderingComposer<_$AppDatabase, $LocalAppSDKVersionsTable> {
  $$LocalAppSDKVersionsTableOrderingComposer(super.$state);
  ColumnOrderings<String> get version => $state.composableBuilder(
      column: $state.table.version,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));
}

class $$LocalAppSDKVersionsTableTableManager extends RootTableManager<
    _$AppDatabase,
    $LocalAppSDKVersionsTable,
    LocalAppSDKVersion,
    $$LocalAppSDKVersionsTableFilterComposer,
    $$LocalAppSDKVersionsTableOrderingComposer,
    $$LocalAppSDKVersionsTableCreateCompanionBuilder,
    $$LocalAppSDKVersionsTableUpdateCompanionBuilder,
    (
      LocalAppSDKVersion,
      BaseReferences<_$AppDatabase, $LocalAppSDKVersionsTable,
          LocalAppSDKVersion>
    ),
    LocalAppSDKVersion,
    PrefetchHooks Function()> {
  $$LocalAppSDKVersionsTableTableManager(
      _$AppDatabase db, $LocalAppSDKVersionsTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer: $$LocalAppSDKVersionsTableFilterComposer(
              ComposerState(db, table)),
          orderingComposer: $$LocalAppSDKVersionsTableOrderingComposer(
              ComposerState(db, table)),
          updateCompanionCallback: ({
            Value<String> version = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              LocalAppSDKVersionsCompanion(
            version: version,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String version,
            Value<int> rowid = const Value.absent(),
          }) =>
              LocalAppSDKVersionsCompanion.insert(
            version: version,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$LocalAppSDKVersionsTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $LocalAppSDKVersionsTable,
    LocalAppSDKVersion,
    $$LocalAppSDKVersionsTableFilterComposer,
    $$LocalAppSDKVersionsTableOrderingComposer,
    $$LocalAppSDKVersionsTableCreateCompanionBuilder,
    $$LocalAppSDKVersionsTableUpdateCompanionBuilder,
    (
      LocalAppSDKVersion,
      BaseReferences<_$AppDatabase, $LocalAppSDKVersionsTable,
          LocalAppSDKVersion>
    ),
    LocalAppSDKVersion,
    PrefetchHooks Function()>;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$LocalFriendTableTableManager get localFriend =>
      $$LocalFriendTableTableManager(_db, _db.localFriend);
  $$LocalFriendRequestTableTableManager get localFriendRequest =>
      $$LocalFriendRequestTableTableManager(_db, _db.localFriendRequest);
  $$LocalGroupTableTableManager get localGroup =>
      $$LocalGroupTableTableManager(_db, _db.localGroup);
  $$LocalGroupMemberTableTableManager get localGroupMember =>
      $$LocalGroupMemberTableTableManager(_db, _db.localGroupMember);
  $$LocalGroupRequestTableTableManager get localGroupRequest =>
      $$LocalGroupRequestTableTableManager(_db, _db.localGroupRequest);
  $$LocalUserTableTableManager get localUser =>
      $$LocalUserTableTableManager(_db, _db.localUser);
  $$LocalBlackTableTableManager get localBlack =>
      $$LocalBlackTableTableManager(_db, _db.localBlack);
  $$LocalSeqDataTableTableTableManager get localSeqDataTable =>
      $$LocalSeqDataTableTableTableManager(_db, _db.localSeqDataTable);
  $$LocalSeqTableTableManager get localSeq =>
      $$LocalSeqTableTableManager(_db, _db.localSeq);
  $$LocalChatLogTableTableManager get localChatLog =>
      $$LocalChatLogTableTableManager(_db, _db.localChatLog);
  $$LocalErrChatLogTableTableManager get localErrChatLog =>
      $$LocalErrChatLogTableTableManager(_db, _db.localErrChatLog);
  $$TempCacheLocalChatLogTableTableManager get tempCacheLocalChatLog =>
      $$TempCacheLocalChatLogTableTableManager(_db, _db.tempCacheLocalChatLog);
  $$LocalConversationTableTableManager get localConversation =>
      $$LocalConversationTableTableManager(_db, _db.localConversation);
  $$LocalConversationUnreadMessageTableTableManager
      get localConversationUnreadMessage =>
          $$LocalConversationUnreadMessageTableTableManager(
              _db, _db.localConversationUnreadMessage);
  $$LocalAdminGroupRequestsTableTableManager get localAdminGroupRequests =>
      $$LocalAdminGroupRequestsTableTableManager(
          _db, _db.localAdminGroupRequests);
  $$LocalChatLogReactionExtensionsTableTableManager
      get localChatLogReactionExtensions =>
          $$LocalChatLogReactionExtensionsTableTableManager(
              _db, _db.localChatLogReactionExtensions);
  $$LocalWorkMomentNotificationTableTableManager
      get localWorkMomentNotification =>
          $$LocalWorkMomentNotificationTableTableManager(
              _db, _db.localWorkMomentNotification);
  $$LocalWorkMomentsNotificationUnreadCountTableTableManager
      get localWorkMomentsNotificationUnreadCount =>
          $$LocalWorkMomentsNotificationUnreadCountTableTableManager(
              _db, _db.localWorkMomentsNotificationUnreadCount);
  $$NotificationSeqTableTableManager get notificationSeq =>
      $$NotificationSeqTableTableManager(_db, _db.notificationSeq);
  $$LocalUploadTableTableManager get localUpload =>
      $$LocalUploadTableTableManager(_db, _db.localUpload);
  $$LocalStrangerTableTableManager get localStranger =>
      $$LocalStrangerTableTableManager(_db, _db.localStranger);
  $$LocalSendingMessageTableTableManager get localSendingMessage =>
      $$LocalSendingMessageTableTableManager(_db, _db.localSendingMessage);
  $$LocalUserCommandTableTableManager get localUserCommand =>
      $$LocalUserCommandTableTableManager(_db, _db.localUserCommand);
  $$LocalVersionSyncsTableTableManager get localVersionSyncs =>
      $$LocalVersionSyncsTableTableManager(_db, _db.localVersionSyncs);
  $$LocalAppSDKVersionsTableTableManager get localAppSDKVersions =>
      $$LocalAppSDKVersionsTableTableManager(_db, _db.localAppSDKVersions);
}

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
