import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Cursos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Roadmaps'),
      ),
      body: ListView(
        padding: EdgeInsets.all(20.0),
        children: [
          SizedBox(height: 20.0),
          CourseCard(
              title: 'Como Funciona o Dinheiro',
              description:
                  'Entenda de uma vez por todas como funciona o dinhehiro e nossa economia.',
              instructor: 'Bruno Perrucho e Eduardo Feldberg',
              onPressed: () {
                context.push('/playlisteconomia');
              }),
          SizedBox(height: 20.0),
          CourseCard(
            title: 'Como Montar uma Carteira de Investimentos',
            description:
                'Como montar do zero uam carteira de investimento diversificada na visão dos 3 maiores nomes de finaças do Brasil.',
            instructor:
                'Tiagro Nigro, Gustavo Serbasi e Raul - Investidor Sardinha',
            onPressed: () {
              context.push('/playlistcarteirainvest');
            },
          ),
          SizedBox(height: 20.0),
          CourseCard(
            title:
                'Como Escolher a Melhor Corretora e o melhor banco para você ',
            description:
                'Entenda de uma vez por todas qual é o melhor banco e a melhor corretora para voce investir com segurança.',
            instructor: 'Nathalia Arcuri e Economista Sincero',
            onPressed: () {
              context.push('/playlistMelhorBanco');
            },
          ),
          SizedBox(height: 20.0),
          CourseCard(
            title: 'Oque é Trade ? ',
            description:
                'Aprenda a analisar gráficos e identificar tendências do mercado de ações com Day e Swing Trade.',
            instructor: 'Caio Caúla e Humbled Trader',
            onPressed: () {
              context.push('/playlistTrade');
            },
          ),
        ],
      ),
    );
  }

  void _navigateToCourseDetails(BuildContext context, String title,
      String description, String instructor) {
    Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) => CourseDetailsScreen(
              title: title, description: description, instructor: instructor)),
    );
  }
}

class CourseCard extends StatelessWidget {
  final String title;
  final String description;
  final String instructor;
  final VoidCallback onPressed;

  const CourseCard({
    Key? key,
    required this.title,
    required this.description,
    required this.instructor,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0,
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8.0),
            Text(
              description,
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 8.0),
            Text(
              'Instrutor: $instructor',
              style: TextStyle(fontSize: 14.0),
            ),
            SizedBox(height: 8.0),
            ElevatedButton(
              onPressed: onPressed,
              child: Text('Iniciar'),
            ),
          ],
        ),
      ),
    );
  }
}

class CourseDetailsScreen extends StatelessWidget {
  final String title;
  final String description;
  final String instructor;

  const CourseDetailsScreen(
      {Key? key,
      required this.title,
      required this.description,
      required this.instructor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title,
              style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16.0),
            Text(
              description,
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 16.0),
            Text(
              'Instrutor: $instructor',
              style: TextStyle(fontSize: 14.0),
            ),
          ],
        ),
      ),
    );
  }
}
