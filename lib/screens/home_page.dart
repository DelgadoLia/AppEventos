import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:tarea1/data/event_data.dart';
import 'package:tarea1/widgets/category_chip.dart';
import 'package:tarea1/widgets/event_card.dart';

class HomePage extends StatefulWidget {
  const new({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String _categoriaSeleccionada = 'Todos'; //variable accesible solamemnte en el archivo

  @override
  Widget build(BuildContext context) {

  List<Map<String, dynamic>> _obtenerEventos(){
    if(_categoriaSeleccionada == 'Todos'){
      return eventos;
    }
    final List<Map<String, dynamic>> res=[];
    for(final evento in eventos){
      if(evento['categoria'] == _categoriaSeleccionada){
        res.add(evento);
      }
    }
    return res;
  }

  final eventosMostrados =_obtenerEventos();

  return Scaffold(
    backgroundColor: Theme.of(context).scaffoldBackgroundColor,
    appBar: AppBar(
      title: const Text('Campus Eventos'),
    ),
    body: SafeArea(
      child: Padding(
        padding: EdgeInsetsGeometry.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Eventos universitarios', 
            style: Theme.of(context).textTheme.headlineSmall?.copyWith(
              fontWeight: FontWeight.bold)
            ),
            const SizedBox(height: 6,),
            Text('Descubre actividades académicas, culturales y deportivas.'),
            const SizedBox(height: 20,),
            SizedBox(
              height: 42,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: categorias.length,
                itemBuilder:(context, index){
                  final categoria = categorias[index];
                  return CategoryChip(
                    texto: categoria,
                    seleccionado: _categoriaSeleccionada == categoria,
                    onTap: (){
                      setState(() {
                        _categoriaSeleccionada = categoria;
                      });
                    }
                  );
                }
              ),
            ),
            const SizedBox(height: 16),
            Text('Eventos encontrados: ${eventosMostrados.length}',
            style: const TextStyle(
              fontWeight: FontWeight.w600)
            ),
            const SizedBox(height: 12,),
            Expanded(child: LayoutBuilder(builder: (context, constraints) {
              final columnas = constraints.maxWidth >= 900
                ? 4
                : constraints.maxWidth >= 600
                  ? 3
                  : 2;
              return GridView.builder(
                itemCount: eventosMostrados.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: columnas,
                  crossAxisSpacing: 12,
                  mainAxisSpacing: 12,
                  childAspectRatio: 0.72
                  ), 
                itemBuilder:(context, index) {
                  final evento = eventosMostrados[index];
                  return EventCard(evento: evento, onPressed: (){
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('Seleccionado ${evento['titulo']}')));
                  });
                });
            },))
          ],
        ),
      )
    )
  );
  }
}