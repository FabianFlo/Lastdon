import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class EnviosRecord extends FirestoreRecord {
  EnviosRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "email" field.
  DocumentReference? _email;
  DocumentReference? get email => _email;
  bool hasEmail() => _email != null;

  // "address" field.
  String? _address;
  String get address => _address ?? '';
  bool hasAddress() => _address != null;

  void _initializeFields() {
    _email = snapshotData['email'] as DocumentReference?;
    _address = snapshotData['address'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Envios');

  static Stream<EnviosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => EnviosRecord.fromSnapshot(s));

  static Future<EnviosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => EnviosRecord.fromSnapshot(s));

  static EnviosRecord fromSnapshot(DocumentSnapshot snapshot) => EnviosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static EnviosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      EnviosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'EnviosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is EnviosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createEnviosRecordData({
  DocumentReference? email,
  String? address,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'address': address,
    }.withoutNulls,
  );

  return firestoreData;
}

class EnviosRecordDocumentEquality implements Equality<EnviosRecord> {
  const EnviosRecordDocumentEquality();

  @override
  bool equals(EnviosRecord? e1, EnviosRecord? e2) {
    return e1?.email == e2?.email && e1?.address == e2?.address;
  }

  @override
  int hash(EnviosRecord? e) =>
      const ListEquality().hash([e?.email, e?.address]);

  @override
  bool isValidKey(Object? o) => o is EnviosRecord;
}
