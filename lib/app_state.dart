import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/lat_lng.dart';

class FFAppState extends ChangeNotifier {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal() {
    initializePersistedState();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _data = prefs.containsKey('ff_data')
        ? DateTime.fromMillisecondsSinceEpoch(prefs.getInt('ff_data')!)
        : null;
    _colposcopistahub =
        prefs.getStringList('ff_colposcopistahub') ?? _colposcopistahub;
    _colposcopistahmib =
        prefs.getStringList('ff_colposcopistahmib') ?? _colposcopistahmib;
    _colposcopistahrc =
        prefs.getStringList('ff_colposcopistahrc') ?? _colposcopistahrc;
    _colposcopistafcecon =
        prefs.getStringList('ff_colposcopistafcecon') ?? _colposcopistafcecon;
    _colposcopistapolgilbertomestrinho =
        prefs.getStringList('ff_colposcopistapolgilbertomestrinho') ??
            _colposcopistapolgilbertomestrinho;
    _colposcopistapolcastelobranco =
        prefs.getStringList('ff_colposcopistapolcastelobranco') ??
            _colposcopistapolcastelobranco;
    _Lista = prefs.getStringList('ff_Lista') ?? _Lista;
    _resultadocitologiaprevia =
        prefs.getStringList('ff_resultadocitologiaprevia') ??
            _resultadocitologiaprevia;
    _resultadohistopatologiaprevia =
        prefs.getStringList('ff_resultadohistopatologiaprevia') ??
            _resultadohistopatologiaprevia;
    _impressocolposcopica =
        prefs.getStringList('ff_impressocolposcopica') ?? _impressocolposcopica;
    _jectipo2 = prefs.getStringList('ff_jectipo2') ?? _jectipo2;
    _motivoinsatisfatorio =
        prefs.getStringList('ff_motivoinsatisfatorio') ?? _motivoinsatisfatorio;
    _nome = prefs.getString('ff_nome') ?? _nome;
    _cpf = prefs.getInt('ff_cpf') ?? _cpf;
    _cns = prefs.getInt('ff_cns') ?? _cns;
    _contato = prefs.getInt('ff_contato') ?? _contato;
    _hospital = prefs.getString('ff_hospital') ?? _hospital;
    _medico = prefs.getString('ff_medico') ?? _medico;
    _datanascimento = prefs.getString('ff_datanascimento') ?? _datanascimento;
    _tipodevisita = prefs.getString('ff_tipodevisita') ?? _tipodevisita;
    _dresultadocitologiaprevia =
        prefs.getString('ff_dresultadocitologiaprevia') ??
            _dresultadocitologiaprevia;
    _dresultadohistologiaprevia =
        prefs.getString('ff_dresultadohistologiaprevia') ??
            _dresultadohistologiaprevia;
    _realizouaautocoletaparatestehpv =
        prefs.getString('ff_realizouaautocoletaparatestehpv') ??
            _realizouaautocoletaparatestehpv;
    _motivoautocoleta =
        prefs.getString('ff_motivoautocoleta') ?? _motivoautocoleta;
    _opcaoacetobrancas =
        prefs.getString('ff_opcaoacetobrancas') ?? _opcaoacetobrancas;
    _outrosespecificar =
        prefs.getString('ff_outrosespecificar') ?? _outrosespecificar;
    _dimpressocolposcopica =
        prefs.getString('ff_dimpressocolposcopica') ?? _dimpressocolposcopica;
    _adequabilidadeezonatransf =
        prefs.getString('ff_adequabilidadeezonatransf') ??
            _adequabilidadeezonatransf;
    _djectipo2 = prefs.getString('ff_djectipo2') ?? _djectipo2;
    _dresultadohistopatologia =
        prefs.getString('ff_dresultadohistopatologia') ??
            _dresultadohistopatologia;
    _motivoautocoletahpv =
        prefs.getString('ff_motivoautocoletahpv') ?? _motivoautocoletahpv;
    _AcetobranasSupEsquerdoAnt12x3hr =
        prefs.getInt('ff_AcetobranasSupEsquerdoAnt12x3hr') ??
            _AcetobranasSupEsquerdoAnt12x3hr;
    _AcetobranasInfEsquerdoPot3x6hr =
        prefs.getInt('ff_AcetobranasInfEsquerdoPot3x6hr') ??
            _AcetobranasInfEsquerdoPot3x6hr;
    _AcetobranasSupDireitoAnt9x12hr =
        prefs.getInt('ff_AcetobranasSupDireitoAnt9x12hr') ??
            _AcetobranasSupDireitoAnt9x12hr;
    _AcetobranasInfDireitoPost6x9hr =
        prefs.getInt('ff_AcetobranasInfDireitoPost6x9hr') ??
            _AcetobranasInfDireitoPost6x9hr;
    _areasacetobrancasnocanal = prefs.getInt('ff_areasacetobrancasnocanal') ??
        _areasacetobrancasnocanal;
    _obsacetobrancas =
        prefs.getString('ff_obsacetobrancas') ?? _obsacetobrancas;
    _outrosacetobrancas =
        prefs.getInt('ff_outrosacetobrancas') ?? _outrosacetobrancas;
    _motivocitologiahistopatologia =
        prefs.getString('ff_motivocitologiahistopatologia') ??
            _motivocitologiahistopatologia;
    _outrosespecificarimpressaococolposcopica =
        prefs.getString('ff_outrosespecificarimpressaococolposcopica') ??
            _outrosespecificarimpressaococolposcopica;
    _motivodotipodevisitazt =
        prefs.getString('ff_motivodotipodevisitazt') ?? _motivodotipodevisitazt;
    _opcaobiopsia = prefs.getString('ff_opcaobiopsia') ?? _opcaobiopsia;
    _numerodefragmentosbiopsia =
        prefs.getString('ff_numerodefragmentosbiopsia') ??
            _numerodefragmentosbiopsia;
    _motivodenaorealizarbiopsia =
        prefs.getString('ff_motivodenaorealizarbiopsia') ??
            _motivodenaorealizarbiopsia;
    _numerodepecasbiopsia =
        prefs.getString('ff_numerodepecasbiopsia') ?? _numerodepecasbiopsia;
    _img1 = prefs.getString('ff_img1') ?? _img1;
    _img2 = prefs.getString('ff_img2') ?? _img2;
    _NomeLista = prefs.getStringList('ff_NomeLista') ?? _NomeLista;
    _DataNascimentoLista =
        prefs.getStringList('ff_DataNascimentoLista') ?? _DataNascimentoLista;
    _CpfLista = prefs.getStringList('ff_CpfLista') ?? _CpfLista;
    _CnsLista = prefs.getStringList('ff_CnsLista') ?? _CnsLista;
    _ContatoLista = prefs.getStringList('ff_ContatoLista') ?? _ContatoLista;
    _BSIQRCode = prefs.getString('ff_BSIQRCode') ?? _BSIQRCode;
    _localSite = prefs.getStringList('ff_localSite') ?? _localSite;
    _localColposcopista =
        prefs.getStringList('ff_localColposcopista') ?? _localColposcopista;
    _localNome = prefs.getStringList('ff_localNome') ?? _localNome;
    _localCPF = prefs.getStringList('ff_localCPF')?.map(int.parse).toList() ??
        _localCPF;
    _localCNS = prefs.getStringList('ff_localCNS')?.map(int.parse).toList() ??
        _localCNS;
    _localContato =
        prefs.getStringList('ff_localContato')?.map(int.parse).toList() ??
            _localContato;
    _localDataNascimento =
        prefs.getStringList('ff_localDataNascimento') ?? _localDataNascimento;
    _site = prefs.getString('ff_site') ?? _site;
    _colposcopista = prefs.getString('ff_colposcopista') ?? _colposcopista;
    _localImagem1 = prefs.getStringList('ff_localImagem1') ?? _localImagem1;
    _urlImages = prefs.getStringList('ff_urlImages') ?? _urlImages;
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  DateTime? _data = DateTime.fromMillisecondsSinceEpoch(1674857460000);
  DateTime? get data => _data;
  set data(DateTime? _value) {
    _data = _value;
    _value != null
        ? prefs.setInt('ff_data', _value.millisecondsSinceEpoch)
        : prefs.remove('ff_data');
  }

