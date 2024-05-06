import 'dart:io';

void main() {
  task1();
}

// 1)Необходимо написать программу, которая
// 1)  Регистрация по логину и паролю
// 2) проверяет правильность введения пароля.
// При введении правильного пароля необходимо вывести “Верный пароль”
// При введении неверного пароля необходимо вывести “Повторите ввод ” и запрашивать ввод пароля
void task1() {
  print('Введите логин и пароль.');
  String? login = stdin.readLineSync();
  int? pin = int.tryParse(stdin.readLineSync() ?? '');
  int savePin = 30082001;

  while (pin! != savePin) {
    print('Повторите ввод.');
    pin = int.tryParse(stdin.readLineSync() ?? '');
  }
  print('Правильный пароль.');
}

//2)Организовать беспрерывный ввод чисел с клавиатуры, пока пользователь не введёт 0.
//После ввода нуля, показать на экран количество чисел, которые были введены, их общую сумму и среднее арифметическое.
//Подсказка: необходимо объявить переменную-счетчик, которая будет считать количество введенных чисел, и переменную, которая будет накапливать общую сумму чисел.
void task2() {
  print('Введите число:');
  int? chislo = int.tryParse(stdin.readLineSync() ?? '');
  int count = 0;
  int sum = 0;
  double arr = 1;

  while (chislo != 0) {
    count++;
    sum += chislo!;
    arr = sum / count;
    print('Еще раз.\n');
    chislo = int.tryParse(stdin.readLineSync() ?? '');
  }

  print(
      'Вы ввели правильное число!\nВы ввели $count разa и сумма всех чисел составляет $sum\nСреднее арифметическое составляет $arr');
}

// 3)Необходимо суммировать все нечётные целые числа в диапазоне, который введёт пользователь с клавиатуры.
void task3() {
  print('Введите начало:');
  int? start = int.tryParse(stdin.readLineSync() ?? '');

  print('Введите конец:');
  int? end = int.tryParse(stdin.readLineSync() ?? '');

  int sum = sumodd(start!, end!);
  print('Сумма всех нечетных чисел в диапозоне от $start до $end - $sum.');
}

int sumodd(int start, int end) {
  int sum = 0;

  do {
    if (start.isOdd) {
      sum += start;
    }
    start++;
  } while (start <= end);
  return sum;
}
