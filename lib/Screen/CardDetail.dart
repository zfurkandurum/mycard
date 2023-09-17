import 'package:flutter/material.dart';
import 'package:mycard/Utils/color.dart';
import 'package:mycard/Screen/addCard.dart';

class cardDetailView extends StatefulWidget {
  const cardDetailView({super.key});

  @override
  State<cardDetailView> createState() => _inCardViewState();
}

class _inCardViewState extends State<cardDetailView> {
  late int numberData;

  late String textData;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: inCardAppBar(),
      body: const Column(
        children: [
          SizedBox(
            height: 20,
          ),
          CardView(),
          SizedBox(
            height: 10,
          ),
          detailCard(),
        ],
      ),
    );
  }

  /////////
  ///App Bar
  AppBar inCardAppBar() {
    return AppBar(
      actions: const [
        pinButton(),
        trashButton(),
      ],
      leading: const SizedBox(
        height: double.infinity,
        child: donebutton(),
      ),
      backgroundColor: projectColor.green,
    );
  }
}

///////////
///Card View
class CardView extends StatelessWidget {
  const CardView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: SizedBox(
        height: 250,
        width: 400,
        child: Card(
          color: Colors.amber,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
          child: Column(
            children: [
              CardViewTag(),
              SizedBox(
                height: 10,
              ),
              CardViewNumber(),
              SizedBox(
                height: 10,
              ),
              CardViewDate(),
              SizedBox(
                height: 10,
              ),
              CardViewName(),
            ],
          ),
        ),
      ),
    );
  }
}

class CardViewTag extends StatelessWidget {
  const CardViewTag({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(right: 270, top: 20),
      child: Text(
        ///// tıklanan veri
        'Card Name',
        style: TextStyle(fontSize: 17),
      ),
    );
  }
}

class CardViewNumber extends StatelessWidget {
  const CardViewNumber({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(right: 200, top: 70, left: 15),
      child: Text(
        ///// tıklanan veri
        'data',
        style: TextStyle(fontSize: 17),
        maxLines: 1,
      ),
    );
  }
}

class CardViewDate extends StatelessWidget {
  const CardViewDate({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left: 250, top: 15),
      child: Text(
        ///// tıklanan veri
        'MM/YY',
        style: TextStyle(fontSize: 17),
      ),
    );
  }
}

class CardViewName extends StatelessWidget {
  const CardViewName({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(right: 280, top: 20),
      child: Text(
        ///// tıklanan veri
        'Full Name',
        style: TextStyle(fontSize: 17),
      ),
    );
  }
}

////////////
///Detail
class detailCard extends StatelessWidget {
  const detailCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Card(
      color: Colors.amber,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      child: SizedBox(
        height: 290,
        width: 400,
        child: Column(
          children: [
            FullNameListTile(),
            NumberListTile(),
            DateListTile(),
            CVVlistTile(),
            tagListTile(),
          ],
        ),
      ),
    );
  }
}

class FullNameListTile extends StatelessWidget {
  const FullNameListTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      foregroundDecoration: const UnderlineTabIndicator(
        borderSide: BorderSide(color: Colors.white),
      ),
      child: ListTile(
        title: Row(
          children: [
            const Text(
              'Full Name',
              style: TextStyle(fontSize: 17),
            ),
            const SizedBox(
              width: 56,
            ),
            ///// tıklanan veri
            const Text(
              'Full Name',
              style: TextStyle(fontSize: 17),
            ),
            Expanded(child: Container()),
            IconButton(
              icon: const Icon(Icons.content_copy_outlined),
              onPressed: () {
                showSuccessSnackbar(context, 'copied!');
              },
            ),
          ],
        ),
      ),
    );
  }
}

class NumberListTile extends StatelessWidget {
  const NumberListTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      foregroundDecoration: const UnderlineTabIndicator(
        borderSide: BorderSide(color: Colors.white),
      ),
      child: ListTile(
        title: Row(
          //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Card Number',
              style: TextStyle(fontSize: 17),
            ),
            Expanded(child: Container()),
            ///// tıklanan veri
            const Text(
              '1111 1111 1111 1111',
              style: TextStyle(fontSize: 17),
            ),
            Expanded(child: Container()),
            IconButton(
              icon: const Icon(Icons.content_copy_outlined),
              onPressed: () {
                showSuccessSnackbar(context, 'copied!');
              },
            ),
          ],
        ),
      ),
    );
  }
}

class DateListTile extends StatelessWidget {
  const DateListTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      foregroundDecoration: const UnderlineTabIndicator(
        borderSide: BorderSide(color: Colors.white),
      ),
      child: const ListTile(
        title: Row(
          children: [
            Text(
              'Expiry Date',
              style: TextStyle(fontSize: 17),
            ),
            SizedBox(
              width: 46,
            ),
            ///// tıklanan veri
            Text(
              'Expiry Date',
              style: TextStyle(fontSize: 17),
            ),
          ],
        ),
      ),
    );
  }
}

class CVVlistTile extends StatelessWidget {
  const CVVlistTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      foregroundDecoration: const UnderlineTabIndicator(
        borderSide: BorderSide(color: Colors.white),
      ),
      child: const ListTile(
        title: Row(
          children: [
            Text(
              'Security Code',
              style: TextStyle(fontSize: 17),
            ),
            SizedBox(
              width: 25,
            ),
            ///// tıklanan veri
            Text(
              'Security Code',
              style: TextStyle(fontSize: 17),
            ),
          ],
        ),
      ),
    );
  }
}

class tagListTile extends StatelessWidget {
  const tagListTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const ListTile(
      title: Row(
        children: [
          Text(
            'Card Name',
            style: TextStyle(fontSize: 17),
          ),
          SizedBox(
            width: 50,
          ),
          ///// tıklanan veri
          Text(
            'Card Name',
            style: TextStyle(fontSize: 17),
          ),
        ],
      ),
    );
  }
}

class donebutton extends StatelessWidget {
  const donebutton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(left: 5),
        child: TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          style: TextButton.styleFrom(
            padding: EdgeInsets.zero,
          ),
          child: const Text(
            'Done',
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
        ),
      ),
    );
  }
}

class trashButton extends StatelessWidget {
  const trashButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 5),
      child: IconButton(
        icon: const Icon(Icons.restore_from_trash_outlined, size: 40),
        onPressed: () {
          showAlert(
            context,
          );
        },
      ),
    );
  }
}

void showAlert(
  BuildContext context,
) {
  // ignore: inference_failure_on_function_invocation
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: const Text('Delete'),
        content: const Text('Are you sure?'),
        actions: <Widget>[
          ElevatedButton(
            style: const ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(Colors.green),
            ),
            onPressed: () {
              Navigator.of(context).pop();
              //ana sayfaya dönecek
              showSuccessSnackbar(context, 'Deleted');
            },
            child: const Text('Delete'),
          ),
        ],
      );
    },
  );
}

class pinButton extends StatelessWidget {
  const pinButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 5),
      child: IconButton(
        icon: const Icon(Icons.push_pin_outlined, size: 40),
        onPressed: () {
          showSuccessSnackbar(context, 'Fixed');
        },
      ),
    );
  }
}
