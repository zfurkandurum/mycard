import 'package:flutter/material.dart';

import 'package:mycard/Utils/sizes.dart';

//large height SizedBox
class largeHeightSizedBox extends StatelessWidget {
  const largeHeightSizedBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: ProjectSizes.largeSizedBoxSize,
    );
  }
}

//normal height SizedBox
class normalHeightSizedBox extends StatelessWidget {
  const normalHeightSizedBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: ProjectSizes.normalSizedBoxSize,
    );
  }
}

//min height SizedBox
class minHeightSizedBox extends StatelessWidget {
  const minHeightSizedBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: ProjectSizes.minSizedBoxSize,
    );
  }
}

///////////////
///width
///////////////

//large width SizedBox
class largeWidthSizedBox extends StatelessWidget {
  const largeWidthSizedBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: ProjectSizes.largeSizedBoxSize,
    );
  }
}

//normal width SizedBox
class normalWidthSizedBox extends StatelessWidget {
  const normalWidthSizedBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: ProjectSizes.normalSizedBoxSize,
    );
  }
}

//min width SizedBox
class minWidthSizedBox extends StatelessWidget {
  const minWidthSizedBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: ProjectSizes.minSizedBoxSize,
    );
  }
}