  List<String> _colposcopistahub = ['Dra. Ceres Resende', 'Dra. Mariana Anauê'];
  List<String> get colposcopistahub => _colposcopistahub;
  set colposcopistahub(List<String> _value) {
    _colposcopistahub = _value;
    prefs.setStringList('ff_colposcopistahub', _value);
  }

  void addToColposcopistahub(String _value) {
    _colposcopistahub.add(_value);
    prefs.setStringList('ff_colposcopistahub', _colposcopistahub);
  }

  void removeFromColposcopistahub(String _value) {
    _colposcopistahub.remove(_value);
    prefs.setStringList('ff_colposcopistahub', _colposcopistahub);
  }

  void removeAtIndexFromColposcopistahub(int _index) {
    _colposcopistahub.removeAt(_index);
    prefs.setStringList('ff_colposcopistahub', _colposcopistahub);
  }

  List<String> _colposcopistahmib = [
    'Dra. Isabella Paolilo',
    'Dra. Cristiane Henriques'
  ];
  List<String> get colposcopistahmib => _colposcopistahmib;
  set colposcopistahmib(List<String> _value) {
    _colposcopistahmib = _value;
    prefs.setStringList('ff_colposcopistahmib', _value);
  }

  void addToColposcopistahmib(String _value) {
    _colposcopistahmib.add(_value);
    prefs.setStringList('ff_colposcopistahmib', _colposcopistahmib);
  }

  void removeFromColposcopistahmib(String _value) {
    _colposcopistahmib.remove(_value);
    prefs.setStringList('ff_colposcopistahmib', _colposcopistahmib);
  }

  void removeAtIndexFromColposcopistahmib(int _index) {
    _colposcopistahmib.removeAt(_index);
    prefs.setStringList('ff_colposcopistahmib', _colposcopistahmib);
  }

  List<String> _colposcopistahrc = [
    'Dra. Sádia Martins',
    'Dr. Rocha',
    'Dr. Metódio Ribas'
  ];
  List<String> get colposcopistahrc => _colposcopistahrc;
  set colposcopistahrc(List<String> _value) {
    _colposcopistahrc = _value;
    prefs.setStringList('ff_colposcopistahrc', _value);
  }

  void addToColposcopistahrc(String _value) {
    _colposcopistahrc.add(_value);
    prefs.setStringList('ff_colposcopistahrc', _colposcopistahrc);
  }

