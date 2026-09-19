const List<String> categorias = [
  'Todos',
  'Académicos',
  'Deportivos',
  'Culturales',
  'Tecnología',
  'Talleres',
];

const List<Map<String, dynamic>> eventos = [
  {
    'titulo': 'Hackathon Universitario',
    'categoria': 'Tecnología',
    'fecha': '18 de septiembre',
    'hora': '09:00',
    'lugar': 'Laboratorio de Cómputo',
    'cupo': 40,
    'imagen':
        'https://images.unsplash.com/photo-1504384308090-c894fdcc538d?w=900',
  },
  {
    'titulo': 'Taller de Flutter',
    'categoria': 'Talleres',
    'fecha': '20 de septiembre',
    'hora': '12:00',
    'lugar': 'Edificio 5',
    'cupo': 25,
    'imagen':
        'https://images.unsplash.com/photo-1516321318423-f06f85e504b3?w=900',
  },
  {
    'titulo': 'Conferencia de Inteligencia Artificial',
    'categoria': 'Académicos',
    'fecha': '23 de septiembre',
    'hora': '10:00',
    'lugar': 'Auditorio Central',
    'cupo': 120,
    'imagen':
        'https://images.unsplash.com/photo-1531482615713-2afd69097998?w=900',
  },
  {
    'titulo': 'Torneo de Futbol',
    'categoria': 'Deportivos',
    'fecha': '25 de septiembre',
    'hora': '16:00',
    'lugar': 'Cancha Universitaria',
    'cupo': 80,
    'imagen':
        'https://images.unsplash.com/photo-1579952363873-27f3bade9f55?w=900',
  },
  {
    'titulo': 'Exposición de Arte',
    'categoria': 'Culturales',
    'fecha': '27 de septiembre',
    'hora': '11:00',
    'lugar': 'Galería Universitaria',
    'cupo': 60,
    'imagen':
        'https://images.unsplash.com/photo-1561214115-f2f134cc4912?w=900',
  },
  {
    'titulo': 'Charla de Ciberseguridad',
    'categoria': 'Tecnología',
    'fecha': '30 de septiembre',
    'hora': '13:00',
    'lugar': 'Sala Audiovisual',
    'cupo': 50,
    'imagen':
        'https://images.unsplash.com/photo-1563013544-824ae1b704d3?w=900',
  },
  {
    'titulo': 'Taller de Emprendimiento',
    'categoria': 'Talleres',
    'fecha': '2 de octubre',
    'hora': '15:00',
    'lugar': 'Centro de Innovación',
    'cupo': 35,
    'imagen':
        'https://images.unsplash.com/photo-1521737711867-e3b97375f902?w=900',
  },
  {
    'titulo': 'Festival Universitario',
    'categoria': 'Culturales',
    'fecha': '5 de octubre',
    'hora': '17:00',
    'lugar': 'Plaza Principal',
    'cupo': 200,
    'imagen':
        'https://images.unsplash.com/photo-1501281668745-f7f57925c3b4?w=900',
  },
    {
    'titulo': 'Simposio de Investigación Científica',
    'categoria': 'Académicos',
    'fecha': '7 de octubre',
    'hora': '09:30',
    'lugar': 'Auditorio Central',
    'cupo': 100,
    'imagen':
        'https://images.unsplash.com/photo-1523240795612-9a054b0db644?w=900',
  },
  {
    'titulo': 'Feria de Posgrados',
    'categoria': 'Académicos',
    'fecha': '9 de octubre',
    'hora': '10:00',
    'lugar': 'Explanada Principal',
    'cupo': 150,
    'imagen':
        'https://images.unsplash.com/photo-1523050854058-8df90110c9f1?w=900',
  },
  {
    'titulo': 'Coloquio de Ciencias Sociales',
    'categoria': 'Académicos',
    'fecha': '11 de octubre',
    'hora': '11:00',
    'lugar': 'Sala de Conferencias',
    'cupo': 70,
    'imagen':
        'https://images.unsplash.com/photo-1544531585-9847b68c8c86?w=900',
  },
  {
    'titulo': 'Carrera Atlética Universitaria',
    'categoria': 'Deportivos',
    'fecha': '13 de octubre',
    'hora': '07:00',
    'lugar': 'Pista de Atletismo',
    'cupo': 200,
    'imagen':
        'https://images.unsplash.com/photo-1461896836934-ffe607ba8211?w=900',
  },
  {
    'titulo': 'Torneo de Baloncesto',
    'categoria': 'Deportivos',
    'fecha': '15 de octubre',
    'hora': '17:00',
    'lugar': 'Gimnasio Universitario',
    'cupo': 90,
    'imagen':
        'https://images.unsplash.com/photo-1546519638-68e109498ffc?w=900',
  },
  {
    'titulo': 'Clase Abierta de Yoga',
    'categoria': 'Deportivos',
    'fecha': '17 de octubre',
    'hora': '08:00',
    'lugar': 'Área de Jardines',
    'cupo': 45,
    'imagen':
        'https://images.unsplash.com/photo-1544367567-0f2fcb009e0b?w=900',
  },
  {
    'titulo': 'Noche de Cine Universitario',
    'categoria': 'Culturales',
    'fecha': '19 de octubre',
    'hora': '19:00',
    'lugar': 'Auditorio Central',
    'cupo': 130,
    'imagen':
        'https://images.unsplash.com/photo-1489599849927-2ee91cede3ba?w=900',
  },
  {
    'titulo': 'Concierto de Música Clásica',
    'categoria': 'Culturales',
    'fecha': '21 de octubre',
    'hora': '18:30',
    'lugar': 'Teatro Universitario',
    'cupo': 110,
    'imagen':
        'https://images.unsplash.com/photo-1465847899084-d164df4dedc6?w=900',
  },
  {
    'titulo': 'Demo Day de Startups',
    'categoria': 'Tecnología',
    'fecha': '23 de octubre',
    'hora': '16:00',
    'lugar': 'Centro de Innovación',
    'cupo': 65,
    'imagen':
        'https://images.unsplash.com/photo-1519389950473-47ba0277781c?w=900',
  },
  {
    'titulo': 'Taller de Diseño UX/UI',
    'categoria': 'Talleres',
    'fecha': '25 de octubre',
    'hora': '14:00',
    'lugar': 'Laboratorio de Cómputo',
    'cupo': 30,
    'imagen':
        'https://images.unsplash.com/photo-1581291518857-4e27b48ff24e?w=900',
  },
];