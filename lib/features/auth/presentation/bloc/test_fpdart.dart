import 'package:fpdart/fpdart.dart';

void main() {
  final Either<String, int> e = Right(10);
  switch (e) {
    case Left(value: final l):
      print('Left: $l');
    case Right(value: final r):
      print('Right: $r');
  }
}