  void removeFromColposcopistahrc(String _value) {
    _colposcopistahrc.remove(_value);
    prefs.setStringList('ff_colposcopistahrc', _colposcopistahrc);
  }

  void removeAtIndexFromColposcopistahrc(int _index) {
    _colposcopistahrc.removeAt(_index);
    prefs.setStringList('ff_colposcopistahrc', _colposcopistahrc);
  }

  List<String> _colposcopistafcecon = [
    'Dra. Zeliene',
    'Dra. Flávia',
    'Dr. Ejandre'
  ];
  List<String> get colposcopistafcecon => _colposcopistafcecon;
  set colposcopistafcecon(List<String> _value) {
    _colposcopistafcecon = _value;
    prefs.setStringList('ff_colposcopistafcecon', _value);
  }

  void addToColposcopistafcecon(String _value) {
    _colposcopistafcecon.add(_value);
    prefs.setStringList('ff_colposcopistafcecon', _colposcopistafcecon);
  }

  void removeFromColposcopistafcecon(String _value) {
    _colposcopistafcecon.remove(_value);
    prefs.setStringList('ff_colposcopistafcecon', _colposcopistafcecon);
  }

  void removeAtIndexFromColposcopistafcecon(int _index) {
    _colposcopistafcecon.removeAt(_index);
    prefs.setStringList('ff_colposcopistafcecon', _colposcopistafcecon);
  }

  List<String> _colposcopistapolgilbertomestrinho = [
    'Dra. Heliamara',
    'Dr. João Carlos'
  ];
  List<String> get colposcopistapolgilbertomestrinho =>
      _colposcopistapolgilbertomestrinho;
  set colposcopistapolgilbertomestrinho(List<String> _value) {
    _colposcopistapolgilbertomestrinho = _value;
    prefs.setStringList('ff_colposcopistapolgilbertomestrinho', _value);
  }

  void addToColposcopistapolgilbertomestrinho(String _value) {
    _colposcopistapolgilbertomestrinho.add(_value);
    prefs.setStringList('ff_colposcopistapolgilbertomestrinho',
        _colposcopistapolgilbertomestrinho);
  }

  void removeFromColposcopistapolgilbertomestrinho(String _value) {
    _colposcopistapolgilbertomestrinho.remove(_value);
    prefs.setStringList('ff_colposcopistapolgilbertomestrinho',
        _colposcopistapolgilbertomestrinho);
  }

  void removeAtIndexFromColposcopistapolgilbertomestrinho(int _index) {
    _colposcopistapolgilbertomestrinho.removeAt(_index);
    prefs.setStringList('ff_colposcopistapolgilbertomestrinho',
        _colposcopistapolgilbertomestrinho);
  }

  List<String> _colposcopistapolcastelobranco = ['Dra. Gabriela Ishida'];
  List<String> get colposcopistapolcastelobranco =>
      _colposcopistapolcastelobranco;
  set colposcopistapolcastelobranco(List<String> _value) {
    _colposcopistapolcastelobranco = _value;
    prefs.setStringList('ff_colposcopistapolcastelobranco', _value);
  }

  void addToColposcopistapolcastelobranco(String _value) {
    _colposcopistapolcastelobranco.add(_value);
    prefs.setStringList(
        'ff_colposcopistapolcastelobranco', _colposcopistapolcastelobranco);
  }

  void removeFromColposcopistapolcastelobranco(String _value) {
    _colposcopistapolcastelobranco.remove(_value);
    prefs.setStringList(
        'ff_colposcopistapolcastelobranco', _colposcopistapolcastelobranco);
  }

  void removeAtIndexFromColposcopistapolcastelobranco(int _index) {
    _colposcopistapolcastelobranco.removeAt(_index);
    prefs.setStringList(
        'ff_colposcopistapolcastelobranco', _colposcopistapolcastelobranco);
  }

  List<String> _Lista = ['Vazio'];
  List<String> get Lista => _Lista;
  set Lista(List<String> _value) {
    _Lista = _value;
    prefs.setStringList('ff_Lista', _value);
  }

  void addToLista(String _value) {
    _Lista.add(_value);
    prefs.setStringList('ff_Lista', _Lista);
  }

  void removeFromLista(String _value) {
    _Lista.remove(_value);
    prefs.setStringList('ff_Lista', _Lista);
  }

  void removeAtIndexFromLista(int _index) {
    _Lista.removeAt(_index);
    prefs.setStringList('ff_Lista', _Lista);
  }

  List<String> _resultadocitologiaprevia = [
    'Atipias Escamosas: Possivelmente Não Neoplásicas (ASC-US)',
    'Atipias Escamosas: Não se Pode Afastar Lesão de Alto Grau (ASC-H)',
    'Atipias Glandulares: Possivelmente Não Neoplásicas (AGC-SOE)',
    'Atipias Glandulares: Não se Pode Afastar Lesão de Alto Grau (AGC-NEO)',
    'LSIL: Lesão de Baixo Grau (HPV, NIC1)',
    'HSIL: Lesão de Alto Grau (NIC2, NIC3)',
    'HSIL: Lesão de Alto Grau (Suspeita de Invasão)',
    'LIEAG: Lesão Intraepitelial de Alto Grau',
    'Carcinoma Escamoso Invasor',
    'Adenocarcinoma in situ',
    'Adenocarcinoma Invasor',
    'Outro'
  ];
  List<String> get resultadocitologiaprevia => _resultadocitologiaprevia;
  set resultadocitologiaprevia(List<String> _value) {
    _resultadocitologiaprevia = _value;
    prefs.setStringList('ff_resultadocitologiaprevia', _value);
  }

