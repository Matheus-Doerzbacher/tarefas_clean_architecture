import 'package:flutter/material.dart';
import 'package:tarefas_clean_architecture/layers/tarefas/domain/entities/tarefa_entity.dart';

class TarefaItemWidget extends StatelessWidget {
  const TarefaItemWidget({
    super.key,
    required this.tarefa,
  });

  final TarefaEntity tarefa;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: const Color.fromARGB(255, 37, 36, 35),
        ),
        child: Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.circle_outlined),
            ),
            Expanded(
              child: Text(tarefa.descricao),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.star_border),
              color: tarefa.realizado ? Colors.white : Colors.grey[700],
            ),
          ],
        ),
      ),
    );
  }
}
