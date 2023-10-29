import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF42A5F5),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          children: [
            const Center(
            child: Text(
              'FluidOps Services',
              style: TextStyle(
                fontSize: 24,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            ),
            const SizedBox(height: 20),
            TextFormField(
              decoration: InputDecoration(
                filled: true,
                hintText: 'Hello',
                prefixIcon: const Icon(Icons.search, color: Color(0xFF42A5F5)),
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5.0),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
            const SizedBox(height: 20),
            _buildImageWithTitle(
              'assets/images/agendar.png',
              'Agendar uma visita',
              '/agendar', // Rota para redirecionamento
            ),
            _buildImageWithTitle(
              'assets/images/laudo.jpeg',
              'Checar Status Serviço',
              '/laudo', // Rota para redirecionamento
            ),
            _buildImageWithTitle(
              'assets/images/image3.png',
              'Solicitar Nova Vistoria',
              '/vistoria', // Rota para redirecionamento
            ),
            _buildImageWithTitle(
              'assets/images/servicos.jpeg',
              'Solicitar Outros serviços',
              '/servicos', // Rota para redirecionamento
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildImageWithTitle(String imagePath, String title, String route) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed(route);
      },
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Text(
              title,
              style: const TextStyle(
                fontSize: 18,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            width: double.infinity,
            height: 200,
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Image.asset(
              imagePath,
              width: double.infinity,
              height: 200,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}