  void addToResultadocitologiaprevia(String _value) {
    _resultadocitologiaprevia.add(_value);
    prefs.setStringList(
        'ff_resultadocitologiaprevia', _resultadocitologiaprevia);
  }

  void removeFromResultadocitologiaprevia(String _value) {
    _resultadocitologiaprevia.remove(_value);
    prefs.setStringList(
        'ff_resultadocitologiaprevia', _resultadocitologiaprevia);
  }

  void removeAtIndexFromResultadocitologiaprevia(int _index) {
    _resultadocitologiaprevia.removeAt(_index);
    prefs.setStringList(
        'ff_resultadocitologiaprevia', _resultadocitologiaprevia);
  }

  List<String> _resultadohistopatologiaprevia = [
    'NIC 2',
    'NIC 3',
    'NIC 2/3',
    'Carcinoma in situ',
    'Adenocarcinoma in situ',
    'Outro'
  ];
  List<String> get resultadohistopatologiaprevia =>
      _resultadohistopatologiaprevia;
  set resultadohistopatologiaprevia(List<String> _value) {
    _resultadohistopatologiaprevia = _value;
    prefs.setStringList('ff_resultadohistopatologiaprevia', _value);
  }

  void addToResultadohistopatologiaprevia(String _value) {
    _resultadohistopatologiaprevia.add(_value);
    prefs.setStringList(
        'ff_resultadohistopatologiaprevia', _resultadohistopatologiaprevia);
  }

  void removeFromResultadohistopatologiaprevia(String _value) {
    _resultadohistopatologiaprevia.remove(_value);
    prefs.setStringList(
        'ff_resultadohistopatologiaprevia', _resultadohistopatologiaprevia);
  }

  void removeAtIndexFromResultadohistopatologiaprevia(int _index) {
    _resultadohistopatologiaprevia.removeAt(_index);
    prefs.setStringList(
        'ff_resultadohistopatologiaprevia', _resultadohistopatologiaprevia);
  }

  List<String> _impressocolposcopica = [
    'Normal',
    'Baixo Grau',
    'Alto Grau',
    'Câncer',
    'Outro'
  ];
  List<String> get impressocolposcopica => _impressocolposcopica;
  set impressocolposcopica(List<String> _value) {
    _impressocolposcopica = _value;
    prefs.setStringList('ff_impressocolposcopica', _value);
  }

  void addToImpressocolposcopica(String _value) {
    _impressocolposcopica.add(_value);
    prefs.setStringList('ff_impressocolposcopica', _impressocolposcopica);
  }

  void removeFromImpressocolposcopica(String _value) {
    _impressocolposcopica.remove(_value);
    prefs.setStringList('ff_impressocolposcopica', _impressocolposcopica);
  }

  void removeAtIndexFromImpressocolposcopica(int _index) {
    _impressocolposcopica.removeAt(_index);
    prefs.setStringList('ff_impressocolposcopica', _impressocolposcopica);
  }

  List<String> _jectipo2 = ['JEC até 1 cm do canal', 'JEC além 1 cm do canal'];
  List<String> get jectipo2 => _jectipo2;
  set jectipo2(List<String> _value) {
    _jectipo2 = _value;
    prefs.setStringList('ff_jectipo2', _value);
  }

  void addToJectipo2(String _value) {
    _jectipo2.add(_value);
    prefs.setStringList('ff_jectipo2', _jectipo2);
  }

  void removeFromJectipo2(String _value) {
    _jectipo2.remove(_value);
    prefs.setStringList('ff_jectipo2', _jectipo2);
  }

  void removeAtIndexFromJectipo2(int _index) {
    _jectipo2.removeAt(_index);
    prefs.setStringList('ff_jectipo2', _jectipo2);
  }

  List<String> _motivoinsatisfatorio = [
    'JEC não ou Parcialmente Visível',
    'JEC não Visível',
    'Inflamação',
    'Sangramento'
  ];
  List<String> get motivoinsatisfatorio => _motivoinsatisfatorio;
  set motivoinsatisfatorio(List<String> _value) {
    _motivoinsatisfatorio = _value;
    prefs.setStringList('ff_motivoinsatisfatorio', _value);
  }

  void addToMotivoinsatisfatorio(String _value) {
    _motivoinsatisfatorio.add(_value);
    prefs.setStringList('ff_motivoinsatisfatorio', _motivoinsatisfatorio);
  }

  void removeFromMotivoinsatisfatorio(String _value) {
    _motivoinsatisfatorio.remove(_value);
    prefs.setStringList('ff_motivoinsatisfatorio', _motivoinsatisfatorio);
  }

  void removeAtIndexFromMotivoinsatisfatorio(int _index) {
    _motivoinsatisfatorio.removeAt(_index);
    prefs.setStringList('ff_motivoinsatisfatorio', _motivoinsatisfatorio);
  }

  String _nome = '';
  String get nome => _nome;
  set nome(String _value) {
    _nome = _value;
    prefs.setString('ff_nome', _value);
  }

