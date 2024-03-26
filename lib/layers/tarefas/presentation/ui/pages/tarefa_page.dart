import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:tarefas_clean_architecture/layers/tarefas/presentation/controllers/tarefa_controller.dart';
import 'package:tarefas_clean_architecture/layers/tarefas/presentation/ui/widgets/cabecalho_widget.dart';
import 'package:tarefas_clean_architecture/layers/tarefas/presentation/ui/widgets/data_widget.dart';
import 'package:tarefas_clean_architecture/layers/tarefas/presentation/ui/widgets/tarefa_item_widget.dart';

class TarefaPage extends StatefulWidget {
  final int index;
  final String titulo;
  final IconData icon;
  final Color iconColor;

  const TarefaPage(
      {super.key,
      required this.index,
      required this.titulo,
      required this.icon,
      required this.iconColor});

  @override
  State<TarefaPage> createState() => _TarefaPageState();
}

class _TarefaPageState extends State<TarefaPage> {
  final TarefaController controller = GetIt.I.get<TarefaController>();
  final _novaTarefa = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CabecalhoWidget(
            iconeColor: widget.iconColor,
            icon: widget.icon,
            titulo: widget.titulo,
          ),
          const DataWidget(),
          const SizedBox(height: 20),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: const Color.fromARGB(255, 37, 36, 35),
            ),
            child: Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    _novaTarefa.text.isEmpty
                        ? Icons.circle_outlined
                        : Icons.add,
                    color: const Color.fromARGB(255, 85, 164, 240),
                  ),
                ),
                Expanded(
                  child: TextField(
                    onChanged: (_) => setState(() {}),
                    controller: _novaTarefa,
                    cursorColor: Colors.grey,
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      labelText: "Adicionar uma tarefa",
                      labelStyle: TextStyle(
                        color: Color.fromARGB(255, 85, 164, 240),
                      ),
                      contentPadding:
                          EdgeInsets.only(top: 5, bottom: 5, right: 10),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.only(top: 10),
              itemCount: controller.getTarefasNaoRealizadas().length,
              itemBuilder: (context, index) {
                final tarefa = controller.tarefas[index];
                return TarefaItemWidget(tarefa: tarefa);
              },
            ),
          )
        ],
      ),
    );
  }
}
