import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class ConductoresRecord extends FirestoreRecord {
  ConductoresRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "nombre" field.
  String? _nombre;
  String get nombre => _nombre ?? '';
  bool hasNombre() => _nombre != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "apellido" field.
  String? _apellido;
  String get apellido => _apellido ?? '';
  bool hasApellido() => _apellido != null;

  void _initializeFields() {
    _nombre = snapshotData['nombre'] as String?;
    _email = snapshotData['email'] as String?;
    _apellido = snapshotData['apellido'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('conductores');

  static Stream<ConductoresRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ConductoresRecord.fromSnapshot(s));

  static Future<ConductoresRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ConductoresRecord.fromSnapshot(s));

  static ConductoresRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ConductoresRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ConductoresRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ConductoresRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ConductoresRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ConductoresRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createConductoresRecordData({
  String? nombre,
  String? email,
  String? apellido,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nombre': nombre,
      'email': email,
      'apellido': apellido,
    }.withoutNulls,
  );

  return firestoreData;
}

class ConductoresRecordDocumentEquality implements Equality<ConductoresRecord> {
  const ConductoresRecordDocumentEquality();

  @override
  bool equals(ConductoresRecord? e1, ConductoresRecord? e2) {
    return e1?.nombre == e2?.nombre &&
        e1?.email == e2?.email &&
        e1?.apellido == e2?.apellido;
  }

  @override
  int hash(ConductoresRecord? e) =>
      const ListEquality().hash([e?.nombre, e?.email, e?.apellido]);

  @override
  bool isValidKey(Object? o) => o is ConductoresRecord;
}
