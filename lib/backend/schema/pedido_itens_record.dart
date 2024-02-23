import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PedidoItensRecord extends FirestoreRecord {
  PedidoItensRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "idPedidos" field.
  String? _idPedidos;
  String get idPedidos => _idPedidos ?? '';
  bool hasIdPedidos() => _idPedidos != null;

  // "nome" field.
  String? _nome;
  String get nome => _nome ?? '';
  bool hasNome() => _nome != null;

  // "preco" field.
  double? _preco;
  double get preco => _preco ?? 0.0;
  bool hasPreco() => _preco != null;

  // "quantidade" field.
  int? _quantidade;
  int get quantidade => _quantidade ?? 0;
  bool hasQuantidade() => _quantidade != null;

  // "subTotal" field.
  double? _subTotal;
  double get subTotal => _subTotal ?? 0.0;
  bool hasSubTotal() => _subTotal != null;

  // "obs" field.
  String? _obs;
  String get obs => _obs ?? '';
  bool hasObs() => _obs != null;

  void _initializeFields() {
    _idPedidos = snapshotData['idPedidos'] as String?;
    _nome = snapshotData['nome'] as String?;
    _preco = castToType<double>(snapshotData['preco']);
    _quantidade = castToType<int>(snapshotData['quantidade']);
    _subTotal = castToType<double>(snapshotData['subTotal']);
    _obs = snapshotData['obs'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('pedidoItens');

  static Stream<PedidoItensRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PedidoItensRecord.fromSnapshot(s));

  static Future<PedidoItensRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PedidoItensRecord.fromSnapshot(s));

  static PedidoItensRecord fromSnapshot(DocumentSnapshot snapshot) =>
      PedidoItensRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PedidoItensRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PedidoItensRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PedidoItensRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PedidoItensRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPedidoItensRecordData({
  String? idPedidos,
  String? nome,
  double? preco,
  int? quantidade,
  double? subTotal,
  String? obs,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'idPedidos': idPedidos,
      'nome': nome,
      'preco': preco,
      'quantidade': quantidade,
      'subTotal': subTotal,
      'obs': obs,
    }.withoutNulls,
  );

  return firestoreData;
}

class PedidoItensRecordDocumentEquality implements Equality<PedidoItensRecord> {
  const PedidoItensRecordDocumentEquality();

  @override
  bool equals(PedidoItensRecord? e1, PedidoItensRecord? e2) {
    return e1?.idPedidos == e2?.idPedidos &&
        e1?.nome == e2?.nome &&
        e1?.preco == e2?.preco &&
        e1?.quantidade == e2?.quantidade &&
        e1?.subTotal == e2?.subTotal &&
        e1?.obs == e2?.obs;
  }

  @override
  int hash(PedidoItensRecord? e) => const ListEquality().hash(
      [e?.idPedidos, e?.nome, e?.preco, e?.quantidade, e?.subTotal, e?.obs]);

  @override
  bool isValidKey(Object? o) => o is PedidoItensRecord;
}
