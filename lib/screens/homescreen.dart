import 'package:flutter/material.dart';
import 'package:flutter_ui/screens/agendar.dart';
import 'package:flutter_ui/screens/checarservico.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

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
        title: Center(
          child: const Text(
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
            UserAccountsDrawerHeader(
              accountName: const Text('Victor Gabriel'),
              accountEmail: const Text('victor.silva8@ba.estudante.senai.br'),
              currentAccountPicture: const CircleAvatar(
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
                // Execute a ação desejada, como navegar para outra tela
              },
            ),
            ListTile(
              title: const Text('Ajuda'),
              onTap: () {
                Navigator.of(context).pop(); // Fecha o menu
                // Execute a ação desejada, como navegar para outra tela
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
              '/checarservico', // Rota para redirecionamento
            ),
            _buildImageWithTitle(
              'assets/images/vistoria.png',
              'Solicitar Nova Vistoria',
              '/vistoria', // Rota para redirecionamento
            ),
            _buildImageWithTitle(
              'assets/images/servicos.png',
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
        '/': (context) => HomeScreen(),
        '/agendar': (context) => Agendar(),
        '/checar_servico':(context) =>ChecarServico()
      },
    ),
  );
}
