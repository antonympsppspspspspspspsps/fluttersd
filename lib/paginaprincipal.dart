
import 'package:flutter/material.dart';

import 'package:aulas/segundapagina.dart';


class paginaprincipal extends StatelessWidget {
  const paginaprincipal({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(


        appBar: AppBar(
          title: const Text('Antony'),
        ),
      drawer: SafeArea(
        child: Drawer(
            child: ListView(

              children:  [
                UserAccountsDrawerHeader(
                  currentAccountPicture: CircleAvatar(child: Icon(Icons.person),),

                  accountName: Text(
                      "Antony",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),),
                  accountEmail: Text("antony.8993@aluno.pr.senac.br"),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                            "https://blog.sebastiano.dev/content/images/2019/07/1_l3wujEgEKOecwVzf_dqVrQ.jpeg"
                        ),
                        fit: BoxFit.fill),
                  ),
                ),


                ListTile(
                  trailing: CircleAvatar(child: Icon(Icons.settings)),
                  leading: Icon(Icons.mouse),
                  title:  Text("teste"),
                  subtitle: Text("aprovado"),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) {
                            return const paginaprincipal();
                          },
                      ),
                    );
                  },
                ),
                Divider(
                  height: 15,
                  thickness: 2,
                ),
                ListTile(
                  trailing: CircleAvatar(child: Icon(Icons.add)),
                  leading: Icon(Icons.add_call),
                  title:  Text("teste"),
                  subtitle: Text("aprovado"),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return const paginaprincipal();
                        },
                      ),
                    );
                  },
                ),
                Divider(
                  height: 15,
                  thickness: 2,
                ),
                ListTile(
                  trailing: CircleAvatar(child: Icon(Icons.ac_unit)),
                  leading: Icon(Icons.ad_units_sharp),
                  title:  Text("teste"),
                  subtitle: Text("aprovado"),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return const paginaprincipal();
                        },
                      ),
                    );
                  },
                ),
                Divider(
                  height: 15,
                  thickness: 2,
                ),
              ],
            )
        ),
      ),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const Paginasegunda();
                  }
                )
              );
              // Ação ao pressionar o botão
              print('Botão pressionado');
            },
            child: Text('Proxima página'),
          ),
        ),
      );

  }
}