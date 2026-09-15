import 'package:flutter/material.dart';
import 'styles.dart';

void main() {
  runApp(const NutriFitApp());
}

class NutriFitApp extends StatelessWidget {
  const NutriFitApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'NutriFit',
      theme: ThemeData(
        fontFamily: 'Arial',
        scaffoldBackgroundColor: AppColors.background,
        colorScheme: ColorScheme.fromSeed(
          seedColor: AppColors.green,
        ),
      ),
      home: const HomePage(),
    );
  }
}

// ======================================================
// HOME
// ======================================================

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,

      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Row(
          children: [
            Container(
              width: 42,
              height: 42,
              decoration: BoxDecoration(
                color: AppColors.green,
                borderRadius: BorderRadius.circular(12),
              ),
              child: const Icon(
                Icons.eco,
                color: Colors.white,
              ),
            ),

            const SizedBox(width: 10),

            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'NutriFit',
                  style: TextStyle(
                    color: AppColors.dark,
                    fontSize: 21,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'ALIMENTAÇÃO INTELIGENTE',
                  style: TextStyle(
                    color: AppColors.gray,
                    fontSize: 8,
                    letterSpacing: 1,
                  ),
                ),
              ],
            ),
          ],
        ),

        actions: [
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => const LoginPage(),
                ),
              );
            },
            child: const Text(
              'Entrar',
              style: TextStyle(
                color: AppColors.dark,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          const SizedBox(width: 5),

          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => const CadastroPage(),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.green,
                foregroundColor: Colors.white,
              ),
              child: const Text('Cadastrar'),
            ),
          ),
        ],
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [

            // ================= HERO =================

            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(35),
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color(0xFFE9FFF1),
                    Colors.white,
                  ],
                ),
              ),

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 15,
                      vertical: 8,
                    ),
                    decoration: BoxDecoration(
                      color: AppColors.lightGreen,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: const Text(
                      '🌱 Nutrição Inteligente e Sob Medida',
                      style: TextStyle(
                        color: AppColors.darkGreen,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),

                  const SizedBox(height: 25),

                  const Text(
                    'Sua jornada para uma\nvida saudável começa aqui.',
                    style: AppStyles.title,
                  ),

                  const SizedBox(height: 20),

                  const Text(
                    'Descomplicamos a alimentação equilibrada. '
                        'Monte cardápios personalizados e acompanhe '
                        'sua alimentação em uma única plataforma.',
                    style: AppStyles.subtitle,
                  ),

                  const SizedBox(height: 30),

                  Row(
                    children: [

                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => const CardapioPage(),
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: AppColors.green,
                          foregroundColor: Colors.white,
                          padding: const EdgeInsets.symmetric(
                            horizontal: 25,
                            vertical: 18,
                          ),
                        ),
                        child: const Text(
                          'Começar Grátis Agora →',
                        ),
                      ),

                      const SizedBox(width: 15),

                      OutlinedButton(
                        onPressed: () {},
                        style: OutlinedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 20,
                            vertical: 18,
                          ),
                        ),
                        child: const Text(
                          'Calcular Minhas Necessidades',
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 35),

                  const Row(
                    children: [
                      InfoNumber(
                        numero: '+10k',
                        texto: 'Refeições criadas',
                      ),
                      SizedBox(width: 35),
                      InfoNumber(
                        numero: '98%',
                        texto: 'Satisfação',
                      ),
                      SizedBox(width: 35),
                      InfoNumber(
                        numero: '+15k',
                        texto: 'Membros ativos',
                      ),
                    ],
                  ),
                ],
              ),
            ),

            // ================= RECEITAS =================

            const SizedBox(height: 50),

            const Text(
              'CARDÁPIO INSPIRADOR',
              style: TextStyle(
                color: AppColors.green,
                fontWeight: FontWeight.bold,
                letterSpacing: 1.5,
              ),
            ),

            const SizedBox(height: 8),

            const Text(
              'Receitas em Destaque',
              style: AppStyles.sectionTitle,
            ),

            const SizedBox(height: 25),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Wrap(
                spacing: 18,
                runSpacing: 18,
                children: const [

                  ReceitaCard(
                    emoji: '🐟',
                    nome: 'Salmão Grelhado',
                    descricao: 'Salmão, aspargos e legumes.',
                    kcal: '380 kcal',
                    tempo: '20 min',
                  ),

                  ReceitaCard(
                    emoji: '🥗',
                    nome: 'Bowl Vegano',
                    descricao: 'Quinoa, grão de bico e vegetais.',
                    kcal: '340 kcal',
                    tempo: '15 min',
                  ),

                  ReceitaCard(
                    emoji: '🍳',
                    nome: 'Omelete Fit',
                    descricao: 'Espinafre, ricota e ovos.',
                    kcal: '250 kcal',
                    tempo: '10 min',
                  ),

                  ReceitaCard(
                    emoji: '🍓',
                    nome: 'Bowl de Açaí',
                    descricao: 'Açaí, frutas e aveia.',
                    kcal: '310 kcal',
                    tempo: '5 min',
                  ),

                  ReceitaCard(
                    emoji: '🌯',
                    nome: 'Wrap Low Carb',
                    descricao: 'Frango desfiado e vegetais.',
                    kcal: '290 kcal',
                    tempo: '12 min',
                  ),

                  ReceitaCard(
                    emoji: '🥑',
                    nome: 'Salada Mediterrânea',
                    descricao: 'Tofu, folhas e vegetais.',
                    kcal: '280 kcal',
                    tempo: '15 min',
                  ),
                ],
              ),
            ),

            // ================= PLANOS =================

            const SizedBox(height: 70),

            const Text(
              'PLANOS ACESSÍVEIS',
              style: TextStyle(
                color: AppColors.green,
                fontWeight: FontWeight.bold,
                letterSpacing: 1.5,
              ),
            ),

            const SizedBox(height: 8),

            const Text(
              'Escolha o plano ideal para seus objetivos',
              textAlign: TextAlign.center,
              style: AppStyles.sectionTitle,
            ),

            const SizedBox(height: 30),

            Padding(
              padding: const EdgeInsets.all(20),
              child: Wrap(
                spacing: 20,
                runSpacing: 20,
                children: const [

                  PlanoCard(
                    nome: 'INICIANTE',
                    preco: 'Grátis',
                    descricao: 'Para começar uma alimentação saudável.',
                  ),

                  PlanoCard(
                    nome: 'NUTRIFIT PRO',
                    preco: 'R\$ 19,90/mês',
                    descricao: 'Recursos completos para seus objetivos.',
                    destaque: true,
                  ),

                  PlanoCard(
                    nome: 'PREMIUM',
                    preco: 'R\$ 39,90/mês',
                    descricao: 'Acompanhamento completo e personalizado.',
                  ),
                ],
              ),
            ),

            // ================= DEPOIMENTOS =================

            const SizedBox(height: 70),

            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(35),
              color: AppColors.background,
              child: Column(
                children: [

                  const Text(
                    'COMUNIDADE NUTRIFIT',
                    style: TextStyle(
                      color: AppColors.green,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 10),

                  const Text(
                    'O que nossos membros dizem',
                    style: AppStyles.sectionTitle,
                  ),

                  const SizedBox(height: 30),

                  Wrap(
                    spacing: 20,
                    runSpacing: 20,
                    children: const [

                      Depoimento(
                        nome: 'Mariana Silva',
                        texto:
                        'O NutriFit facilitou minha vida com receitas rápidas e saudáveis.',
                      ),

                      Depoimento(
                        nome: 'Lucas Lima',
                        texto:
                        'As consultas e os cardápios me ajudaram muito.',
                      ),

                      Depoimento(
                        nome: 'Camila Santos',
                        texto:
                        'Descobri receitas incríveis e super nutritivas.',
                      ),
                    ],
                  ),
                ],
              ),
            ),

            // ================= CTA =================

            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(45),
              color: AppColors.green,
              child: Column(
                children: [

                  const Text(
                    'Pronto para transformar sua alimentação hoje?',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 15),

                  const Text(
                    'Crie sua conta gratuitamente e comece agora.',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),

                  const SizedBox(height: 25),

                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => const CadastroPage(),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: AppColors.darkGreen,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 30,
                        vertical: 16,
                      ),
                    ),
                    child: const Text(
                      'Cadastre-se Gratuitamente',
                    ),
                  ),
                ],
              ),
            ),

            // ================= FOOTER =================

            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(35),
              color: AppColors.dark,
              child: const Column(
                children: [

                  Text(
                    '🌿 NutriFit',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  SizedBox(height: 10),

                  Text(
                    'Sua plataforma inteligente de nutrição.',
                    style: TextStyle(
                      color: Colors.white60,
                    ),
                  ),

                  SizedBox(height: 15),

                  Text(
                    '© 2026 NutriFit - Todos os direitos reservados.',
                    style: TextStyle(
                      color: Colors.white38,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// ======================================================
// COMPONENTES
// ======================================================

class InfoNumber extends StatelessWidget {
  final String numero;
  final String texto;

  const InfoNumber({
    super.key,
    required this.numero,
    required this.texto,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          numero,
          style: const TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: AppColors.dark,
          ),
        ),
        Text(
          texto,
          style: AppStyles.cardText,
        ),
      ],
    );
  }
}

class ReceitaCard extends StatelessWidget {
  final String emoji;
  final String nome;
  final String descricao;
  final String kcal;
  final String tempo;

  const ReceitaCard({
    super.key,
    required this.emoji,
    required this.nome,
    required this.descricao,
    required this.kcal,
    required this.tempo,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 330,
      child: Card(
        elevation: 2,
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18),
        ),
        child: Padding(
          padding: const EdgeInsets.all(18),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Container(
                width: double.infinity,
                height: 140,
                decoration: BoxDecoration(
                  color: AppColors.lightGreen,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Center(
                  child: Text(
                    emoji,
                    style: const TextStyle(
                      fontSize: 70,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 15),

              Text(
                nome,
                style: AppStyles.cardTitle,
              ),

              const SizedBox(height: 6),

              Text(
                descricao,
                style: AppStyles.cardText,
              ),

              const SizedBox(height: 10),

              Text(
                '🔥 $kcal    ⏱ $tempo',
                style: const TextStyle(
                  color: AppColors.green,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 15),

              SizedBox(
                width: double.infinity,
                child: OutlinedButton(
                  onPressed: () {},
                  child: const Text(
                    'Ver Receita Completa',
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class PlanoCard extends StatelessWidget {
  final String nome;
  final String preco;
  final String descricao;
  final bool destaque;

  const PlanoCard({
    super.key,
    required this.nome,
    required this.preco,
    required this.descricao,
    this.destaque = false,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      child: Card(
        color: destaque
            ? AppColors.darkGreen
            : Colors.white,
        elevation: 3,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18),
        ),
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: Column(
            children: [

              Text(
                nome,
                style: TextStyle(
                  color: destaque
                      ? Colors.white
                      : AppColors.gray,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 20),

              Text(
                preco,
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: destaque
                      ? Colors.white
                      : AppColors.dark,
                ),
              ),

              const SizedBox(height: 15),

              Text(
                descricao,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: destaque
                      ? Colors.white70
                      : AppColors.gray,
                ),
              ),

              const SizedBox(height: 25),

              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: destaque
                      ? AppColors.green
                      : AppColors.dark,
                  foregroundColor: Colors.white,
                ),
                child: const Text('Escolher Plano'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Depoimento extends StatelessWidget {
  final String nome;
  final String texto;

  const Depoimento({
    super.key,
    required this.nome,
    required this.texto,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      child: Card(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              const Text(
                '★★★★★',
                style: TextStyle(
                  color: Colors.amber,
                  fontSize: 18,
                ),
              ),

              const SizedBox(height: 12),

              Text(
                '"$texto"',
                style: AppStyles.cardText,
              ),

              const SizedBox(height: 15),

              Text(
                nome,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: AppColors.dark,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// ======================================================
// LOGIN
// ======================================================

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Entrar'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            const Icon(
              Icons.eco,
              size: 70,
              color: AppColors.green,
            ),

            const SizedBox(height: 20),

            const Text(
              'Bem-vindo à NutriFit!',
              style: AppStyles.sectionTitle,
            ),

            const SizedBox(height: 30),

            const TextField(
              decoration: InputDecoration(
                labelText: 'E-mail',
                border: OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 15),

            const TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Senha',
                border: OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 20),

            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text('Entrar'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// ======================================================
// CADASTRO
// ======================================================

class CadastroPage extends StatelessWidget {
  const CadastroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Criar Conta'),
      ),

      body: Padding(
        padding: const EdgeInsets.all(25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            const Text(
              'Crie sua conta NutriFit',
              style: AppStyles.sectionTitle,
            ),

            const SizedBox(height: 25),

            const TextField(
              decoration: InputDecoration(
                labelText: 'Nome completo',
                border: OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 15),

            const TextField(
              decoration: InputDecoration(
                labelText: 'E-mail',
                border: OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 15),

            const TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Senha',
                border: OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 20),

            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text('Cadastrar'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// ======================================================
// CARDÁPIO
// ======================================================

class CardapioPage extends StatelessWidget {
  const CardapioPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cardápio NutriFit'),
        backgroundColor: AppColors.green,
        foregroundColor: Colors.white,
      ),

      body: ListView(
        padding: const EdgeInsets.all(20),
        children: const [

          ReceitaCard(
            emoji: '🥗',
            nome: 'Salada de Frango',
            descricao: 'Frango grelhado, folhas e legumes.',
            kcal: '320 kcal',
            tempo: '15 min',
          ),

          SizedBox(height: 15),

          ReceitaCard(
            emoji: '🍓',
            nome: 'Bowl de Frutas',
            descricao: 'Frutas frescas, aveia e iogurte.',
            kcal: '280 kcal',
            tempo: '5 min',
          ),

          SizedBox(height: 15),

          ReceitaCard(
            emoji: '🥑',
            nome: 'Tostada de Abacate',
            descricao: 'Pão integral, abacate e ovo.',
            kcal: '300 kcal',
            tempo: '10 min',
          ),

          SizedBox(height: 15),

          ReceitaCard(
            emoji: '🍗',
            nome: 'Frango com Legumes',
            descricao: 'Frango grelhado com legumes.',
            kcal: '390 kcal',
            tempo: '20 min',
          ),
        ],
      ),
    );
  }
}