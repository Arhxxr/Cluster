import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class ChatsRecord extends FirestoreRecord {
  ChatsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "users" field.
  List<DocumentReference>? _users;
  List<DocumentReference> get users => _users ?? const [];
  bool hasUsers() => _users != null;

  // "user_a" field.
  DocumentReference? _userA;
  DocumentReference? get userA => _userA;
  bool hasUserA() => _userA != null;

  // "user_b" field.
  DocumentReference? _userB;
  DocumentReference? get userB => _userB;
  bool hasUserB() => _userB != null;

  // "last_message" field.
  String? _lastMessage;
  String get lastMessage => _lastMessage ?? '';
  bool hasLastMessage() => _lastMessage != null;

  // "last_message_time" field.
  DateTime? _lastMessageTime;
  DateTime? get lastMessageTime => _lastMessageTime;
  bool hasLastMessageTime() => _lastMessageTime != null;

  // "last_message_seen_by" field.
  List<DocumentReference>? _lastMessageSeenBy;
  List<DocumentReference> get lastMessageSeenBy =>
      _lastMessageSeenBy ?? const [];
  bool hasLastMessageSeenBy() => _lastMessageSeenBy != null;

  // "last_message_sent_by" field.
  DocumentReference? _lastMessageSentBy;
  DocumentReference? get lastMessageSentBy => _lastMessageSentBy;
  bool hasLastMessageSentBy() => _lastMessageSentBy != null;

  // "group_chat_name" field.
  String? _groupChatName;
  String get groupChatName => _groupChatName ?? '';
  bool hasGroupChatName() => _groupChatName != null;

  // "group_owner" field.
  DocumentReference? _groupOwner;
  DocumentReference? get groupOwner => _groupOwner;
  bool hasGroupOwner() => _groupOwner != null;

  // "moderators" field.
  List<DocumentReference>? _moderators;
  List<DocumentReference> get moderators => _moderators ?? const [];
  bool hasModerators() => _moderators != null;

  // "group_description" field.
  String? _groupDescription;
  String get groupDescription => _groupDescription ?? '';
  bool hasGroupDescription() => _groupDescription != null;

  // "group_privacy" field.
  String? _groupPrivacy;
  String get groupPrivacy => _groupPrivacy ?? '';
  bool hasGroupPrivacy() => _groupPrivacy != null;

  void _initializeFields() {
    _users = getDataList(snapshotData['users']);
    _userA = snapshotData['user_a'] as DocumentReference?;
    _userB = snapshotData['user_b'] as DocumentReference?;
    _lastMessage = snapshotData['last_message'] as String?;
    _lastMessageTime = snapshotData['last_message_time'] as DateTime?;
    _lastMessageSeenBy = getDataList(snapshotData['last_message_seen_by']);
    _lastMessageSentBy =
        snapshotData['last_message_sent_by'] as DocumentReference?;
    _groupChatName = snapshotData['group_chat_name'] as String?;
    _groupOwner = snapshotData['group_owner'] as DocumentReference?;
    _moderators = getDataList(snapshotData['moderators']);
    _groupDescription = snapshotData['group_description'] as String?;
    _groupPrivacy = snapshotData['group_privacy'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('chats');

  static Stream<ChatsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ChatsRecord.fromSnapshot(s));

  static Future<ChatsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ChatsRecord.fromSnapshot(s));

  static ChatsRecord fromSnapshot(DocumentSnapshot snapshot) => ChatsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ChatsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ChatsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ChatsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ChatsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createChatsRecordData({
  DocumentReference? userA,
  DocumentReference? userB,
  String? lastMessage,
  DateTime? lastMessageTime,
  DocumentReference? lastMessageSentBy,
  String? groupChatName,
  DocumentReference? groupOwner,
  String? groupDescription,
  String? groupPrivacy,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'user_a': userA,
      'user_b': userB,
      'last_message': lastMessage,
      'last_message_time': lastMessageTime,
      'last_message_sent_by': lastMessageSentBy,
      'group_chat_name': groupChatName,
      'group_owner': groupOwner,
      'group_description': groupDescription,
      'group_privacy': groupPrivacy,
    }.withoutNulls,
  );

  return firestoreData;
}

class ChatsRecordDocumentEquality implements Equality<ChatsRecord> {
  const ChatsRecordDocumentEquality();

  @override
  bool equals(ChatsRecord? e1, ChatsRecord? e2) {
    const listEquality = ListEquality();
    return listEquality.equals(e1?.users, e2?.users) &&
        e1?.userA == e2?.userA &&
        e1?.userB == e2?.userB &&
        e1?.lastMessage == e2?.lastMessage &&
        e1?.lastMessageTime == e2?.lastMessageTime &&
        listEquality.equals(e1?.lastMessageSeenBy, e2?.lastMessageSeenBy) &&
        e1?.lastMessageSentBy == e2?.lastMessageSentBy &&
        e1?.groupChatName == e2?.groupChatName &&
        e1?.groupOwner == e2?.groupOwner &&
        listEquality.equals(e1?.moderators, e2?.moderators) &&
        e1?.groupDescription == e2?.groupDescription &&
        e1?.groupPrivacy == e2?.groupPrivacy;
  }

  @override
  int hash(ChatsRecord? e) => const ListEquality().hash([
        e?.users,
        e?.userA,
        e?.userB,
        e?.lastMessage,
        e?.lastMessageTime,
        e?.lastMessageSeenBy,
        e?.lastMessageSentBy,
        e?.groupChatName,
        e?.groupOwner,
        e?.moderators,
        e?.groupDescription,
        e?.groupPrivacy
      ]);

  @override
  bool isValidKey(Object? o) => o is ChatsRecord;
}