  int _cpf = 0;
  int get cpf => _cpf;
  set cpf(int _value) {
    _cpf = _value;
    prefs.setInt('ff_cpf', _value);
  }

  int _cns = 0;
  int get cns => _cns;
  set cns(int _value) {
    _cns = _value;
    prefs.setInt('ff_cns', _value);
  }

  int _contato = 0;
  int get contato => _contato;
  set contato(int _value) {
    _contato = _value;
    prefs.setInt('ff_contato', _value);
  }

  String _hospital = '';
  String get hospital => _hospital;
  set hospital(String _value) {
    _hospital = _value;
    prefs.setString('ff_hospital', _value);
  }

  String _medico = '';
  String get medico => _medico;
  set medico(String _value) {
    _medico = _value;
    prefs.setString('ff_medico', _value);
  }

  String _datanascimento = '';
  String get datanascimento => _datanascimento;
  set datanascimento(String _value) {
    _datanascimento = _value;
    prefs.setString('ff_datanascimento', _value);
  }

  String _tipodevisita = '';
  String get tipodevisita => _tipodevisita;
  set tipodevisita(String _value) {
    _tipodevisita = _value;
    prefs.setString('ff_tipodevisita', _value);
  }

  String _dresultadocitologiaprevia = '';
  String get dresultadocitologiaprevia => _dresultadocitologiaprevia;
  set dresultadocitologiaprevia(String _value) {
    _dresultadocitologiaprevia = _value;
    prefs.setString('ff_dresultadocitologiaprevia', _value);
  }

  String _dresultadohistologiaprevia = '';
  String get dresultadohistologiaprevia => _dresultadohistologiaprevia;
  set dresultadohistologiaprevia(String _value) {
    _dresultadohistologiaprevia = _value;
    prefs.setString('ff_dresultadohistologiaprevia', _value);
  }

  String _realizouaautocoletaparatestehpv = '';
  String get realizouaautocoletaparatestehpv =>
      _realizouaautocoletaparatestehpv;
  set realizouaautocoletaparatestehpv(String _value) {
    _realizouaautocoletaparatestehpv = _value;
    prefs.setString('ff_realizouaautocoletaparatestehpv', _value);
  }

  String _motivoautocoleta = '';
  String get motivoautocoleta => _motivoautocoleta;
  set motivoautocoleta(String _value) {
    _motivoautocoleta = _value;
    prefs.setString('ff_motivoautocoleta', _value);
  }

  String _opcaoacetobrancas = '';
  String get opcaoacetobrancas => _opcaoacetobrancas;
  set opcaoacetobrancas(String _value) {
    _opcaoacetobrancas = _value;
    prefs.setString('ff_opcaoacetobrancas', _value);
  }

  String _outrosespecificar = '';
  String get outrosespecificar => _outrosespecificar;
  set outrosespecificar(String _value) {
    _outrosespecificar = _value;
    prefs.setString('ff_outrosespecificar', _value);
  }

  String _dimpressocolposcopica = '';
  String get dimpressocolposcopica => _dimpressocolposcopica;
  set dimpressocolposcopica(String _value) {
    _dimpressocolposcopica = _value;
    prefs.setString('ff_dimpressocolposcopica', _value);
  }

  String _adequabilidadeezonatransf = '';
  String get adequabilidadeezonatransf => _adequabilidadeezonatransf;
  set adequabilidadeezonatransf(String _value) {
    _adequabilidadeezonatransf = _value;
    prefs.setString('ff_adequabilidadeezonatransf', _value);
  }

  String _djectipo2 = '';
  String get djectipo2 => _djectipo2;
  set djectipo2(String _value) {
    _djectipo2 = _value;
    prefs.setString('ff_djectipo2', _value);
  }

  String _dresultadohistopatologia = '';
  String get dresultadohistopatologia => _dresultadohistopatologia;
  set dresultadohistopatologia(String _value) {
    _dresultadohistopatologia = _value;
    prefs.setString('ff_dresultadohistopatologia', _value);
  }

  List<String> _urlimages = [];
  List<String> get urlimages => _urlimages;
  set urlimages(List<String> _value) {
    _urlimages = _value;
  }

  void addToUrlimages(String _value) {
    _urlimages.add(_value);
  }

  void removeFromUrlimages(String _value) {
    _urlimages.remove(_value);
  }

  void removeAtIndexFromUrlimages(int _index) {
    _urlimages.removeAt(_index);
  }

  int _nPid = 0;
  int get nPid => _nPid;
  set nPid(int _value) {
    _nPid = _value;
  }

  String _motivoautocoletahpv = '';
  String get motivoautocoletahpv => _motivoautocoletahpv;
  set motivoautocoletahpv(String _value) {
    _motivoautocoletahpv = _value;
    prefs.setString('ff_motivoautocoletahpv', _value);
  }

  int _AcetobranasSupEsquerdoAnt12x3hr = 0;
  int get AcetobranasSupEsquerdoAnt12x3hr => _AcetobranasSupEsquerdoAnt12x3hr;
  set AcetobranasSupEsquerdoAnt12x3hr(int _value) {
    _AcetobranasSupEsquerdoAnt12x3hr = _value;
    prefs.setInt('ff_AcetobranasSupEsquerdoAnt12x3hr', _value);
  }

