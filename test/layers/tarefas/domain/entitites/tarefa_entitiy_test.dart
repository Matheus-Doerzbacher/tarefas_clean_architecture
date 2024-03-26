import 'package:flutter_test/flutter_test.dart';
import 'package:tarefas_clean_architecture/layers/tarefas/domain/entities/tarefa_entity.dart';

main() {
  TarefaEntity tarefa = TarefaEntity(
    descricao: "Teste Tarefa",
    data: DateTime.now(),
  );

  test('Espero que entidade não seja nula', () {
    expect(tarefa, isNotNull);
  });

  test('Espero que a descrição não seja vazia', () {
    expect(tarefa.descricao, isNotEmpty);
  });

  test('Espero que o atributo realizado seja verdadeiro', () {
    tarefa.alterarRealizado();
    expect(tarefa.realizado, true);
  });

  test('Espero que tenha trocada a descricao da tarefa', () {
    String novaDescricao = "Descricao alterada para a tarefa";
    tarefa.alterarDescricao(novaDescricao);
    expect(tarefa.descricao, novaDescricao);
  });

  test('Espero que NÃO tenha trocada a descricao da tarefa', () {
    String antigaDescricao = tarefa.descricao;
    String novaDescricao = "";

    tarefa.alterarDescricao(novaDescricao);
    expect(tarefa.descricao, antigaDescricao);
  });
}
