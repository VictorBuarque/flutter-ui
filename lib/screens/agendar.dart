import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/homescreen',
    routes: {
      '/homescreen': (context) => const HomeScreen(),
      '/agendar': (context) => const Agendar(),
    },
  ));
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            Navigator.pushNamed(context, '/agendar');
          },
        ),
      ),
      body: const Center(
        child: Text(
          'Página Inicial',
          style: TextStyle(
            fontSize: 24,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

class Agendar extends StatelessWidget {
  const Agendar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF42A5F5),
      appBar: AppBar(
        backgroundColor: const Color(0xFF42A5F5),
        title: const Center(
          child: Text(
            'Agendar',
            style: TextStyle(
              fontSize: 24,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Image.asset(
                'assets/images/agendar.png',
                width: 300,
                height: 100,
                fit: BoxFit.cover,
              ),
              _buildInputField('Nome:'),
              _buildInputField('Sobrenome:'),
              _buildInputField('Número de Telefone:'),
              _buildInputField('E-mail:'),
              _buildInputField('Data:'),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        // Ação quando o botão "Enviar" é pressionado
                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                            Colors.green), // Cor de fundo padrão
                        overlayColor: MaterialStateProperty.all<Color>(
                            Colors.greenAccent), // Cor de fundo quando pressionado
                        foregroundColor: MaterialStateProperty.all<Color>(
                            Colors.white), // Cor do texto
                      ),
                      child: const Text('Enviar'),
                    ),
                    const SizedBox(width: 20), // Espaço entre os botões
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pop(
                            context); // Retorna para a tela anterior (Home)
                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                            Colors.red), // Cor de fundo padrão
                        overlayColor: MaterialStateProperty.all<Color>(
                            Colors.redAccent), // Cor de fundo quando pressionado
                        foregroundColor: MaterialStateProperty.all<Color>(
                            Colors.white), // Cor do texto
                      ),
                      child: const Text('Voltar'),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildInputField(String title) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 18,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          width: 300,
          height: 40,
          child: TextFormField(
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white,
              hintText: 'Informe a(o) $title',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5.0),
                borderSide: BorderSide.none,
              ),
            ),
          ),
        ),
        const SizedBox(height: 10),
      ],
    );
  }
}