  int _AcetobranasInfEsquerdoPot3x6hr = 0;
  int get AcetobranasInfEsquerdoPot3x6hr => _AcetobranasInfEsquerdoPot3x6hr;
  set AcetobranasInfEsquerdoPot3x6hr(int _value) {
    _AcetobranasInfEsquerdoPot3x6hr = _value;
    prefs.setInt('ff_AcetobranasInfEsquerdoPot3x6hr', _value);
  }

  int _AcetobranasSupDireitoAnt9x12hr = 0;
  int get AcetobranasSupDireitoAnt9x12hr => _AcetobranasSupDireitoAnt9x12hr;
  set AcetobranasSupDireitoAnt9x12hr(int _value) {
    _AcetobranasSupDireitoAnt9x12hr = _value;
    prefs.setInt('ff_AcetobranasSupDireitoAnt9x12hr', _value);
  }

  int _AcetobranasInfDireitoPost6x9hr = 0;
  int get AcetobranasInfDireitoPost6x9hr => _AcetobranasInfDireitoPost6x9hr;
  set AcetobranasInfDireitoPost6x9hr(int _value) {
    _AcetobranasInfDireitoPost6x9hr = _value;
    prefs.setInt('ff_AcetobranasInfDireitoPost6x9hr', _value);
  }

  int _areasacetobrancasnocanal = 0;
  int get areasacetobrancasnocanal => _areasacetobrancasnocanal;
  set areasacetobrancasnocanal(int _value) {
    _areasacetobrancasnocanal = _value;
    prefs.setInt('ff_areasacetobrancasnocanal', _value);
  }

  String _obsacetobrancas = '';
  String get obsacetobrancas => _obsacetobrancas;
  set obsacetobrancas(String _value) {
    _obsacetobrancas = _value;
    prefs.setString('ff_obsacetobrancas', _value);
  }

  int _outrosacetobrancas = 0;
  int get outrosacetobrancas => _outrosacetobrancas;
  set outrosacetobrancas(int _value) {
    _outrosacetobrancas = _value;
    prefs.setInt('ff_outrosacetobrancas', _value);
  }

  String _motivocitologiahistopatologia = '';
  String get motivocitologiahistopatologia => _motivocitologiahistopatologia;
  set motivocitologiahistopatologia(String _value) {
    _motivocitologiahistopatologia = _value;
    prefs.setString('ff_motivocitologiahistopatologia', _value);
  }

  String _outrosespecificarimpressaococolposcopica = '';
  String get outrosespecificarimpressaococolposcopica =>
      _outrosespecificarimpressaococolposcopica;
  set outrosespecificarimpressaococolposcopica(String _value) {
    _outrosespecificarimpressaococolposcopica = _value;
    prefs.setString('ff_outrosespecificarimpressaococolposcopica', _value);
  }

  String _motivodotipodevisitazt = '';
  String get motivodotipodevisitazt => _motivodotipodevisitazt;
  set motivodotipodevisitazt(String _value) {
    _motivodotipodevisitazt = _value;
    prefs.setString('ff_motivodotipodevisitazt', _value);
  }

  String _opcaobiopsia = '';
  String get opcaobiopsia => _opcaobiopsia;
  set opcaobiopsia(String _value) {
    _opcaobiopsia = _value;
    prefs.setString('ff_opcaobiopsia', _value);
  }

  String _numerodefragmentosbiopsia = '';
  String get numerodefragmentosbiopsia => _numerodefragmentosbiopsia;
  set numerodefragmentosbiopsia(String _value) {
    _numerodefragmentosbiopsia = _value;
    prefs.setString('ff_numerodefragmentosbiopsia', _value);
  }

  String _motivodenaorealizarbiopsia = '';
  String get motivodenaorealizarbiopsia => _motivodenaorealizarbiopsia;
  set motivodenaorealizarbiopsia(String _value) {
    _motivodenaorealizarbiopsia = _value;
    prefs.setString('ff_motivodenaorealizarbiopsia', _value);
  }

  String _numerodepecasbiopsia = '';
  String get numerodepecasbiopsia => _numerodepecasbiopsia;
  set numerodepecasbiopsia(String _value) {
    _numerodepecasbiopsia = _value;
    prefs.setString('ff_numerodepecasbiopsia', _value);
  }

  String _img1 = '';
  String get img1 => _img1;
  set img1(String _value) {
    _img1 = _value;
    prefs.setString('ff_img1', _value);
  }

  String _img2 = '';
  String get img2 => _img2;
  set img2(String _value) {
    _img2 = _value;
    prefs.setString('ff_img2', _value);
  }

  String _img3 = '';
  String get img3 => _img3;
  set img3(String _value) {
    _img3 = _value;
  }

  List<String> _NomeLista = [];
  List<String> get NomeLista => _NomeLista;
  set NomeLista(List<String> _value) {
    _NomeLista = _value;
    prefs.setStringList('ff_NomeLista', _value);
  }

  void addToNomeLista(String _value) {
    _NomeLista.add(_value);
    prefs.setStringList('ff_NomeLista', _NomeLista);
  }

  void removeFromNomeLista(String _value) {
    _NomeLista.remove(_value);
    prefs.setStringList('ff_NomeLista', _NomeLista);
  }

  void removeAtIndexFromNomeLista(int _index) {
    _NomeLista.removeAt(_index);
    prefs.setStringList('ff_NomeLista', _NomeLista);
  }

