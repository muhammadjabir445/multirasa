import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mobile/bloc/MasterInpeksibloc/master_inpeksi_bloc.dart';
import 'package:mobile/models/MasterInpeksiModel.dart';

class FormTransaksi extends StatefulWidget {
  const FormTransaksi({Key? key}) : super(key: key);

  @override
  _FormTransaksiState createState() => _FormTransaksiState();
}

class _FormTransaksiState extends State<FormTransaksi> {
  late MasterInpeksiBloc masterinpeksiB = context.read<MasterInpeksiBloc>();

  late TextEditingController _dateController;
  late TextEditingController _textController;
  late String _feedback = '';

  @override
  void initState() {
    super.initState();
    masterinpeksiB.add(MasterInpeksiGetDataEvent());

    // Inisialisasi controller
    _dateController = TextEditingController();
    _textController = TextEditingController();
  }

  @override
  void dispose() {
    // Pastikan untuk membebaskan sumber daya controller
    _dateController.dispose();
    _textController.dispose();
    super.dispose();
  }

  Future<void> _selectDate(BuildContext context) async {
    final DateTime picked = (await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    ))!;

    if (picked != null && picked != DateTime.now()) {
      setState(() {
        _dateController.text =
            picked.toString().substring(0, 10); // Ambil bagian tanggal
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Form Inpeksi"),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0), // Tambahkan padding
        child: ListView(
          children: [
            TextField(
              controller: _dateController,
              decoration: InputDecoration(labelText: 'Tanggal Inpeksi'),
              readOnly: true,
              onTap: () => _selectDate(context),
            ),
            SizedBox(height: 16),
            TextField(
              controller: _textController,
              decoration: InputDecoration(labelText: 'Toko'),
            ),
            SizedBox(height: 16),
            BlocBuilder<MasterInpeksiBloc, MasterInpeksiStat>(
              builder: (context, state) {
                return state.masterInpeksi.length > 0
                    ? Column(
                        children: [
                          ListView.builder(
                            itemCount: state.masterInpeksi.length,
                            shrinkWrap: true,
                            physics: NeverScrollableScrollPhysics(),
                            itemBuilder: (context, index) {
                              MasterInpeksiModel categoryInpeksi =
                                  state.masterInpeksi[index];
                              return Padding(
                                padding: const EdgeInsets.only(bottom: 20),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("${categoryInpeksi.name}"),
                                    ListView.builder(
                                      itemCount: categoryInpeksi
                                          .masterInpeksis!.length,
                                      shrinkWrap: true,
                                      physics: NeverScrollableScrollPhysics(),
                                      itemBuilder: (context, subIndex) {
                                        // Ambil item pada categoryInpeksi.masterInpeksis
                                        MasterInpeksi subItem = categoryInpeksi
                                            .masterInpeksis![subIndex];
                                        return Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text("${subItem.namaInpeksi}"),
                                            Row(
                                              children: [
                                                Radio(
                                                  value: 'Bagus',
                                                  groupValue: _feedback,
                                                  onChanged: (value) {
                                                    setState(() {
                                                      _feedback =
                                                          value as String;
                                                    });
                                                  },
                                                ),
                                                Text('Bagus'),
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                Radio(
                                                  value: 'Tidak Bagus',
                                                  groupValue: _feedback,
                                                  onChanged: (value) {
                                                    setState(() {
                                                      _feedback =
                                                          value as String;
                                                    });
                                                  },
                                                ),
                                                Text('Tidak Bagus'),
                                              ],
                                            ),
                                          ],
                                        );
                                      },
                                    ),
                                  ],
                                ),
                              );
                            },
                          ),
                        ],
                      )
                    : Container();
              },
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text('Simpan'),
            ),
          ],
        ),
      ),
    );
  }
}
