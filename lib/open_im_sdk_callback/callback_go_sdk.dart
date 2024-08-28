// type OnFriendshipListenerSdk interface {
// 	OnFriendApplicationAdded(friendApplication model_struct.LocalFriendRequest)
// 	OnFriendApplicationDeleted(friendApplication model_struct.LocalFriendRequest)
// 	OnFriendApplicationAccepted(friendApplication model_struct.LocalFriendRequest)
// 	OnFriendApplicationRejected(friendApplication model_struct.LocalFriendRequest)
// 	OnFriendAdded(friendInfo model_struct.LocalFriend)
// 	OnFriendDeleted(friendInfo model_struct.LocalFriend)
// 	OnFriendInfoChanged(friendInfo model_struct.LocalFriend)
// 	OnBlackAdded(blackInfo model_struct.LocalBlack)
// 	OnBlackDeleted(blackInfo model_struct.LocalBlack)
// }

abstract interface class OnFriendshipListenerSdk {
  void onFriendApplicationAdded(String friendApplication);
}
