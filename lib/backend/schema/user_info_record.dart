import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserInfoRecord extends FirestoreRecord {
  UserInfoRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "username" field.
  String? _username;
  String get username => _username ?? '';
  bool hasUsername() => _username != null;

  // "insta_handle" field.
  String? _instaHandle;
  String get instaHandle => _instaHandle ?? '';
  bool hasInstaHandle() => _instaHandle != null;

  // "verified" field.
  bool? _verified;
  bool get verified => _verified ?? false;
  bool hasVerified() => _verified != null;

  // "age" field.
  int? _age;
  int get age => _age ?? 0;
  bool hasAge() => _age != null;

  // "location" field.
  LatLng? _location;
  LatLng? get location => _location;
  bool hasLocation() => _location != null;

  // "looking_for_friends" field.
  List<String>? _lookingForFriends;
  List<String> get lookingForFriends => _lookingForFriends ?? const [];
  bool hasLookingForFriends() => _lookingForFriends != null;

  // "looking_for_dates" field.
  List<String>? _lookingForDates;
  List<String> get lookingForDates => _lookingForDates ?? const [];
  bool hasLookingForDates() => _lookingForDates != null;

  // "about_me" field.
  String? _aboutMe;
  String get aboutMe => _aboutMe ?? '';
  bool hasAboutMe() => _aboutMe != null;

  // "interests" field.
  List<String>? _interests;
  List<String> get interests => _interests ?? const [];
  bool hasInterests() => _interests != null;

  // "prompts" field.
  List<String>? _prompts;
  List<String> get prompts => _prompts ?? const [];
  bool hasPrompts() => _prompts != null;

  // "photos" field.
  List<String>? _photos;
  List<String> get photos => _photos ?? const [];
  bool hasPhotos() => _photos != null;

  // "personality" field.
  List<String>? _personality;
  List<String> get personality => _personality ?? const [];
  bool hasPersonality() => _personality != null;

  // "music_artisits" field.
  List<String>? _musicArtisits;
  List<String> get musicArtisits => _musicArtisits ?? const [];
  bool hasMusicArtisits() => _musicArtisits != null;

  // "blind_dates" field.
  bool? _blindDates;
  bool get blindDates => _blindDates ?? false;
  bool hasBlindDates() => _blindDates != null;

  void _initializeFields() {
    _username = snapshotData['username'] as String?;
    _instaHandle = snapshotData['insta_handle'] as String?;
    _verified = snapshotData['verified'] as bool?;
    _age = castToType<int>(snapshotData['age']);
    _location = snapshotData['location'] as LatLng?;
    _lookingForFriends = getDataList(snapshotData['looking_for_friends']);
    _lookingForDates = getDataList(snapshotData['looking_for_dates']);
    _aboutMe = snapshotData['about_me'] as String?;
    _interests = getDataList(snapshotData['interests']);
    _prompts = getDataList(snapshotData['prompts']);
    _photos = getDataList(snapshotData['photos']);
    _personality = getDataList(snapshotData['personality']);
    _musicArtisits = getDataList(snapshotData['music_artisits']);
    _blindDates = snapshotData['blind_dates'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('user_info');

  static Stream<UserInfoRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UserInfoRecord.fromSnapshot(s));

  static Future<UserInfoRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UserInfoRecord.fromSnapshot(s));

  static UserInfoRecord fromSnapshot(DocumentSnapshot snapshot) =>
      UserInfoRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UserInfoRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UserInfoRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UserInfoRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UserInfoRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUserInfoRecordData({
  String? username,
  String? instaHandle,
  bool? verified,
  int? age,
  LatLng? location,
  String? aboutMe,
  bool? blindDates,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'username': username,
      'insta_handle': instaHandle,
      'verified': verified,
      'age': age,
      'location': location,
      'about_me': aboutMe,
      'blind_dates': blindDates,
    }.withoutNulls,
  );

  return firestoreData;
}

class UserInfoRecordDocumentEquality implements Equality<UserInfoRecord> {
  const UserInfoRecordDocumentEquality();

  @override
  bool equals(UserInfoRecord? e1, UserInfoRecord? e2) {
    const listEquality = ListEquality();
    return e1?.username == e2?.username &&
        e1?.instaHandle == e2?.instaHandle &&
        e1?.verified == e2?.verified &&
        e1?.age == e2?.age &&
        e1?.location == e2?.location &&
        listEquality.equals(e1?.lookingForFriends, e2?.lookingForFriends) &&
        listEquality.equals(e1?.lookingForDates, e2?.lookingForDates) &&
        e1?.aboutMe == e2?.aboutMe &&
        listEquality.equals(e1?.interests, e2?.interests) &&
        listEquality.equals(e1?.prompts, e2?.prompts) &&
        listEquality.equals(e1?.photos, e2?.photos) &&
        listEquality.equals(e1?.personality, e2?.personality) &&
        listEquality.equals(e1?.musicArtisits, e2?.musicArtisits) &&
        e1?.blindDates == e2?.blindDates;
  }

  @override
  int hash(UserInfoRecord? e) => const ListEquality().hash([
        e?.username,
        e?.instaHandle,
        e?.verified,
        e?.age,
        e?.location,
        e?.lookingForFriends,
        e?.lookingForDates,
        e?.aboutMe,
        e?.interests,
        e?.prompts,
        e?.photos,
        e?.personality,
        e?.musicArtisits,
        e?.blindDates
      ]);

  @override
  bool isValidKey(Object? o) => o is UserInfoRecord;
}
