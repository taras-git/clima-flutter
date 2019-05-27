import 'dart:io';

void main() {
  performTasks();
}

void performTasks() async {
  task1();
  String s = await task2();
  task3(s);
}

void task1() {
  String result = 'task1 data';
  print('task1 complete');
}

Future<String> task2() async {
  Duration d1 = Duration(seconds: 3);

  String result;
  await Future.delayed(d1, () {
    result = 'task2 data';
    print('task2 complete');
  });
  return result;
}

void task3(String s) {
  String result = 'task3 data';
  print('task3 complete with $s');
}
