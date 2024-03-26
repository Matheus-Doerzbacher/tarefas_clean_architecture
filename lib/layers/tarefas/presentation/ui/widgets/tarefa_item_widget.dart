import 'package:flutter/material.dart';
import 'package:tarefas_clean_architecture/layers/tarefas/domain/entities/tarefa_entity.dart';

class TarefaItemWidget extends StatelessWidget {
  final TarefaEntity tarefa;
  final Function(TarefaEntity tarefa) onRealizarTarefa;
  final Function(TarefaEntity tarefa) onFavoritarTarefa;

  const TarefaItemWidget({
    super.key,
    required this.tarefa,
    required this.onRealizarTarefa,
    required this.onFavoritarTarefa,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
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
              child: Text(tarefa.data.toString()),
            ),
            !tarefa.realizado
                ? IconButton(
                    onPressed: () => onFavoritarTarefa(tarefa),
                    icon: const Icon(Icons.star_border),
                    color: tarefa.favorita ? Colors.white : Colors.grey[700],
                  )
                : Container(),
          ],
        ),
      ),
    );
  }
}