  List<String> _DataNascimentoLista = [];
  List<String> get DataNascimentoLista => _DataNascimentoLista;
  set DataNascimentoLista(List<String> _value) {
    _DataNascimentoLista = _value;
    prefs.setStringList('ff_DataNascimentoLista', _value);
  }

  void addToDataNascimentoLista(String _value) {
    _DataNascimentoLista.add(_value);
    prefs.setStringList('ff_DataNascimentoLista', _DataNascimentoLista);
  }

  void removeFromDataNascimentoLista(String _value) {
    _DataNascimentoLista.remove(_value);
    prefs.setStringList('ff_DataNascimentoLista', _DataNascimentoLista);
  }

  void removeAtIndexFromDataNascimentoLista(int _index) {
    _DataNascimentoLista.removeAt(_index);
    prefs.setStringList('ff_DataNascimentoLista', _DataNascimentoLista);
  }

  List<String> _CpfLista = [];
  List<String> get CpfLista => _CpfLista;
  set CpfLista(List<String> _value) {
    _CpfLista = _value;
    prefs.setStringList('ff_CpfLista', _value);
  }

  void addToCpfLista(String _value) {
    _CpfLista.add(_value);
    prefs.setStringList('ff_CpfLista', _CpfLista);
  }

  void removeFromCpfLista(String _value) {
    _CpfLista.remove(_value);
    prefs.setStringList('ff_CpfLista', _CpfLista);
  }

  void removeAtIndexFromCpfLista(int _index) {
    _CpfLista.removeAt(_index);
    prefs.setStringList('ff_CpfLista', _CpfLista);
  }

  List<String> _CnsLista = [];
  List<String> get CnsLista => _CnsLista;
  set CnsLista(List<String> _value) {
    _CnsLista = _value;
    prefs.setStringList('ff_CnsLista', _value);
  }

  void addToCnsLista(String _value) {
    _CnsLista.add(_value);
    prefs.setStringList('ff_CnsLista', _CnsLista);
  }

  void removeFromCnsLista(String _value) {
    _CnsLista.remove(_value);
    prefs.setStringList('ff_CnsLista', _CnsLista);
  }

  void removeAtIndexFromCnsLista(int _index) {
    _CnsLista.removeAt(_index);
    prefs.setStringList('ff_CnsLista', _CnsLista);
  }

  List<String> _ContatoLista = [];
  List<String> get ContatoLista => _ContatoLista;
  set ContatoLista(List<String> _value) {
    _ContatoLista = _value;
    prefs.setStringList('ff_ContatoLista', _value);
  }

  void addToContatoLista(String _value) {
    _ContatoLista.add(_value);
    prefs.setStringList('ff_ContatoLista', _ContatoLista);
  }

  void removeFromContatoLista(String _value) {
    _ContatoLista.remove(_value);
    prefs.setStringList('ff_ContatoLista', _ContatoLista);
  }

  void removeAtIndexFromContatoLista(int _index) {
    _ContatoLista.removeAt(_index);
    prefs.setStringList('ff_ContatoLista', _ContatoLista);
  }

  String _BSIQRCode = '';
  String get BSIQRCode => _BSIQRCode;
  set BSIQRCode(String _value) {
    _BSIQRCode = _value;
    prefs.setString('ff_BSIQRCode', _value);
  }

  List<String> _localSite = [];
  List<String> get localSite => _localSite;
  set localSite(List<String> _value) {
    _localSite = _value;
    prefs.setStringList('ff_localSite', _value);
  }

  void addToLocalSite(String _value) {
    _localSite.add(_value);
    prefs.setStringList('ff_localSite', _localSite);
  }

  void removeFromLocalSite(String _value) {
    _localSite.remove(_value);
    prefs.setStringList('ff_localSite', _localSite);
  }

  void removeAtIndexFromLocalSite(int _index) {
    _localSite.removeAt(_index);
    prefs.setStringList('ff_localSite', _localSite);
  }

  List<String> _localColposcopista = [];
  List<String> get localColposcopista => _localColposcopista;
  set localColposcopista(List<String> _value) {
    _localColposcopista = _value;
    prefs.setStringList('ff_localColposcopista', _value);
  }

  void addToLocalColposcopista(String _value) {
    _localColposcopista.add(_value);
    prefs.setStringList('ff_localColposcopista', _localColposcopista);
  }

  void removeFromLocalColposcopista(String _value) {
    _localColposcopista.remove(_value);
    prefs.setStringList('ff_localColposcopista', _localColposcopista);
  }

  void removeAtIndexFromLocalColposcopista(int _index) {
    _localColposcopista.removeAt(_index);
    prefs.setStringList('ff_localColposcopista', _localColposcopista);
  }

  List<String> _localNome = [];
  List<String> get localNome => _localNome;
  set localNome(List<String> _value) {
    _localNome = _value;
    prefs.setStringList('ff_localNome', _value);
  }

  void addToLocalNome(String _value) {
    _localNome.add(_value);
    prefs.setStringList('ff_localNome', _localNome);
  }

  void removeFromLocalNome(String _value) {
    _localNome.remove(_value);
    prefs.setStringList('ff_localNome', _localNome);
  }

