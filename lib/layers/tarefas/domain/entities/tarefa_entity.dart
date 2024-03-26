import 'dart:math';

class TarefaEntity {
  final String id;
  String descricao;
  final DateTime data;
  bool realizado;
  bool favorita;

  TarefaEntity({
    required this.descricao,
    required this.data,
  })  : id = generateRandomId(),
        realizado = false,
        favorita = false;

  void alterarRealizado() {
    realizado = !realizado;
  }

  void alterarFavorito() {
    favorita = !favorita;
  }

  void alterarDescricao(String novaDescricao) {
    if (novaDescricao.isEmpty) {
      return;
    }

    descricao = novaDescricao;
  }

  static String generateRandomId({int length = 6}) {
    const chars = 'abcdefghijklmnopqrstuvwxyz0123456789';
    final random = Random();
    return String.fromCharCodes(
      Iterable.generate(
        length,
        (_) => chars.codeUnitAt(random.nextInt(chars.length)),
      ),
    );
  }

  /* 
  Regras de Negocio da Entidade
  São regras que so dependem da entidade em si, não depende de dados do mundo exterior
  Exemplo tosco:
  
  void realizarTarefa {
    if(data < DateTime.now()){
      this.realizado = true;
    }
  }
  
  */
}
