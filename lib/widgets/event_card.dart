import 'package:flutter/material.dart';

class EventCard extends StatelessWidget {
  final Map<String, dynamic>
  evento; //los valores pueden ser de tipos diferentes, por eso se usa dynamic
  final VoidCallback onPressed;

  const EventCard({super.key, required this.evento, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias, //recorta todo lo que sobresalga de la card y redondea los bordes
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            //ocupa todo el espacio que quede
            child: Image.network(
              //saca una imagen de internet, sin embargo ...
              evento['imagen'], //aqui se utiliza la imagen de evento
              width: double.infinity, //todo el ancho posible
              fit: BoxFit.cover, //que cubra todo el espacio posible
              errorBuilder: //si hay un error en la imagen construye esto en su lugar
              ((context, error, stackTrace) {
                return const Center(
                  child: Icon(Icons.image_not_supported, size: 48),
                ); //center es un widget centrado
              }),
            ),
          ),
          Padding(//agrega espacio alrededor de otro widget.
            padding: const EdgeInsets.all(8),
            child: Text(
              evento['titulo'],
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: Theme.of(context).textTheme.titleMedium?.copyWith(//manten el tema titulo medio pero...
                fontWeight: FontWeight.bold,//cambiando esta propiedad
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),//12 píxeles a la izquierda y 12 píxeles a la derecha.
            child: Text(evento['categoria'])
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(12,3,12,3),//definir padding individual de cada lado
            child: Text(evento['fecha']),
          ),
          // TODO 1:
          // Agregar al diseño la hora, el lugar y el cupo del evento.
          Padding(
            padding: const EdgeInsets.fromLTRB(12,3,12,3),
            child: Text(evento['hora']),
            ),
          Padding(
            padding: const EdgeInsets.fromLTRB(12,3,12,3),
            child: Text(evento['lugar']),
          ),
          Padding(
              padding: const EdgeInsets.fromLTRB(12,3,12,3),
              child: Text(evento['cupo'].toString()),
            ),
            // TODO 2:
          // Agregar un botón que permita registrarse o marcar
          // el evento como "Me interesa".
          //
          // El botón deberá ejecutar:
          // onPressed();
          Padding(
            padding: const EdgeInsets.fromLTRB(12,3,12,3),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Theme.of(context).focusColor),
              onPressed: (){
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                content: Text('${evento['titulo']} seleccionad@'),
                backgroundColor: Theme.of(context).hintColor,
              ));
            }, 
            
            child: Icon(Icons.add)),
          ),
          const SizedBox(height: 8),
        ],
      ),
    );
  }
}
