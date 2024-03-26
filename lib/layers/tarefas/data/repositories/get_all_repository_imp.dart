import 'package:tarefas_clean_architecture/layers/tarefas/data/datasources/get_all_tarefas_datasource.dart';
import 'package:tarefas_clean_architecture/layers/tarefas/domain/entities/tarefa_entity.dart';
import 'package:tarefas_clean_architecture/layers/tarefas/domain/repositories/get_all_tarefas_repository.dart';

class GetAllTarefasRepositoryImp implements GetAllTarefasRepository {
  final GetAllTarefasDataSource _getAllTarefasDataSource;
  GetAllTarefasRepositoryImp(this._getAllTarefasDataSource);

  @override
  List<TarefaEntity> call() {
    return _getAllTarefasDataSource();
  }
}
