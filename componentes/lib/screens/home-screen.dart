import 'package:componentes/providers/menu_provider.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Componntes 5b'),
        ),
        body: _lista());
  }

  Widget _lista() {
    //   // print(menuProvider.opciones);
    //   menuProvider.loadData().then((options) {
    //     print(options);
    //   });
    //   return ListView(
    //     children: _listItems(),
    //   );
    // }
    return FutureBuilder(
        future: menuProvider.loadData(),
        initialData: const [],
        builder: (BuildContext context, AsyncSnapshot<List<dynamic>> snapchot) {
          return ListView(
            children: _listItems(snapchot.data as List<dynamic>, context),
          );
        });
  }

  List<Widget> _listItems(List<dynamic> data, BuildContext context) {
    // return [
    //   const ListTile(
    //     title: Text('titulo'),
    //     subtitle: Text('subtitulo'),
    //     leading: Icon(Icons.abc_sharp),
    //     trailing: Icon(Icons.keyboard_arrow_right),
    //   ),
    //   const ListTile(
    //     title: Text('titulo'),
    //     subtitle: Text('subtitulo'),
    //     leading: Icon(Icons.abc_sharp),
    //     trailing: Icon(Icons.keyboard_arrow_right),
    //   ),
    //   const ListTile(
    //     title: Text('titulo'),
    //     subtitle: Text('subtitulo'),
    //     leading: Icon(Icons.abc_sharp),
    //     trailing: Icon(Icons.keyboard_arrow_right),
    //   ),
    // ];
    final List<Widget> opciones = [];
    data.forEach((opt) {
      final item = ListTile(
        title: Text(opt['texto']),
        subtitle: Text(opt['texto2']),
        leading: const Icon(Icons.accessibility),
        trailing: const Icon(Icons.keyboard_arrow_left),
        onTap: () {},
      );
      opciones
        ..add(item)
        ..add(const Divider());
    });
    return opciones;
  }
}
