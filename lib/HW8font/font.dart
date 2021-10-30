import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class font extends StatefulWidget {
  const font({Key? key}) : super(key: key);

  @override
  _fontState createState() => _fontState();
}

class _fontState extends State<font> {
  @override
  var i=0;
  _PromptButton() {
    setState(() {
      i=1;
    });
  }_KanitButton() {
    setState(() {
      i=2;
    });
  }_Chakra_PetchButton() {
    setState(() {
      i=3;
    });
  }_SarabunButton() {
    setState(() {
      i=4;
    });
  }_TavirajButton() {
    setState(() {
      i=5;
    });
  }_BaiJamjureeButton() {
    setState(() {
      i=6;
    });
  }_MitrButton() {
    setState(() {
      i=7;
    });
  }_MailButton() {
    setState(() {
      i=8;
    });
  }_PridiButton() {
    setState(() {
      i=9;
    });
  }_IBMButton() {
    setState(() {
      i=10;
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('THAI FONT VIEWER'),
      ),
      body: Container(
        color: Colors.teal.shade100,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [

              Expanded(
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      if(i==0)
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            'การเดินทางขากลับคงจะเหงาน่าดู',
                            style: TextStyle(fontSize: 65.0),
                            textAlign: TextAlign.center,
                          ),
                        ), if(i==1)
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'การเดินทางขากลับคงจะเหงาน่าดู',
                            style: GoogleFonts.prompt(fontSize: 65.0),
                            textAlign: TextAlign.center,
                          ),
                        ), if(i==2) Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'การเดินทางขากลับคงจะเหงาน่าดู',
                          style: GoogleFonts.kanit(fontSize: 65.0),textAlign: TextAlign.center,
                        ),
                      ),if (i==3) Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'การเดินทางขากลับคงจะเหงาน่าดู',
                          style: GoogleFonts.chakraPetch(fontSize: 65.0),textAlign: TextAlign.center,
                        ),
                      ),if(i==4) Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'การเดินทางขากลับคงจะเหงาน่าดู',
                          style: GoogleFonts.sarabun(fontSize: 65.0),textAlign: TextAlign.center,
                        ),
                      ),if(i==5) Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'การเดินทางขากลับคงจะเหงาน่าดู',
                          style: GoogleFonts.taviraj(fontSize: 65.0),textAlign: TextAlign.center,
                        ),
                      ),if(i==6) Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'การเดินทางขากลับคงจะเหงาน่าดู',
                          style: GoogleFonts.baiJamjuree(fontSize: 65.0),textAlign: TextAlign.center,
                        ),
                      ),if(i==7) Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'การเดินทางขากลับคงจะเหงาน่าดู',
                          style: GoogleFonts.mitr(fontSize: 65.0),textAlign: TextAlign.center,
                        ),
                      ),if(i==8) Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'การเดินทางขากลับคงจะเหงาน่าดู',
                          style: GoogleFonts.mali(fontSize: 65.0),textAlign: TextAlign.center,
                        ),
                      ),if(i==9) Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'การเดินทางขากลับคงจะเหงาน่าดู',
                          style: GoogleFonts.pridi(fontSize: 65.0),textAlign: TextAlign.center,
                        ),
                      ),if(i==10) Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'การเดินทางขากลับคงจะเหงาน่าดู',
                          style: GoogleFonts.ibmPlexSans(fontSize: 65.0),textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  if(i==1)
                    Center(
                        child: Text(
                          'Font : Prompt ',
                          style: TextStyle(fontSize: 20.0),
                        )),if(i==2)
                    Center(
                        child: Text(
                          'Font : Kanit ',
                          style: TextStyle(fontSize: 20.0),
                        )),if(i==3)
                    Center(
                        child: Text(
                          'Font : Chakra Petch ',
                          style: TextStyle(fontSize: 20.0),
                        )),if(i==4)
                    Center(
                        child: Text(
                          'Font : Sarabun ',
                          style: TextStyle(fontSize: 20.0),
                        )),if(i==5)
                    Center(
                        child: Text(
                          'Font : Taviraj ',
                          style: TextStyle(fontSize: 20.0),
                        )),if(i==6)
                    Center(
                        child: Text(
                          'Font : Bai Jamjuree',
                          style: TextStyle(fontSize: 20.0),
                        )),if(i==7)
                    Center(
                        child: Text(
                          'Font : Mitr',
                          style: TextStyle(fontSize: 20.0),
                        )),if(i==8)
                    Center(
                        child: Text(
                          'Font : Mail',
                          style: TextStyle(fontSize: 20.0),
                        )),if(i==9)
                    Center(
                        child: Text(
                          'Font : Pridi',
                          style: TextStyle(fontSize: 20.0),
                        )),if(i==10)
                    Center(
                        child: Text(
                          'Font : IBM Plex Sans Thai',
                          style: TextStyle(fontSize: 20.0),
                        )),

                  Card(
                    elevation: 5.0,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Wrap(
                        alignment: WrapAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              ElevatedButton(
                                onPressed: _PromptButton,
                                child: Text('Prompt'),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 10.0,right: 10.0),
                                child: ElevatedButton(
                                  onPressed: _KanitButton,
                                  child: Text('Kanit'),
                                ),
                              ),
                              ElevatedButton(
                                onPressed: _Chakra_PetchButton,
                                child: Text('Chakra Petch'),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              ElevatedButton(
                                onPressed: _SarabunButton,
                                child: Text('Sarabun'),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 10.0,right: 10.0),
                                child: ElevatedButton(
                                  onPressed: _TavirajButton,
                                  child: Text('Taviraj'),
                                ),
                              ),
                              ElevatedButton(
                                onPressed: _BaiJamjureeButton,
                                child: Text('Bai Jamjuree'),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              ElevatedButton(
                                onPressed: _MitrButton,
                                child: Text('Mitr'),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 10.0,right: 10.0),
                                child: ElevatedButton(
                                  onPressed: _MailButton,
                                  child: Text('Mail'),
                                ),
                              ),
                              ElevatedButton(
                                onPressed: _PridiButton,
                                child: Text('Pridi'),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            //crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              TextButton(
                                  onPressed: _IBMButton,
                                  child: Text('IBM Plex Sans Thai'),//ปุ่มใส
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