  void removeAtIndexFromLocalNome(int _index) {
    _localNome.removeAt(_index);
    prefs.setStringList('ff_localNome', _localNome);
  }

  List<int> _localCPF = [];
  List<int> get localCPF => _localCPF;
  set localCPF(List<int> _value) {
    _localCPF = _value;
    prefs.setStringList(
        'ff_localCPF', _value.map((x) => x.toString()).toList());
  }

  void addToLocalCPF(int _value) {
    _localCPF.add(_value);
    prefs.setStringList(
        'ff_localCPF', _localCPF.map((x) => x.toString()).toList());
  }

  void removeFromLocalCPF(int _value) {
    _localCPF.remove(_value);
    prefs.setStringList(
        'ff_localCPF', _localCPF.map((x) => x.toString()).toList());
  }

  void removeAtIndexFromLocalCPF(int _index) {
    _localCPF.removeAt(_index);
    prefs.setStringList(
        'ff_localCPF', _localCPF.map((x) => x.toString()).toList());
  }

  List<int> _localCNS = [];
  List<int> get localCNS => _localCNS;
  set localCNS(List<int> _value) {
    _localCNS = _value;
    prefs.setStringList(
        'ff_localCNS', _value.map((x) => x.toString()).toList());
  }

  void addToLocalCNS(int _value) {
    _localCNS.add(_value);
    prefs.setStringList(
        'ff_localCNS', _localCNS.map((x) => x.toString()).toList());
  }

  void removeFromLocalCNS(int _value) {
    _localCNS.remove(_value);
    prefs.setStringList(
        'ff_localCNS', _localCNS.map((x) => x.toString()).toList());
  }

  void removeAtIndexFromLocalCNS(int _index) {
    _localCNS.removeAt(_index);
    prefs.setStringList(
        'ff_localCNS', _localCNS.map((x) => x.toString()).toList());
  }

  List<int> _localContato = [];
  List<int> get localContato => _localContato;
  set localContato(List<int> _value) {
    _localContato = _value;
    prefs.setStringList(
        'ff_localContato', _value.map((x) => x.toString()).toList());
  }

  void addToLocalContato(int _value) {
    _localContato.add(_value);
    prefs.setStringList(
        'ff_localContato', _localContato.map((x) => x.toString()).toList());
  }

  void removeFromLocalContato(int _value) {
    _localContato.remove(_value);
    prefs.setStringList(
        'ff_localContato', _localContato.map((x) => x.toString()).toList());
  }

  void removeAtIndexFromLocalContato(int _index) {
    _localContato.removeAt(_index);
    prefs.setStringList(
        'ff_localContato', _localContato.map((x) => x.toString()).toList());
  }

  List<String> _localDataNascimento = [];
  List<String> get localDataNascimento => _localDataNascimento;
  set localDataNascimento(List<String> _value) {
    _localDataNascimento = _value;
    prefs.setStringList('ff_localDataNascimento', _value);
  }

  void addToLocalDataNascimento(String _value) {
    _localDataNascimento.add(_value);
    prefs.setStringList('ff_localDataNascimento', _localDataNascimento);
  }

  void removeFromLocalDataNascimento(String _value) {
    _localDataNascimento.remove(_value);
    prefs.setStringList('ff_localDataNascimento', _localDataNascimento);
  }

  void removeAtIndexFromLocalDataNascimento(int _index) {
    _localDataNascimento.removeAt(_index);
    prefs.setStringList('ff_localDataNascimento', _localDataNascimento);
  }

  String _site = '';
  String get site => _site;
  set site(String _value) {
    _site = _value;
    prefs.setString('ff_site', _value);
  }

  String _colposcopista = '';
  String get colposcopista => _colposcopista;
  set colposcopista(String _value) {
    _colposcopista = _value;
    prefs.setString('ff_colposcopista', _value);
  }

  List<String> _localImagem1 = [];
  List<String> get localImagem1 => _localImagem1;
  set localImagem1(List<String> _value) {
    _localImagem1 = _value;
    prefs.setStringList('ff_localImagem1', _value);
  }

  void addToLocalImagem1(String _value) {
    _localImagem1.add(_value);
    prefs.setStringList('ff_localImagem1', _localImagem1);
  }

  void removeFromLocalImagem1(String _value) {
    _localImagem1.remove(_value);
    prefs.setStringList('ff_localImagem1', _localImagem1);
  }

  void removeAtIndexFromLocalImagem1(int _index) {
    _localImagem1.removeAt(_index);
    prefs.setStringList('ff_localImagem1', _localImagem1);
  }

  List<String> _urlImages = [];
  List<String> get urlImages => _urlImages;
  set urlImages(List<String> _value) {
    _urlImages = _value;
    prefs.setStringList('ff_urlImages', _value);
  }

  void addToUrlImages(String _value) {
    _urlImages.add(_value);
    prefs.setStringList('ff_urlImages', _urlImages);
  }

  void removeFromUrlImages(String _value) {
    _urlImages.remove(_value);
    prefs.setStringList('ff_urlImages', _urlImages);
  }

  void removeAtIndexFromUrlImages(int _index) {
    _urlImages.removeAt(_index);
    prefs.setStringList('ff_urlImages', _urlImages);
  }

  bool _PhotoVisible = false;
  bool get PhotoVisible => _PhotoVisible;
  set PhotoVisible(bool _value) {
    _PhotoVisible = _value;
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}
