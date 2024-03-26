import 'dart:math';

class TarefaEntity {
  final String id;
  final String descricao;
  final DateTime data;
  final bool realizado;

  TarefaEntity({
    required this.descricao,
    required this.data,
    required this.realizado,
  }) : id = generateRandomId();

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
