import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:path_provider/path_provider.dart' as path_provider;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  await openHiveAndInitBox();
  runApp(const MyApp());
}

Future<void> openHiveAndInitBox() async {
  final appDocumentDir = await path_provider.getApplicationDocumentsDirectory();
  Hive.init(appDocumentDir.path);
  Hive.registerAdapter<Data>(DataAdapter());
  await Hive.openBox<Data>('data_box');
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sayı Listesi Uygulaması',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SayiListesi(),
    );
  }
}

class SayiListesi extends StatefulWidget {
  const SayiListesi({super.key});

  @override
  _SayiListesiState createState() => _SayiListesiState();
}

class _SayiListesiState extends State<SayiListesi> {
  final DatabaseHelper _databaseHelper = DatabaseHelper();
  late List<Data> _dataList;

  @override
  void initState() {
    super.initState();
    _loadData();
  }

  Future<void> _loadData() async {
    _dataList = await _databaseHelper.getDataList();
    setState(() {});
  }

  Future<void> _ekleData(Data data) async {
    await _databaseHelper.insertData(data);
    await _loadData();
  }

  Future<void> _silData(Data data) async {
    await _databaseHelper.deleteData(data.key);
    await _loadData();
  }

  Future<void> _basaSabitle(Data data) async {
    final index = _dataList.indexOf(data);
    if (index >= 0) {
      await _databaseHelper.updateData(data);
      await _databaseHelper.deleteData(data.key);

      await _loadData();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Veri Listesi'),
        actions: [
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DataEklemeSayfasi(_ekleData),
                ),
              );
            },
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: _dataList.length,
        itemBuilder: (context, index) {
          final data = _dataList[index];
          return ListTile(
            title: Text(data.stringValue ?? ''),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Int Değer 1: ${data.intValue1}'),
                Text('Int Değer 2: ${data.intValue2}'),
                Text('Int Değer 3: ${data.intValue3}'),
              ],
            ),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  icon: const Icon(Icons.arrow_upward),
                  onPressed: () => _basaSabitle(data),
                ),
                IconButton(
                  icon: const Icon(Icons.delete),
                  onPressed: () => _silData(data),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

class DatabaseHelper {
  Future<Box<Data>> _getDataBox() async {
    return await Hive.openBox<Data>('data_box');
  }

  Future<void> insertData(Data data) async {
    final box = await _getDataBox();
    await box.add(data);
  }

  Future<void> deleteData(int key) async {
    final box = await _getDataBox();
    await box.delete(key);
  }

  Future<void> updateData(Data data) async {
    final box = await _getDataBox();
    final newData = Data(
      key: data.key,
      stringValue: data.stringValue,
      intValue1: data.intValue1,
      intValue2: data.intValue2,
      intValue3: data.intValue3,
    );
    await box.put(data.key, newData);
  }

  Future<List<Data>> getDataList() async {
    final box = await _getDataBox();
    return box.values.toList();
  }
}

class Data extends HiveObject {
  Data({
    required this.key,
    this.stringValue,
    this.intValue1,
    this.intValue2,
    this.intValue3,
  });
  @override
  @HiveField(0)
  int key;

  @HiveField(1)
  String? stringValue;

  @HiveField(2)
  int? intValue1;

  @HiveField(3)
  int? intValue2;

  @HiveField(4)
  int? intValue3;
}

class DataAdapter extends TypeAdapter<Data> {
  @override
  final int typeId = 0;

  @override
  Data read(BinaryReader reader) {
    return Data(
      key: reader.read() as int, // Explicitly cast the dynamic value to int
      stringValue: reader.read()
          as String?, // Explicitly cast the dynamic value to String?
      intValue1: reader.read() as int?,
      intValue2: reader.read() as int?,
      intValue3: reader.read() as int?,
    );
  }

  @override
  void write(BinaryWriter writer, Data obj) {
    writer.write(obj.key);
    writer.write(obj.stringValue);
    writer.write(obj.intValue1);
    writer.write(obj.intValue2);
    writer.write(obj.intValue3);
  }
}

class DataEklemeSayfasi extends StatefulWidget {
  const DataEklemeSayfasi(this.ekleData, {super.key});
  final Function(Data) ekleData;

  @override
  _DataEklemeSayfasiState createState() => _DataEklemeSayfasiState();
}

class _DataEklemeSayfasiState extends State<DataEklemeSayfasi> {
  final TextEditingController _stringController = TextEditingController();
  final TextEditingController _int1Controller = TextEditingController();
  final TextEditingController _int2Controller = TextEditingController();
  final TextEditingController _int3Controller = TextEditingController();

  @override
  void dispose() {
    _stringController.dispose();
    _int1Controller.dispose();
    _int2Controller.dispose();
    _int3Controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Veri Ekle'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              controller: _stringController,
              decoration: const InputDecoration(
                labelText: 'String Değer',
              ),
            ),
            const SizedBox(height: 16),
            TextField(
              controller: _int1Controller,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: 'Int Değer 1',
              ),
            ),
            const SizedBox(height: 16),
            TextField(
              controller: _int2Controller,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: 'Int Değer 2',
              ),
            ),
            const SizedBox(height: 16),
            TextField(
              controller: _int3Controller,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: 'Int Değer 3',
              ),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                final stringValue = _stringController.text;
                final intValue1 = int.tryParse(_int1Controller.text) ?? 0;
                final intValue2 = int.tryParse(_int2Controller.text) ?? 0;
                final intValue3 = int.tryParse(_int3Controller.text) ?? 0;

                final data = Data(
                  stringValue: stringValue,
                  intValue1: intValue1,
                  intValue2: intValue2,
                  intValue3: intValue3,
                  key: 0,
                );

                widget.ekleData(data);
                Navigator.pop(context);
              },
              child: const Text('Kaydet'),
            ),
          ],
        ),
      ),
    );
  }
}
