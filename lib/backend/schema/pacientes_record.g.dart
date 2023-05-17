// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pacientes_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<PacientesRecord> _$pacientesRecordSerializer =
    new _$PacientesRecordSerializer();

class _$PacientesRecordSerializer
    implements StructuredSerializer<PacientesRecord> {
  @override
  final Iterable<Type> types = const [PacientesRecord, _$PacientesRecord];
  @override
  final String wireName = 'PacientesRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, PacientesRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.site;
    if (value != null) {
      result
        ..add('site')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.colposcopia;
    if (value != null) {
      result
        ..add('colposcopia')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.data;
    if (value != null) {
      result
        ..add('data')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.nome;
    if (value != null) {
      result
        ..add('nome')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.cpf;
    if (value != null) {
      result
        ..add('cpf')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.cns;
    if (value != null) {
      result
        ..add('cns')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.contato;
    if (value != null) {
      result
        ..add('contato')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.hospital;
    if (value != null) {
      result
        ..add('hospital')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.medico;
    if (value != null) {
      result
        ..add('medico')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.datanascimento;
    if (value != null) {
      result
        ..add('datanascimento')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.tipdevisita;
    if (value != null) {
      result
        ..add('tipdevisita')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.dresultadocitologiaprevia;
    if (value != null) {
      result
        ..add('dresultadocitologiaprevia')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.dresultadohistologiaprevia;
    if (value != null) {
      result
        ..add('dresultadohistologiaprevia')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.realizouaautocoletaparatestehpv;
    if (value != null) {
      result
        ..add('realizouaautocoletaparatestehpv')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.motivoautocoleta;
    if (value != null) {
      result
        ..add('motivoautocoleta')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.opcaoacetobrancas;
    if (value != null) {
      result
        ..add('opcaoacetobrancas')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.outrosespecificar;
    if (value != null) {
      result
        ..add('outrosespecificar')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.dimpressocolposcopica;
    if (value != null) {
      result
        ..add('dimpressocolposcopica')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.adequabilidadezonatransf;
    if (value != null) {
      result
        ..add('adequabilidadezonatransf')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.djectipo2;
    if (value != null) {
      result
        ..add('djectipo2')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.dresultadohistopatologia;
    if (value != null) {
      result
        ..add('dresultadohistopatologia')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.urlimages;
    if (value != null) {
      result
        ..add('urlimages')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.nPid;
    if (value != null) {
      result
        ..add('nPid')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.motivoautocoletahpv;
    if (value != null) {
      result
        ..add('motivoautocoletahpv')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.acetobrancasSupEsquerdoAnt12x3hr;
    if (value != null) {
      result
        ..add('AcetobrancasSupEsquerdoAnt12x3hr')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.acetobrancasInfEsquerdoPost3x6hr;
    if (value != null) {
      result
        ..add('AcetobrancasInfEsquerdoPost3x6hr')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.acetobrancasSupDireitoAnt9x12hr;
    if (value != null) {
      result
        ..add('AcetobrancasSupDireitoAnt9x12hr')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.acetobrancasInfDireitopost6x9hr;
    if (value != null) {
      result
        ..add('AcetobrancasInfDireitopost6x9hr')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.areasacetobrancasnocanal;
    if (value != null) {
      result
        ..add('areasacetobrancasnocanal')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.motivocitologiahistopatologia;
    if (value != null) {
      result
        ..add('motivocitologiahistopatologia')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.outrosespecificarimpressaococoposcopica;
    if (value != null) {
      result
        ..add('outrosespecificarimpressaococoposcopica')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.motivodotipodevisitazt;
    if (value != null) {
      result
        ..add('motivodotipodevisitazt')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.opcaobiopsia;
    if (value != null) {
      result
        ..add('opcaobiopsia')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.numerodefragmentosbiopsia;
    if (value != null) {
      result
        ..add('numerodefragmentosbiopsia')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.motivodenaorealizarbiopsia;
    if (value != null) {
      result
        ..add('motivodenaorealizarbiopsia')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.numerodepecasbiopsia;
    if (value != null) {
      result
        ..add('numerodepecasbiopsia')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.obsacetobrancas;
    if (value != null) {
      result
        ..add('obsacetobrancas')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.image1;
    if (value != null) {
      result
        ..add('image1')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.image2;
    if (value != null) {
      result
        ..add('image2')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.image3;
    if (value != null) {
      result
        ..add('image3')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.qRCodeBSI;
    if (value != null) {
      result
        ..add('QRCodeBSI')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  PacientesRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PacientesRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'site':
          result.site = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'colposcopia':
          result.colposcopia = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'data':
          result.data = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'nome':
          result.nome = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'cpf':
          result.cpf = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'cns':
          result.cns = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'contato':
          result.contato = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'hospital':
          result.hospital = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'medico':
          result.medico = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'datanascimento':
          result.datanascimento = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'tipdevisita':
          result.tipdevisita = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'dresultadocitologiaprevia':
          result.dresultadocitologiaprevia = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'dresultadohistologiaprevia':
          result.dresultadohistologiaprevia = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'realizouaautocoletaparatestehpv':
          result.realizouaautocoletaparatestehpv = serializers.deserialize(
              value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'motivoautocoleta':
          result.motivoautocoleta = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'opcaoacetobrancas':
          result.opcaoacetobrancas = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'outrosespecificar':
          result.outrosespecificar = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'dimpressocolposcopica':
          result.dimpressocolposcopica = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'adequabilidadezonatransf':
          result.adequabilidadezonatransf = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'djectipo2':
          result.djectipo2 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'dresultadohistopatologia':
          result.dresultadohistopatologia = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'urlimages':
          result.urlimages = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'nPid':
          result.nPid = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'motivoautocoletahpv':
          result.motivoautocoletahpv = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'AcetobrancasSupEsquerdoAnt12x3hr':
          result.acetobrancasSupEsquerdoAnt12x3hr = serializers
              .deserialize(value, specifiedType: const FullType(int)) as int?;
          break;
        case 'AcetobrancasInfEsquerdoPost3x6hr':
          result.acetobrancasInfEsquerdoPost3x6hr = serializers
              .deserialize(value, specifiedType: const FullType(int)) as int?;
          break;
        case 'AcetobrancasSupDireitoAnt9x12hr':
          result.acetobrancasSupDireitoAnt9x12hr = serializers
              .deserialize(value, specifiedType: const FullType(int)) as int?;
          break;
        case 'AcetobrancasInfDireitopost6x9hr':
          result.acetobrancasInfDireitopost6x9hr = serializers
              .deserialize(value, specifiedType: const FullType(int)) as int?;
          break;
        case 'areasacetobrancasnocanal':
          result.areasacetobrancasnocanal = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'motivocitologiahistopatologia':
          result.motivocitologiahistopatologia = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'outrosespecificarimpressaococoposcopica':
          result.outrosespecificarimpressaococoposcopica = serializers
                  .deserialize(value, specifiedType: const FullType(String))
              as String?;
          break;
        case 'motivodotipodevisitazt':
          result.motivodotipodevisitazt = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'opcaobiopsia':
          result.opcaobiopsia = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'numerodefragmentosbiopsia':
          result.numerodefragmentosbiopsia = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'motivodenaorealizarbiopsia':
          result.motivodenaorealizarbiopsia = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'numerodepecasbiopsia':
          result.numerodepecasbiopsia = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'obsacetobrancas':
          result.obsacetobrancas = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'image1':
          result.image1 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'image2':
          result.image2 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'image3':
          result.image3 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'QRCodeBSI':
          result.qRCodeBSI = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$PacientesRecord extends PacientesRecord {
  @override
  final String? site;
  @override
  final String? colposcopia;
  @override
  final DateTime? data;
  @override
  final String? nome;
  @override
  final String? cpf;
  @override
  final int? cns;
  @override
  final int? contato;
  @override
  final String? hospital;
  @override
  final String? medico;
  @override
  final String? datanascimento;
  @override
  final String? tipdevisita;
  @override
  final String? dresultadocitologiaprevia;
  @override
  final String? dresultadohistologiaprevia;
  @override
  final String? realizouaautocoletaparatestehpv;
  @override
  final String? motivoautocoleta;
  @override
  final String? opcaoacetobrancas;
  @override
  final String? outrosespecificar;
  @override
  final String? dimpressocolposcopica;
  @override
  final String? adequabilidadezonatransf;
  @override
  final String? djectipo2;
  @override
  final String? dresultadohistopatologia;
  @override
  final String? urlimages;
  @override
  final int? nPid;
  @override
  final String? motivoautocoletahpv;
  @override
  final int? acetobrancasSupEsquerdoAnt12x3hr;
  @override
  final int? acetobrancasInfEsquerdoPost3x6hr;
  @override
  final int? acetobrancasSupDireitoAnt9x12hr;
  @override
  final int? acetobrancasInfDireitopost6x9hr;
  @override
  final int? areasacetobrancasnocanal;
  @override
  final String? motivocitologiahistopatologia;
  @override
  final String? outrosespecificarimpressaococoposcopica;
  @override
  final String? motivodotipodevisitazt;
  @override
  final String? opcaobiopsia;
  @override
  final String? numerodefragmentosbiopsia;
  @override
  final String? motivodenaorealizarbiopsia;
  @override
  final String? numerodepecasbiopsia;
  @override
  final String? obsacetobrancas;
  @override
  final String? image1;
  @override
  final String? image2;
  @override
  final String? image3;
  @override
  final String? qRCodeBSI;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$PacientesRecord([void Function(PacientesRecordBuilder)? updates]) =>
      (new PacientesRecordBuilder()..update(updates))._build();

  _$PacientesRecord._(
      {this.site,
      this.colposcopia,
      this.data,
      this.nome,
      this.cpf,
      this.cns,
      this.contato,
      this.hospital,
      this.medico,
      this.datanascimento,
      this.tipdevisita,
      this.dresultadocitologiaprevia,
      this.dresultadohistologiaprevia,
      this.realizouaautocoletaparatestehpv,
      this.motivoautocoleta,
      this.opcaoacetobrancas,
      this.outrosespecificar,
      this.dimpressocolposcopica,
      this.adequabilidadezonatransf,
      this.djectipo2,
      this.dresultadohistopatologia,
      this.urlimages,
      this.nPid,
      this.motivoautocoletahpv,
      this.acetobrancasSupEsquerdoAnt12x3hr,
      this.acetobrancasInfEsquerdoPost3x6hr,
      this.acetobrancasSupDireitoAnt9x12hr,
      this.acetobrancasInfDireitopost6x9hr,
      this.areasacetobrancasnocanal,
      this.motivocitologiahistopatologia,
      this.outrosespecificarimpressaococoposcopica,
      this.motivodotipodevisitazt,
      this.opcaobiopsia,
      this.numerodefragmentosbiopsia,
      this.motivodenaorealizarbiopsia,
      this.numerodepecasbiopsia,
      this.obsacetobrancas,
      this.image1,
      this.image2,
      this.image3,
      this.qRCodeBSI,
      this.ffRef})
      : super._();

  @override
  PacientesRecord rebuild(void Function(PacientesRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PacientesRecordBuilder toBuilder() =>
      new PacientesRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PacientesRecord &&
        site == other.site &&
        colposcopia == other.colposcopia &&
        data == other.data &&
        nome == other.nome &&
        cpf == other.cpf &&
        cns == other.cns &&
        contato == other.contato &&
        hospital == other.hospital &&
        medico == other.medico &&
        datanascimento == other.datanascimento &&
        tipdevisita == other.tipdevisita &&
        dresultadocitologiaprevia == other.dresultadocitologiaprevia &&
        dresultadohistologiaprevia == other.dresultadohistologiaprevia &&
        realizouaautocoletaparatestehpv ==
            other.realizouaautocoletaparatestehpv &&
        motivoautocoleta == other.motivoautocoleta &&
        opcaoacetobrancas == other.opcaoacetobrancas &&
        outrosespecificar == other.outrosespecificar &&
        dimpressocolposcopica == other.dimpressocolposcopica &&
        adequabilidadezonatransf == other.adequabilidadezonatransf &&
        djectipo2 == other.djectipo2 &&
        dresultadohistopatologia == other.dresultadohistopatologia &&
        urlimages == other.urlimages &&
        nPid == other.nPid &&
        motivoautocoletahpv == other.motivoautocoletahpv &&
        acetobrancasSupEsquerdoAnt12x3hr ==
            other.acetobrancasSupEsquerdoAnt12x3hr &&
        acetobrancasInfEsquerdoPost3x6hr ==
            other.acetobrancasInfEsquerdoPost3x6hr &&
        acetobrancasSupDireitoAnt9x12hr ==
            other.acetobrancasSupDireitoAnt9x12hr &&
        acetobrancasInfDireitopost6x9hr ==
            other.acetobrancasInfDireitopost6x9hr &&
        areasacetobrancasnocanal == other.areasacetobrancasnocanal &&
        motivocitologiahistopatologia == other.motivocitologiahistopatologia &&
        outrosespecificarimpressaococoposcopica ==
            other.outrosespecificarimpressaococoposcopica &&
        motivodotipodevisitazt == other.motivodotipodevisitazt &&
        opcaobiopsia == other.opcaobiopsia &&
        numerodefragmentosbiopsia == other.numerodefragmentosbiopsia &&
        motivodenaorealizarbiopsia == other.motivodenaorealizarbiopsia &&
        numerodepecasbiopsia == other.numerodepecasbiopsia &&
        obsacetobrancas == other.obsacetobrancas &&
        image1 == other.image1 &&
        image2 == other.image2 &&
        image3 == other.image3 &&
        qRCodeBSI == other.qRCodeBSI &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc(
                                                    $jc(
                                                        $jc(
                                                            $jc(
                                                                $jc(
                                                                    $jc(
                                                                        $jc(
                                                                            $jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc(0, site.hashCode), colposcopia.hashCode), data.hashCode), nome.hashCode), cpf.hashCode), cns.hashCode), contato.hashCode), hospital.hashCode), medico.hashCode), datanascimento.hashCode), tipdevisita.hashCode), dresultadocitologiaprevia.hashCode), dresultadohistologiaprevia.hashCode), realizouaautocoletaparatestehpv.hashCode), motivoautocoleta.hashCode), opcaoacetobrancas.hashCode), outrosespecificar.hashCode), dimpressocolposcopica.hashCode), adequabilidadezonatransf.hashCode), djectipo2.hashCode), dresultadohistopatologia.hashCode), urlimages.hashCode), nPid.hashCode),
                                                                                motivoautocoletahpv.hashCode),
                                                                            acetobrancasSupEsquerdoAnt12x3hr.hashCode),
                                                                        acetobrancasInfEsquerdoPost3x6hr.hashCode),
                                                                    acetobrancasSupDireitoAnt9x12hr.hashCode),
                                                                acetobrancasInfDireitopost6x9hr.hashCode),
                                                            areasacetobrancasnocanal.hashCode),
                                                        motivocitologiahistopatologia.hashCode),
                                                    outrosespecificarimpressaococoposcopica.hashCode),
                                                motivodotipodevisitazt.hashCode),
                                            opcaobiopsia.hashCode),
                                        numerodefragmentosbiopsia.hashCode),
                                    motivodenaorealizarbiopsia.hashCode),
                                numerodepecasbiopsia.hashCode),
                            obsacetobrancas.hashCode),
                        image1.hashCode),
                    image2.hashCode),
                image3.hashCode),
            qRCodeBSI.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PacientesRecord')
          ..add('site', site)
          ..add('colposcopia', colposcopia)
          ..add('data', data)
          ..add('nome', nome)
          ..add('cpf', cpf)
          ..add('cns', cns)
          ..add('contato', contato)
          ..add('hospital', hospital)
          ..add('medico', medico)
          ..add('datanascimento', datanascimento)
          ..add('tipdevisita', tipdevisita)
          ..add('dresultadocitologiaprevia', dresultadocitologiaprevia)
          ..add('dresultadohistologiaprevia', dresultadohistologiaprevia)
          ..add('realizouaautocoletaparatestehpv',
              realizouaautocoletaparatestehpv)
          ..add('motivoautocoleta', motivoautocoleta)
          ..add('opcaoacetobrancas', opcaoacetobrancas)
          ..add('outrosespecificar', outrosespecificar)
          ..add('dimpressocolposcopica', dimpressocolposcopica)
          ..add('adequabilidadezonatransf', adequabilidadezonatransf)
          ..add('djectipo2', djectipo2)
          ..add('dresultadohistopatologia', dresultadohistopatologia)
          ..add('urlimages', urlimages)
          ..add('nPid', nPid)
          ..add('motivoautocoletahpv', motivoautocoletahpv)
          ..add('acetobrancasSupEsquerdoAnt12x3hr',
              acetobrancasSupEsquerdoAnt12x3hr)
          ..add('acetobrancasInfEsquerdoPost3x6hr',
              acetobrancasInfEsquerdoPost3x6hr)
          ..add('acetobrancasSupDireitoAnt9x12hr',
              acetobrancasSupDireitoAnt9x12hr)
          ..add('acetobrancasInfDireitopost6x9hr',
              acetobrancasInfDireitopost6x9hr)
          ..add('areasacetobrancasnocanal', areasacetobrancasnocanal)
          ..add('motivocitologiahistopatologia', motivocitologiahistopatologia)
          ..add('outrosespecificarimpressaococoposcopica',
              outrosespecificarimpressaococoposcopica)
          ..add('motivodotipodevisitazt', motivodotipodevisitazt)
          ..add('opcaobiopsia', opcaobiopsia)
          ..add('numerodefragmentosbiopsia', numerodefragmentosbiopsia)
          ..add('motivodenaorealizarbiopsia', motivodenaorealizarbiopsia)
          ..add('numerodepecasbiopsia', numerodepecasbiopsia)
          ..add('obsacetobrancas', obsacetobrancas)
          ..add('image1', image1)
          ..add('image2', image2)
          ..add('image3', image3)
          ..add('qRCodeBSI', qRCodeBSI)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class PacientesRecordBuilder
    implements Builder<PacientesRecord, PacientesRecordBuilder> {
  _$PacientesRecord? _$v;

  String? _site;
  String? get site => _$this._site;
  set site(String? site) => _$this._site = site;

  String? _colposcopia;
  String? get colposcopia => _$this._colposcopia;
  set colposcopia(String? colposcopia) => _$this._colposcopia = colposcopia;

  DateTime? _data;
  DateTime? get data => _$this._data;
  set data(DateTime? data) => _$this._data = data;

  String? _nome;
  String? get nome => _$this._nome;
  set nome(String? nome) => _$this._nome = nome;

  String? _cpf;
  String? get cpf => _$this._cpf;
  set cpf(String? cpf) => _$this._cpf = cpf;

  int? _cns;
  int? get cns => _$this._cns;
  set cns(int? cns) => _$this._cns = cns;

  int? _contato;
  int? get contato => _$this._contato;
  set contato(int? contato) => _$this._contato = contato;

  String? _hospital;
  String? get hospital => _$this._hospital;
  set hospital(String? hospital) => _$this._hospital = hospital;

  String? _medico;
  String? get medico => _$this._medico;
  set medico(String? medico) => _$this._medico = medico;

  String? _datanascimento;
  String? get datanascimento => _$this._datanascimento;
  set datanascimento(String? datanascimento) =>
      _$this._datanascimento = datanascimento;

  String? _tipdevisita;
  String? get tipdevisita => _$this._tipdevisita;
  set tipdevisita(String? tipdevisita) => _$this._tipdevisita = tipdevisita;

  String? _dresultadocitologiaprevia;
  String? get dresultadocitologiaprevia => _$this._dresultadocitologiaprevia;
  set dresultadocitologiaprevia(String? dresultadocitologiaprevia) =>
      _$this._dresultadocitologiaprevia = dresultadocitologiaprevia;

  String? _dresultadohistologiaprevia;
  String? get dresultadohistologiaprevia => _$this._dresultadohistologiaprevia;
  set dresultadohistologiaprevia(String? dresultadohistologiaprevia) =>
      _$this._dresultadohistologiaprevia = dresultadohistologiaprevia;

  String? _realizouaautocoletaparatestehpv;
  String? get realizouaautocoletaparatestehpv =>
      _$this._realizouaautocoletaparatestehpv;
  set realizouaautocoletaparatestehpv(
          String? realizouaautocoletaparatestehpv) =>
      _$this._realizouaautocoletaparatestehpv = realizouaautocoletaparatestehpv;

  String? _motivoautocoleta;
  String? get motivoautocoleta => _$this._motivoautocoleta;
  set motivoautocoleta(String? motivoautocoleta) =>
      _$this._motivoautocoleta = motivoautocoleta;

  String? _opcaoacetobrancas;
  String? get opcaoacetobrancas => _$this._opcaoacetobrancas;
  set opcaoacetobrancas(String? opcaoacetobrancas) =>
      _$this._opcaoacetobrancas = opcaoacetobrancas;

  String? _outrosespecificar;
  String? get outrosespecificar => _$this._outrosespecificar;
  set outrosespecificar(String? outrosespecificar) =>
      _$this._outrosespecificar = outrosespecificar;

  String? _dimpressocolposcopica;
  String? get dimpressocolposcopica => _$this._dimpressocolposcopica;
  set dimpressocolposcopica(String? dimpressocolposcopica) =>
      _$this._dimpressocolposcopica = dimpressocolposcopica;

  String? _adequabilidadezonatransf;
  String? get adequabilidadezonatransf => _$this._adequabilidadezonatransf;
  set adequabilidadezonatransf(String? adequabilidadezonatransf) =>
      _$this._adequabilidadezonatransf = adequabilidadezonatransf;

  String? _djectipo2;
  String? get djectipo2 => _$this._djectipo2;
  set djectipo2(String? djectipo2) => _$this._djectipo2 = djectipo2;

  String? _dresultadohistopatologia;
  String? get dresultadohistopatologia => _$this._dresultadohistopatologia;
  set dresultadohistopatologia(String? dresultadohistopatologia) =>
      _$this._dresultadohistopatologia = dresultadohistopatologia;

  String? _urlimages;
  String? get urlimages => _$this._urlimages;
  set urlimages(String? urlimages) => _$this._urlimages = urlimages;

  int? _nPid;
  int? get nPid => _$this._nPid;
  set nPid(int? nPid) => _$this._nPid = nPid;

  String? _motivoautocoletahpv;
  String? get motivoautocoletahpv => _$this._motivoautocoletahpv;
  set motivoautocoletahpv(String? motivoautocoletahpv) =>
      _$this._motivoautocoletahpv = motivoautocoletahpv;

  int? _acetobrancasSupEsquerdoAnt12x3hr;
  int? get acetobrancasSupEsquerdoAnt12x3hr =>
      _$this._acetobrancasSupEsquerdoAnt12x3hr;
  set acetobrancasSupEsquerdoAnt12x3hr(int? acetobrancasSupEsquerdoAnt12x3hr) =>
      _$this._acetobrancasSupEsquerdoAnt12x3hr =
          acetobrancasSupEsquerdoAnt12x3hr;

  int? _acetobrancasInfEsquerdoPost3x6hr;
  int? get acetobrancasInfEsquerdoPost3x6hr =>
      _$this._acetobrancasInfEsquerdoPost3x6hr;
  set acetobrancasInfEsquerdoPost3x6hr(int? acetobrancasInfEsquerdoPost3x6hr) =>
      _$this._acetobrancasInfEsquerdoPost3x6hr =
          acetobrancasInfEsquerdoPost3x6hr;

  int? _acetobrancasSupDireitoAnt9x12hr;
  int? get acetobrancasSupDireitoAnt9x12hr =>
      _$this._acetobrancasSupDireitoAnt9x12hr;
  set acetobrancasSupDireitoAnt9x12hr(int? acetobrancasSupDireitoAnt9x12hr) =>
      _$this._acetobrancasSupDireitoAnt9x12hr = acetobrancasSupDireitoAnt9x12hr;

  int? _acetobrancasInfDireitopost6x9hr;
  int? get acetobrancasInfDireitopost6x9hr =>
      _$this._acetobrancasInfDireitopost6x9hr;
  set acetobrancasInfDireitopost6x9hr(int? acetobrancasInfDireitopost6x9hr) =>
      _$this._acetobrancasInfDireitopost6x9hr = acetobrancasInfDireitopost6x9hr;

  int? _areasacetobrancasnocanal;
  int? get areasacetobrancasnocanal => _$this._areasacetobrancasnocanal;
  set areasacetobrancasnocanal(int? areasacetobrancasnocanal) =>
      _$this._areasacetobrancasnocanal = areasacetobrancasnocanal;

  String? _motivocitologiahistopatologia;
  String? get motivocitologiahistopatologia =>
      _$this._motivocitologiahistopatologia;
  set motivocitologiahistopatologia(String? motivocitologiahistopatologia) =>
      _$this._motivocitologiahistopatologia = motivocitologiahistopatologia;

  String? _outrosespecificarimpressaococoposcopica;
  String? get outrosespecificarimpressaococoposcopica =>
      _$this._outrosespecificarimpressaococoposcopica;
  set outrosespecificarimpressaococoposcopica(
          String? outrosespecificarimpressaococoposcopica) =>
      _$this._outrosespecificarimpressaococoposcopica =
          outrosespecificarimpressaococoposcopica;

  String? _motivodotipodevisitazt;
  String? get motivodotipodevisitazt => _$this._motivodotipodevisitazt;
  set motivodotipodevisitazt(String? motivodotipodevisitazt) =>
      _$this._motivodotipodevisitazt = motivodotipodevisitazt;

  String? _opcaobiopsia;
  String? get opcaobiopsia => _$this._opcaobiopsia;
  set opcaobiopsia(String? opcaobiopsia) => _$this._opcaobiopsia = opcaobiopsia;

  String? _numerodefragmentosbiopsia;
  String? get numerodefragmentosbiopsia => _$this._numerodefragmentosbiopsia;
  set numerodefragmentosbiopsia(String? numerodefragmentosbiopsia) =>
      _$this._numerodefragmentosbiopsia = numerodefragmentosbiopsia;

  String? _motivodenaorealizarbiopsia;
  String? get motivodenaorealizarbiopsia => _$this._motivodenaorealizarbiopsia;
  set motivodenaorealizarbiopsia(String? motivodenaorealizarbiopsia) =>
      _$this._motivodenaorealizarbiopsia = motivodenaorealizarbiopsia;

  String? _numerodepecasbiopsia;
  String? get numerodepecasbiopsia => _$this._numerodepecasbiopsia;
  set numerodepecasbiopsia(String? numerodepecasbiopsia) =>
      _$this._numerodepecasbiopsia = numerodepecasbiopsia;

  String? _obsacetobrancas;
  String? get obsacetobrancas => _$this._obsacetobrancas;
  set obsacetobrancas(String? obsacetobrancas) =>
      _$this._obsacetobrancas = obsacetobrancas;

  String? _image1;
  String? get image1 => _$this._image1;
  set image1(String? image1) => _$this._image1 = image1;

  String? _image2;
  String? get image2 => _$this._image2;
  set image2(String? image2) => _$this._image2 = image2;

  String? _image3;
  String? get image3 => _$this._image3;
  set image3(String? image3) => _$this._image3 = image3;

  String? _qRCodeBSI;
  String? get qRCodeBSI => _$this._qRCodeBSI;
  set qRCodeBSI(String? qRCodeBSI) => _$this._qRCodeBSI = qRCodeBSI;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  PacientesRecordBuilder() {
    PacientesRecord._initializeBuilder(this);
  }

  PacientesRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _site = $v.site;
      _colposcopia = $v.colposcopia;
      _data = $v.data;
      _nome = $v.nome;
      _cpf = $v.cpf;
      _cns = $v.cns;
      _contato = $v.contato;
      _hospital = $v.hospital;
      _medico = $v.medico;
      _datanascimento = $v.datanascimento;
      _tipdevisita = $v.tipdevisita;
      _dresultadocitologiaprevia = $v.dresultadocitologiaprevia;
      _dresultadohistologiaprevia = $v.dresultadohistologiaprevia;
      _realizouaautocoletaparatestehpv = $v.realizouaautocoletaparatestehpv;
      _motivoautocoleta = $v.motivoautocoleta;
      _opcaoacetobrancas = $v.opcaoacetobrancas;
      _outrosespecificar = $v.outrosespecificar;
      _dimpressocolposcopica = $v.dimpressocolposcopica;
      _adequabilidadezonatransf = $v.adequabilidadezonatransf;
      _djectipo2 = $v.djectipo2;
      _dresultadohistopatologia = $v.dresultadohistopatologia;
      _urlimages = $v.urlimages;
      _nPid = $v.nPid;
      _motivoautocoletahpv = $v.motivoautocoletahpv;
      _acetobrancasSupEsquerdoAnt12x3hr = $v.acetobrancasSupEsquerdoAnt12x3hr;
      _acetobrancasInfEsquerdoPost3x6hr = $v.acetobrancasInfEsquerdoPost3x6hr;
      _acetobrancasSupDireitoAnt9x12hr = $v.acetobrancasSupDireitoAnt9x12hr;
      _acetobrancasInfDireitopost6x9hr = $v.acetobrancasInfDireitopost6x9hr;
      _areasacetobrancasnocanal = $v.areasacetobrancasnocanal;
      _motivocitologiahistopatologia = $v.motivocitologiahistopatologia;
      _outrosespecificarimpressaococoposcopica =
          $v.outrosespecificarimpressaococoposcopica;
      _motivodotipodevisitazt = $v.motivodotipodevisitazt;
      _opcaobiopsia = $v.opcaobiopsia;
      _numerodefragmentosbiopsia = $v.numerodefragmentosbiopsia;
      _motivodenaorealizarbiopsia = $v.motivodenaorealizarbiopsia;
      _numerodepecasbiopsia = $v.numerodepecasbiopsia;
      _obsacetobrancas = $v.obsacetobrancas;
      _image1 = $v.image1;
      _image2 = $v.image2;
      _image3 = $v.image3;
      _qRCodeBSI = $v.qRCodeBSI;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PacientesRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PacientesRecord;
  }

  @override
  void update(void Function(PacientesRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PacientesRecord build() => _build();

  _$PacientesRecord _build() {
    final _$result = _$v ??
        new _$PacientesRecord._(
            site: site,
            colposcopia: colposcopia,
            data: data,
            nome: nome,
            cpf: cpf,
            cns: cns,
            contato: contato,
            hospital: hospital,
            medico: medico,
            datanascimento: datanascimento,
            tipdevisita: tipdevisita,
            dresultadocitologiaprevia: dresultadocitologiaprevia,
            dresultadohistologiaprevia: dresultadohistologiaprevia,
            realizouaautocoletaparatestehpv: realizouaautocoletaparatestehpv,
            motivoautocoleta: motivoautocoleta,
            opcaoacetobrancas: opcaoacetobrancas,
            outrosespecificar: outrosespecificar,
            dimpressocolposcopica: dimpressocolposcopica,
            adequabilidadezonatransf: adequabilidadezonatransf,
            djectipo2: djectipo2,
            dresultadohistopatologia: dresultadohistopatologia,
            urlimages: urlimages,
            nPid: nPid,
            motivoautocoletahpv: motivoautocoletahpv,
            acetobrancasSupEsquerdoAnt12x3hr: acetobrancasSupEsquerdoAnt12x3hr,
            acetobrancasInfEsquerdoPost3x6hr: acetobrancasInfEsquerdoPost3x6hr,
            acetobrancasSupDireitoAnt9x12hr: acetobrancasSupDireitoAnt9x12hr,
            acetobrancasInfDireitopost6x9hr: acetobrancasInfDireitopost6x9hr,
            areasacetobrancasnocanal: areasacetobrancasnocanal,
            motivocitologiahistopatologia: motivocitologiahistopatologia,
            outrosespecificarimpressaococoposcopica:
                outrosespecificarimpressaococoposcopica,
            motivodotipodevisitazt: motivodotipodevisitazt,
            opcaobiopsia: opcaobiopsia,
            numerodefragmentosbiopsia: numerodefragmentosbiopsia,
            motivodenaorealizarbiopsia: motivodenaorealizarbiopsia,
            numerodepecasbiopsia: numerodepecasbiopsia,
            obsacetobrancas: obsacetobrancas,
            image1: image1,
            image2: image2,
            image3: image3,
            qRCodeBSI: qRCodeBSI,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
