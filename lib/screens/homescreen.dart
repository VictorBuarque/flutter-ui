import 'package:flutter/material.dart';
import 'package:flutter_ui/screens/agendar.dart';
import 'package:flutter_ui/screens/checarservico.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: const Color(0xFF42A5F5),
      appBar: AppBar(
        backgroundColor: const Color(0xFF42A5F5),
        title: const Center(
          child: Text(
            'FluidOps Services',
            style: TextStyle(
              fontSize: 24,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        leading: IconButton(
          icon: const Icon(
            Icons.menu,
            color: Colors.white,
          ),
          onPressed: () {
            _scaffoldKey.currentState!.openDrawer();
          },
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const UserAccountsDrawerHeader(
              accountName: Text('Victor Gabriel'),
              accountEmail: Text('victor.silva8@ba.estudante.senai.br'),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white,
                child: Text(
                  'V',
                  style: TextStyle(fontSize: 40.0),
                ),
              ),
            ),
            ListTile(
              title: const Text('Sua conta'),
              onTap: () {
                Navigator.of(context).pop(); // Fecha o menu
              },
            ),
            ListTile(
              title: const Text('Ajuda'),
              onTap: () {
                Navigator.of(context).pop(); // Fecha o menu
                
              },
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          children: [
            const SizedBox(height: 20),
            _buildImageWithTitle(
              'assets/images/agendar.png',
              'Agendar uma visita',
              '/agendar', // Rota para redirecionamento
            ),
            _buildImageWithTitle(
              'assets/images/laudo.png',
              'Checar Status Serviço',
              '/checar_servico', 
            ),
            _buildImageWithTitle(
              'assets/images/vistoria.png',
              'Solicitar Nova Vistoria',
              '/vistoria', 
            ),
            _buildImageWithTitle(
              'assets/images/servicos.png',
              'Solicitar Outros serviços',
              '/servicos', 
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
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(10),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                imagePath,
                width: null,
                height: 300,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}

void main() {
  runApp(
    MaterialApp(
      initialRoute: '/homescreen',
      routes: {
        '/': (context) => const HomeScreen(),
        '/agendar': (context) => const Agendar(),
        '/checar_servico':(context) =>const ChecarServico()
      },
    ),
  );
}
