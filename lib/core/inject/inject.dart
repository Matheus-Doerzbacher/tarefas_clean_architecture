import 'package:get_it/get_it.dart';
import 'package:tarefas_clean_architecture/layers/tarefas/data/datasources/get_all_tarefas_datasource.dart';
import 'package:tarefas_clean_architecture/layers/tarefas/data/datasources/local/get_all_tarefas_local_datasource_imp.dart';
import 'package:tarefas_clean_architecture/layers/tarefas/data/repositories/add_tarefa_repository_imp.dart';
import 'package:tarefas_clean_architecture/layers/tarefas/data/repositories/excluir_tarefa_repository_imp.dart';
import 'package:tarefas_clean_architecture/layers/tarefas/data/repositories/favoritar_tarefa_repository_imp.dart';
import 'package:tarefas_clean_architecture/layers/tarefas/data/repositories/get_all_repository_imp.dart';
import 'package:tarefas_clean_architecture/layers/tarefas/data/repositories/realizar_tarefa_repository_imp.dart';
import 'package:tarefas_clean_architecture/layers/tarefas/domain/repositories/add_tarefa_repository.dart';
import 'package:tarefas_clean_architecture/layers/tarefas/domain/repositories/excluir_tarefa_repository.dart';
import 'package:tarefas_clean_architecture/layers/tarefas/domain/repositories/favoritar_tarefa.repository.dart';
import 'package:tarefas_clean_architecture/layers/tarefas/domain/repositories/get_all_tarefas_repository.dart';
import 'package:tarefas_clean_architecture/layers/tarefas/domain/repositories/realizar_tarefa_repository.dart';
import 'package:tarefas_clean_architecture/layers/tarefas/domain/usecases/add_tarefa/add_tarefa_usecase.dart';
import 'package:tarefas_clean_architecture/layers/tarefas/domain/usecases/add_tarefa/add_tarefa_usecase_imp.dart';
import 'package:tarefas_clean_architecture/layers/tarefas/domain/usecases/exluir_tarefa.dart/excluir_tarefa_usecase.dart';
import 'package:tarefas_clean_architecture/layers/tarefas/domain/usecases/exluir_tarefa.dart/excluir_tarefa_usecase_imp.dart';
import 'package:tarefas_clean_architecture/layers/tarefas/domain/usecases/favoritar_tarefa/favoritar_tarefa_usecase.dart';
import 'package:tarefas_clean_architecture/layers/tarefas/domain/usecases/favoritar_tarefa/favoritar_tarefa_usecase_imp.dart';
import 'package:tarefas_clean_architecture/layers/tarefas/domain/usecases/get_all_tarefas/get_all_tarefas_usecase.dart';
import 'package:tarefas_clean_architecture/layers/tarefas/domain/usecases/get_all_tarefas/get_all_tarefas_usecase_imp.dart';
import 'package:tarefas_clean_architecture/layers/tarefas/domain/usecases/ralizar_tarefa/realizar_tarefa_usecase.dart';
import 'package:tarefas_clean_architecture/layers/tarefas/domain/usecases/ralizar_tarefa/realizar_tarefa_usecase_imp.dart';
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
    i.registerLazySingleton<RealizarTarefaRepository>(() {
      return RealizarTarefaRepositoryImp();
    });
    i.registerLazySingleton<FavoritarTarefaRepository>(() {
      return FavoritarTarefaRepositoryImp();
    });

    i.registerLazySingleton<ExcluirTarefaRepository>(() {
      return ExcluirTarefaRepositoryImp();
    });

    /* usecases */
    i.registerLazySingleton<GetAllTarefasUseCase>(() {
      return GetAllTarefasUseCaseImp(i());
    });
    i.registerLazySingleton<AddTarefaUseCase>(() {
      return AddTarefaUseCaseImp(i());
    });
    i.registerLazySingleton<RealizarTarefaUseCase>(() {
      return RealizarTarefaUseCaseImp(i());
    });
    i.registerLazySingleton<FavoritarTarefaUseCases>(() {
      return FavoritarTarefaUseCaseImp(i());
    });
    i.registerLazySingleton<ExcluirTarefaUseCase>(() {
      return ExcluirTarefaUseCaseImp(i());
    });

    /* controller */
    i.registerLazySingleton<TarefaController>(() {
      return TarefaController(i(), i(), i(), i(), i());
    });
  }
}
