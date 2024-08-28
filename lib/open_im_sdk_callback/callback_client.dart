abstract interface class Base {
  void onError(int errorCode, String errMsg);
  void onSuccess(String data);
}

abstract interface class SendMsgCallback extends Base {
  void onProgress(int progress);
}

abstract interface class OnConnListener {
  void onConnecting();
  void onConnectSuccess();
  void onConnectFailed(int errCode, String errMsg);
  void onKickedOffline();
  void onUserTokenExpired();
  void onUserTokenInvalid(String errMsg);
}

abstract interface class OnGroupListener {
  void onJoinedGroupAdded(String groupInfo);
  void onJoinedGroupDeleted(String groupInfo);
  void onGroupMemberAdded(String groupMemberInfo);
  void onGroupMemberDeleted(String groupMemberInfo);
  void onGroupApplicationAdded(String groupApplication);
  void onGroupApplicationDeleted(String groupApplication);
  void onGroupInfoChanged(String groupInfo);
  void onGroupDismissed(String groupInfo);
  void onGroupMemberInfoChanged(String groupMemberInfo);
  void onGroupApplicationAccepted(String groupApplication);
  void onGroupApplicationRejected(String groupApplication);
}

abstract interface class OnFriendshipListener {
  void onFriendApplicationAdded(String friendApplication);
  void onFriendApplicationDeleted(String friendApplication);
  void onFriendApplicationAccepted(String friendApplication);
  void onFriendApplicationRejected(String friendApplication);
  void onFriendAdded(String friendInfo);
  void onFriendDeleted(String friendInfo);
  void onFriendInfoChanged(String friendInfo);
  void onBlackAdded(String blackInfo);
  void onBlackDeleted(String blackInfo);
}

abstract interface class OnConversationListener {
  void onSyncServerStart(bool reinstalled);
  void onSyncServerFinish(bool reinstalled);
  void onSyncServerProgress(int progress);
  void onSyncServerFailed(bool reinstalled);
  void onNewConversation(String conversationList);
  void onConversationChanged(String conversationList);
  void onTotalUnreadMessageCountChanged(int totalUnreadCount);
  void onConversationUserInputStatusChanged(String change);
}

abstract interface class OnAdvancedMsgListener {
  void onRecvNewMessage(String message);
  void onRecvC2CReadReceipt(String msgReceiptList);
  void onRecvGroupReadReceipt(String groupMsgReceiptList);
  void onNewRecvMessageRevoked(String messageRevoked);
  void onRecvMessageExtensionsChanged(
      String msgID, String reactionExtensionList);
  void onRecvMessageExtensionsDeleted(
      String msgID, String reactionExtensionKeyList);
  void onRecvMessageExtensionsAdded(String msgID, String reactionExtensionList);
  void onRecvOfflineNewMessage(String message);
  void onMsgDeleted(String message);
  void onRecvOnlineOnlyMessage(String message);
}

abstract interface class OnBatchMsgListener {
  void onRecvNewMessages(String messageList);
  void onRecvOfflineNewMessages(String messageList);
}

abstract interface class OnUserListener {
  void onSelfInfoUpdated(String userInfo);
  void onUserStatusChanged(String userOnlineStatus);
  void onUserCommandAdd(String userCommand);
  void onUserCommandDelete(String userCommand);
  void onUserCommandUpdate(String userCommand);
}

abstract interface class OnCustomBusinessListener {
  void onRecvCustomBusinessMessage(String businessMessage);
}

abstract interface class OnMessageKvInfoListener {
  void onMessageKvInfoChanged(String messageChangedList);
}

abstract interface class OnListenerForService {
  // 有人申请进群
  void onGroupApplicationAdded(String groupApplication);
  // 进群申请被同意
  void onGroupApplicationAccepted(String groupApplication);
  // 有人申请添加你为好友
  void onFriendApplicationAdded(String friendApplication);
  //  好友申请被同意
  void onFriendApplicationAccepted(String friendApplication);
  // 收到新消息
  void onRecvNewMessage(String message);
}

abstract interface class OnSignalingListener {
  void onReceiveNewInvitation(String receiveNewInvitationCallback);

  void onInviteeAccepted(String inviteeAcceptedCallback);

  void onInviteeAcceptedByOtherDevice(String inviteeAcceptedCallback);

  void onInviteeRejected(String inviteeRejectedCallback);

  void onInviteeRejectedByOtherDevice(String inviteeRejectedCallback);

  void onInvitationCancelled(String invitationCancelledCallback);

  void onInvitationTimeout(String invitationTimeoutCallback);

  void onHangUp(String hangUpCallback);

  void onRoomParticipantConnected(String onRoomParticipantConnectedCallback);

  void onRoomParticipantDisconnected(
      String onRoomParticipantDisconnectedCallback);
}

abstract interface class UploadFileCallback {
  // 文件打开的大小
  void onOpen(int size);
  // 分片大小，数量
  void onPartSize(int partSize, int num);
  // 每块分片的hash值
  void onHashPartProgress(int index, int size, String partHash);
  // 分块完成，服务端标记hash和文件最终hash
  void onHashPartComplete(String partsHash, String fileHash);
  // 上传ID
  void onUploadID(String uploadID);
  // 上传分片进度
  void onUploadPartComplete(int index, int partSize, String partHash);
  // 整体进度
  void onUploadComplete(int fileSize, int streamSize, int storageSize);
  // 上传完成
  void onComplete(int size, String url, int typ);
}

abstract interface class UploadLogProgress {
  void onProgress(int current, int size);
}

abstract interface class AppDataSyncListener {
  void onAppDataSyncStart();
  void onAppDataSyncProgress(int progress);
  void onAppDataSyncFinish();
}
