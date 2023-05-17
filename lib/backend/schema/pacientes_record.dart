import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'pacientes_record.g.dart';

abstract class PacientesRecord
    implements Built<PacientesRecord, PacientesRecordBuilder> {
  static Serializer<PacientesRecord> get serializer =>
      _$pacientesRecordSerializer;

  String? get site;

  String? get colposcopia;

  DateTime? get data;

  String? get nome;

  String? get cpf;

  int? get cns;

  int? get contato;

  String? get hospital;

  String? get medico;

  String? get datanascimento;

  String? get tipdevisita;

  String? get dresultadocitologiaprevia;

  String? get dresultadohistologiaprevia;

  String? get realizouaautocoletaparatestehpv;

  String? get motivoautocoleta;

  String? get opcaoacetobrancas;

  String? get outrosespecificar;

  String? get dimpressocolposcopica;

  String? get adequabilidadezonatransf;

  String? get djectipo2;

  String? get dresultadohistopatologia;

  String? get urlimages;

  int? get nPid;

  String? get motivoautocoletahpv;

  @BuiltValueField(wireName: 'AcetobrancasSupEsquerdoAnt12x3hr')
  int? get acetobrancasSupEsquerdoAnt12x3hr;

  @BuiltValueField(wireName: 'AcetobrancasInfEsquerdoPost3x6hr')
  int? get acetobrancasInfEsquerdoPost3x6hr;

  @BuiltValueField(wireName: 'AcetobrancasSupDireitoAnt9x12hr')
  int? get acetobrancasSupDireitoAnt9x12hr;

  @BuiltValueField(wireName: 'AcetobrancasInfDireitopost6x9hr')
  int? get acetobrancasInfDireitopost6x9hr;

  int? get areasacetobrancasnocanal;

  String? get motivocitologiahistopatologia;

  String? get outrosespecificarimpressaococoposcopica;

  String? get motivodotipodevisitazt;

  String? get opcaobiopsia;

  String? get numerodefragmentosbiopsia;

  String? get motivodenaorealizarbiopsia;

  String? get numerodepecasbiopsia;

  String? get obsacetobrancas;

  String? get image1;

  String? get image2;

  String? get image3;

  @BuiltValueField(wireName: 'QRCodeBSI')
  String? get qRCodeBSI;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(PacientesRecordBuilder builder) => builder
    ..site = ''
    ..colposcopia = ''
    ..nome = ''
    ..cpf = ''
    ..cns = 0
    ..contato = 0
    ..hospital = ''
    ..medico = ''
    ..datanascimento = ''
    ..tipdevisita = ''
    ..dresultadocitologiaprevia = ''
    ..dresultadohistologiaprevia = ''
    ..realizouaautocoletaparatestehpv = ''
    ..motivoautocoleta = ''
    ..opcaoacetobrancas = ''
    ..outrosespecificar = ''
    ..dimpressocolposcopica = ''
    ..adequabilidadezonatransf = ''
    ..djectipo2 = ''
    ..dresultadohistopatologia = ''
    ..urlimages = ''
    ..nPid = 0
    ..motivoautocoletahpv = ''
    ..acetobrancasSupEsquerdoAnt12x3hr = 0
    ..acetobrancasInfEsquerdoPost3x6hr = 0
    ..acetobrancasSupDireitoAnt9x12hr = 0
    ..acetobrancasInfDireitopost6x9hr = 0
    ..areasacetobrancasnocanal = 0
    ..motivocitologiahistopatologia = ''
    ..outrosespecificarimpressaococoposcopica = ''
    ..motivodotipodevisitazt = ''
    ..opcaobiopsia = ''
    ..numerodefragmentosbiopsia = ''
    ..motivodenaorealizarbiopsia = ''
    ..numerodepecasbiopsia = ''
    ..obsacetobrancas = ''
    ..image1 = ''
    ..image2 = ''
    ..image3 = ''
    ..qRCodeBSI = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('pacientes');

  static Stream<PacientesRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<PacientesRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  PacientesRecord._();
  factory PacientesRecord([void Function(PacientesRecordBuilder) updates]) =
      _$PacientesRecord;

  static PacientesRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createPacientesRecordData({
  String? site,
  String? colposcopia,
  DateTime? data,
  String? nome,
  String? cpf,
  int? cns,
  int? contato,
  String? hospital,
  String? medico,
  String? datanascimento,
  String? tipdevisita,
  String? dresultadocitologiaprevia,
  String? dresultadohistologiaprevia,
  String? realizouaautocoletaparatestehpv,
  String? motivoautocoleta,
  String? opcaoacetobrancas,
  String? outrosespecificar,
  String? dimpressocolposcopica,
  String? adequabilidadezonatransf,
  String? djectipo2,
  String? dresultadohistopatologia,
  String? urlimages,
  int? nPid,
  String? motivoautocoletahpv,
  int? acetobrancasSupEsquerdoAnt12x3hr,
  int? acetobrancasInfEsquerdoPost3x6hr,
  int? acetobrancasSupDireitoAnt9x12hr,
  int? acetobrancasInfDireitopost6x9hr,
  int? areasacetobrancasnocanal,
  String? motivocitologiahistopatologia,
  String? outrosespecificarimpressaococoposcopica,
  String? motivodotipodevisitazt,
  String? opcaobiopsia,
  String? numerodefragmentosbiopsia,
  String? motivodenaorealizarbiopsia,
  String? numerodepecasbiopsia,
  String? obsacetobrancas,
  String? image1,
  String? image2,
  String? image3,
  String? qRCodeBSI,
}) {
  final firestoreData = serializers.toFirestore(
    PacientesRecord.serializer,
    PacientesRecord(
      (p) => p
        ..site = site
        ..colposcopia = colposcopia
        ..data = data
        ..nome = nome
        ..cpf = cpf
        ..cns = cns
        ..contato = contato
        ..hospital = hospital
        ..medico = medico
        ..datanascimento = datanascimento
        ..tipdevisita = tipdevisita
        ..dresultadocitologiaprevia = dresultadocitologiaprevia
        ..dresultadohistologiaprevia = dresultadohistologiaprevia
        ..realizouaautocoletaparatestehpv = realizouaautocoletaparatestehpv
        ..motivoautocoleta = motivoautocoleta
        ..opcaoacetobrancas = opcaoacetobrancas
        ..outrosespecificar = outrosespecificar
        ..dimpressocolposcopica = dimpressocolposcopica
        ..adequabilidadezonatransf = adequabilidadezonatransf
        ..djectipo2 = djectipo2
        ..dresultadohistopatologia = dresultadohistopatologia
        ..urlimages = urlimages
        ..nPid = nPid
        ..motivoautocoletahpv = motivoautocoletahpv
        ..acetobrancasSupEsquerdoAnt12x3hr = acetobrancasSupEsquerdoAnt12x3hr
        ..acetobrancasInfEsquerdoPost3x6hr = acetobrancasInfEsquerdoPost3x6hr
        ..acetobrancasSupDireitoAnt9x12hr = acetobrancasSupDireitoAnt9x12hr
        ..acetobrancasInfDireitopost6x9hr = acetobrancasInfDireitopost6x9hr
        ..areasacetobrancasnocanal = areasacetobrancasnocanal
        ..motivocitologiahistopatologia = motivocitologiahistopatologia
        ..outrosespecificarimpressaococoposcopica =
            outrosespecificarimpressaococoposcopica
        ..motivodotipodevisitazt = motivodotipodevisitazt
        ..opcaobiopsia = opcaobiopsia
        ..numerodefragmentosbiopsia = numerodefragmentosbiopsia
        ..motivodenaorealizarbiopsia = motivodenaorealizarbiopsia
        ..numerodepecasbiopsia = numerodepecasbiopsia
        ..obsacetobrancas = obsacetobrancas
        ..image1 = image1
        ..image2 = image2
        ..image3 = image3
        ..qRCodeBSI = qRCodeBSI,
    ),
  );

  return firestoreData;
}
