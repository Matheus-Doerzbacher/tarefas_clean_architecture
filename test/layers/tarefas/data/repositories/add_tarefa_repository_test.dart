import 'package:flutter_test/flutter_test.dart';
import 'package:tarefas_clean_architecture/layers/tarefas/domain/entities/tarefa_entity.dart';
import 'package:tarefas_clean_architecture/layers/tarefas/domain/repositories/add_tarefa_repository.dart';

class AddTarefaRepositoryImp implements AddTarefaRepository {
  @override
  Future<bool> call(TarefaEntity tarefa) async {
    return tarefa.descricao.isNotEmpty;
  }
}

main() async {
  AddTarefaRepository repository = AddTarefaRepositoryImp();

  test('Deve adicionar uma terefa com succeso', () async {
    TarefaEntity tarefa = TarefaEntity(
      descricao: "Teste",
      data: DateTime.now(),
    );
    var result = await repository(tarefa);
    expect(result, true);
  });

  test('Não deve adicionar uma terefa com succeso', () async {
    TarefaEntity tarefa = TarefaEntity(
      descricao: "", // A descricão esta vazia
      data: DateTime.now(),
    );
    var result = await repository(tarefa);
    expect(result, false);
  });
}
