import 'package:get_it/get_it.dart';
import 'package:tarefas_clean_architecture/layers/tarefas/data/datasources/get_all_tarefas_datasource.dart';
import 'package:tarefas_clean_architecture/layers/tarefas/data/datasources/local/get_all_tarefas_local_datasource_imp.dart';
import 'package:tarefas_clean_architecture/layers/tarefas/data/repositories/add_tarefa_repository_imp.dart';
import 'package:tarefas_clean_architecture/layers/tarefas/data/repositories/get_all_repository_imp.dart';
import 'package:tarefas_clean_architecture/layers/tarefas/domain/repositories/add_tarefa_repository.dart';
import 'package:tarefas_clean_architecture/layers/tarefas/domain/repositories/get_all_tarefas_repository.dart';
import 'package:tarefas_clean_architecture/layers/tarefas/domain/usecases/add_tarefa/add_tarefa_usecase.dart';
import 'package:tarefas_clean_architecture/layers/tarefas/domain/usecases/add_tarefa/add_tarefa_usecase_imp.dart';
import 'package:tarefas_clean_architecture/layers/tarefas/domain/usecases/get_all_tarefas/get_all_tarefas_usecase.dart';
import 'package:tarefas_clean_architecture/layers/tarefas/domain/usecases/get_all_tarefas/get_all_tarefas_usecase_imp.dart';
import 'package:tarefas_clean_architecture/layers/tarefas/presentation/controllers/tarefa_controller.dart';

class Inject {
  static void init() {
    GetIt i = GetIt.instance;

    /* 
    Ordem
    - datasources
    - repositories
    - usecases
    - controller
    */

    /* datasources */
    i.registerLazySingleton<GetAllTarefasDataSource>(() {
      return GetAllTarefasLocalDataSourceImp();
    });

    /* repositories */
    i.registerLazySingleton<GetAllTarefasRepository>(() {
      return GetAllTarefasRepositoryImp(i());
    });
    i.registerLazySingleton<AddTarefaRepository>(() {
      return AddTarefaRepositoryImp();
    });

    /* usecases */
    i.registerLazySingleton<GetAllTarefasUseCase>(() {
      return GetAllTarefasUseCaseImp(i());
    });
    i.registerLazySingleton<AddTarefaUseCase>(() {
      return AddTarefaUseCaseImp(i());
    });

    /* controller */
    i.registerLazySingleton<TarefaController>(() {
      return TarefaController(i(), i());
    });
  }
}
