import 'package:flutter/material.dart';
import 'package:tarefas_clean_architecture/layers/tarefas/domain/entities/tarefa_entity.dart';

class TarefaItemWidget extends StatelessWidget {
  final TarefaEntity tarefa;
  final Function(TarefaEntity tarefa) onRealizarTarefa;
  final Function(TarefaEntity tarefa) onFavoritarTarefa;
  final Function(TarefaEntity tarefa) onExcluirTarefa;

  const TarefaItemWidget({
    super.key,
    required this.tarefa,
    required this.onRealizarTarefa,
    required this.onFavoritarTarefa,
    required this.onExcluirTarefa,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Dismissible(
        direction: DismissDirection.startToEnd,
        background: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: Colors.red,
          ),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(width: 10),
              Icon(Icons.delete_outline),
              SizedBox(width: 10),
              Text("Excluir")
            ],
          ),
        ),
        onDismissed: (direction) => onExcluirTarefa(tarefa),
        key: ValueKey(tarefa),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: !tarefa.realizado
                ? const Color.fromARGB(255, 37, 36, 35)
                : const Color.fromARGB(255, 29, 27, 27),
          ),
          child: Row(
            children: [
              IconButton(
                onPressed: () => onRealizarTarefa(tarefa),
                icon: const Icon(Icons.circle_outlined),
              ),
              Expanded(
                child: Text(tarefa.descricao),
              ),
              !tarefa.realizado && !tarefa.compra
                  ? IconButton(
                      onPressed: () => onFavoritarTarefa(tarefa),
                      icon: const Icon(Icons.star_border),
                      color: tarefa.favorita ? Colors.white : Colors.grey[700],
                    )
                  : Container(),
            ],
          ),
        ),
      ),
    );
  }
}
