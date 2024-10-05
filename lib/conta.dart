import 'package:flutter/material.dart';
 
void main() => runApp(const conta());  
 
class conta extends StatelessWidget {  
  const conta({super.key});
 
  @override
  Widget build(BuildContext context) {
    return Column(  
        mainAxisAlignment: MainAxisAlignment.start,  // Alinha verticalmente
        crossAxisAlignment: CrossAxisAlignment.start,  // Alinha horizontalmente
        children: [
          Row(  // Cria uma linha com texto e ícone
            mainAxisAlignment: MainAxisAlignment.spaceBetween,  // Distribui espaço entre os itens
            children: [
              Text(
                "Conta", 
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),  
              ),
              IconButton(  
                  onPressed: () {},  
                  icon: Icon(Icons.arrow_forward_ios_outlined,
                      color: Color(0xffc5c5c5))),  
            ],
          ),
          SizedBox(  // Espaço entre os elementos
            height: 10,
          ),
          Container(  
            child: Text(
              "R\$ 100.000",  
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26),  
            ),
          ),
          SizedBox(
            height: 30,  
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  child: Column(children: [
                    IconButton.filledTonal(
                        style: ButtonStyle(
                            fixedSize: MaterialStatePropertyAll<Size>(
                                Size.fromRadius(30))),
                        onPressed: () {}, //Função de clicar
                        icon: Icon( Icons.pix,
                        color: Color(0xff191919),
                        )),
                    Text("Pix", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),)
                  ]),
                ),
                Container(
                  child: Column(children: [
                    IconButton.filledTonal(
                        style: ButtonStyle(
                            fixedSize: MaterialStatePropertyAll<Size>(
                                Size.fromRadius(30))),
                        onPressed: () {},
                        icon: Icon(Icons.money,
                          color: Color(0xff191919),
                        )),
                    Text("Pagar", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),)
                  ]),
                ),
                Container(
                  child: Column(children: [
                    IconButton.filledTonal(
                        style: ButtonStyle(
                            fixedSize: MaterialStatePropertyAll<Size>(
                                Size.fromRadius(30))),
                        onPressed: () {},
                        icon: Icon(Icons.qr_code,
                          color: Color(0xff191919),
                        )),
                    Text("QRcode", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),)
                  ]),
                ),
                Container(
                  child: Column(children: [
                    IconButton.filledTonal(
                        style: ButtonStyle(
                            fixedSize: MaterialStatePropertyAll<Size>(
                                Size.fromRadius(30))),
                        onPressed: () {},
                        icon: Icon(Icons.attach_money,
                          color: Color(0xff191919),
                        )),
                    Text("Transferir", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),)
                  ]),
                ),
              ],
            ),
          ),
          SizedBox(height: 30),  
          Container( 
            child: Column(
              children: [
                Card(  
                  margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 5.0), 
                  color: Color(0xffececec),  
                  elevation: 0,
                  child: ListTile(  // Item de lista com ícone
                    contentPadding: EdgeInsets.all(15),
                    leading: Icon(Icons.payment_outlined),
                    title: Text('Meus Cartões',
                    style: TextStyle(fontWeight: FontWeight.bold)),
                  ),
                ),
                SizedBox(height: 30),
                Card( 
                  margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 5.0),
                  color: Color(0xffececec),
                  elevation: 0,
                  child: ListTile(
                    title: Text('Guarde seu dinheiro em caixinhas',
                    style: TextStyle(fontWeight: FontWeight.bold, color: Color(0xFF8A05BE))),
                    subtitle: Text('Acessando a área de planejamento'),
                  ),
                ),
              ],
            ),
          ),
          Padding(padding: EdgeInsets.fromLTRB(0, 30, 0, 30),  // Divisão entre as seções
          child: Divider(height: 1)),
          Container(  
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(  
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Cartão de Crédito',  
                      style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
                    ),
                    IconButton(
                      onPressed: () {},  
                      icon: Icon(Icons.arrow_forward_ios_outlined, color: Color(0xffc5c5c5)),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Text('Fatura Fechada', style: TextStyle(fontSize: 18, color: Colors.black54)), 
                SizedBox(height: 10),
                Text('R\$2.123,39', style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500)),  
                SizedBox(height: 15),
                Text('Vencimento dia 15', style: TextStyle(fontSize: 18, color: Colors.black54)),  
                SizedBox(height: 15),
                ElevatedButton(  
                  onPressed: () {},
                  child: Text('Renegociar', style: TextStyle(color: Colors.black, fontSize: 18)),
                  style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(Color(0xFF8A05BE))),
                )
              ],
            ),
          ),
          Padding(padding: EdgeInsets.fromLTRB(0, 30, 0, 30),  
          child: Divider(height: 1)),
          Container(  
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(  
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Empréstimo', style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500, color:Colors.black)),
                    IconButton(
                      onPressed: () {},  
                      icon: Icon(Icons.arrow_forward_ios_outlined, color: Color(0xffc5c5c5)),
                    ),
                  ],
                ),
                Text('Tudo certo! Você está em dia', style: TextStyle(fontSize: 18, color: Color(0xffb5b5b5))),  
              ],
            ),
          ),
          Padding(padding: EdgeInsets.fromLTRB(0, 30, 0, 30),  
          child: Divider(height: 1)),
          Container(  // Seção "Descubra Mais"
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Descubra Mais', style: TextStyle(fontSize: 24)),  
                  Card(  // Exibe o seguro de vida
                    elevation: 0,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Container(
                          height: 150.0,
                          decoration: BoxDecoration(
                            image: const DecorationImage(
                              image: AssetImage('images/SeguroVida.PNG'),  // Imagem do seguro de vida
                              fit: BoxFit.cover,
                            ),
                            borderRadius: const BorderRadius.only( //Ajuste borda da imagem
                              topLeft: Radius.circular(16.0),
                              topRight: Radius.circular(16.0),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Seguro de Vida', 
                                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                              SizedBox(height: 8),
                              Text('Cuide bem de quem você ama de um jeito simples',
                                style: TextStyle(fontSize: 18, color: Colors.black54)),  
                            ],
                          ),
                        ),
                        Padding(padding: EdgeInsets.fromLTRB(0, 5, 0, 10)),
                        ButtonBar(  
                          alignment: MainAxisAlignment.start,
                          children: <Widget>[
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Color(0xFF8A05BE), 
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(18.0),
                                ),
                              ),
                              onPressed: () {}, 
                              child: Text('Conhecer', style: TextStyle(color: Colors.black)),
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              )
          ),
        ]);
  }
}
