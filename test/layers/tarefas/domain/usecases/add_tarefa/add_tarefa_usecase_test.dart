import 'package:flutter_test/flutter_test.dart';
import 'package:tarefas_clean_architecture/layers/tarefas/data/repositories/add_tarefa_repository_imp.dart';
import 'package:tarefas_clean_architecture/layers/tarefas/domain/entities/tarefa_entity.dart';
import 'package:tarefas_clean_architecture/layers/tarefas/domain/usecases/add_tarefa/add_tarefa_usecase.dart';
import 'package:tarefas_clean_architecture/layers/tarefas/domain/usecases/add_tarefa/add_tarefa_usecase_imp.dart';

main() async {
  AddTarefaUseCase useCase = AddTarefaUseCaseImp(
    AddTarefaRepositoryImp(),
  );

  test('Espero que adicione a terefa com succeso', () async {
    TarefaEntity tarefa = TarefaEntity(
      descricao: "Teste",
      data: DateTime.now(),
    );
    var result = await useCase(tarefa);
    expect(result, true);
  });

  test('Espero que Não adicione a terefa com succeso', () async {
    TarefaEntity tarefa = TarefaEntity(
      descricao: "", // A descricão esta vazia
      data: DateTime.now(),
    );
    var result = await useCase(tarefa);
    expect(result, false);
  });
}
