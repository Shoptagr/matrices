import 'package:matrices/matrices.dart';
import 'package:test/test.dart';

void main() {
  group(
    'matrix',
    () {
      group(
        'equality',
        () {
          final cases = {
            'matrix with same cells value returns true': (
              Matrix.fromList(
                [
                  [0, 1, 2],
                  [3, 4, 5],
                  [6, 7, 8],
                ],
              ),
              Matrix.fromList(
                [
                  [0, 1, 2],
                  [3, 4, 5],
                  [6, 7, 8],
                ],
              ),
              true,
            ),
            'matrix with different cells value returns false': (
              Matrix.fromList(
                [
                  [0, 1, 2],
                  [3, 4, 5],
                  [6, 7, 8],
                ],
              ),
              Matrix.fromList(
                [
                  [0, 1, 2],
                  [3, 4, 5],
                  [6, 7, 7],
                ],
              ),
              false,
            ),
            'equality is inherited by default': (
              SquareMatrix.fromList(
                [
                  [0, 1, 2],
                  [3, 4, 5],
                  [6, 7, 8],
                ],
              ),
              SquareMatrix.fromList(
                [
                  [0, 1, 2],
                  [3, 4, 5],
                  [6, 7, 8],
                ],
              ),
              true,
            )
          }.entries.map((e) => (e.key, e.value));

          for (var (description, (m1, m2, equality)) in cases) {
            test(
              description,
              () {
                expect(
                  m1 == m2,
                  equality,
                );
              },
            );
          }
        },
      );
    },
  );
}
