import 'package:tarefas_clean_architecture/layers/tarefas/domain/entities/tarefa_entity.dart';
import 'package:tarefas_clean_architecture/layers/tarefas/domain/repositories/get_all_tarefas_repository.dart';
import 'package:tarefas_clean_architecture/layers/tarefas/domain/usecases/get_all_tarefas/get_all_tarefas_usecase.dart';

class GetAllTarefasUseCaseImp implements GetAllTarefasUseCase {
  final GetAllTarefasRepository _getAllTarefasRepository;
  GetAllTarefasUseCaseImp(this._getAllTarefasRepository);

  @override
  List<TarefaEntity> call() {
    return _getAllTarefasRepository();
  }
}
