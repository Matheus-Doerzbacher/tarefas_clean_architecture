import 'package:tarefas_clean_architecture/layers/tarefas/domain/entities/tarefa_entity.dart';
import 'package:tarefas_clean_architecture/layers/tarefas/domain/usecases/add_tarefa/add_tarefa_usecase.dart';
import 'package:tarefas_clean_architecture/layers/tarefas/domain/usecases/get_all_tarefas/get_all_tarefas_usecase.dart';
import 'package:tarefas_clean_architecture/layers/tarefas/domain/usecases/ralizar_tarefa/realizar_tarefa_usecase.dart';

class TarefaController {
  final GetAllTarefasUseCase _getAllTarefasUseCase;
  final AddTarefaUseCase _addTarefaUseCase;
  final RealizarTarefaUseCase _realizarTarefaUseCase;

  TarefaController(
    this._getAllTarefasUseCase,
    this._addTarefaUseCase,
    this._realizarTarefaUseCase,
  ) {
    getAllTarefas();
  }

  late List<TarefaEntity> tarefas;

  getAllTarefas() {
    tarefas = _getAllTarefasUseCase();
  }

  addTarefa(TarefaEntity tarefa) async {
    await _addTarefaUseCase(tarefa);
  }

  realizarTarefa(TarefaEntity tarefa) async {
    await _realizarTarefaUseCase(tarefa);
  }
}
