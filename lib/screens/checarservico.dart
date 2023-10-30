import 'package:flutter/material.dart';
import 'package:flutter_ui/routes/app_routes.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => const HomeScreen(),
      '/checar_servico': (context) => const ChecarServico(),
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
            Navigator.pushNamed(context, AppRoutes.checarservico);
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

class ChecarServico extends StatelessWidget {
  const ChecarServico({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF42A5F5),
      appBar: AppBar(
        backgroundColor: const Color(0xFF42A5F5),
        title: const Center(
          child: Text(
            'ChecarServico',
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
                'assets/images/laudo.png',
                width: 300,
                height: 100,
                fit: BoxFit.cover,
              ),
              _buildInputField('Informe Nº O.S:'),
              _buildInputField('Nome do Solicitante:'),
              _buildInputField('Data da Solicitação:'),
              const SizedBox(height: 20),
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
                      child: const Text('Buscar'),
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
