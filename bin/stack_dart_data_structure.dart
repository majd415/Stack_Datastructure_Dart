import 'dart:io';

const int MAX_SIZE = 100;

class Stack<T> {
  int top;
  late List<T> item=[];

  Stack() : top = -1 {
    item.length=500;
  }

  void push(T element) {
    if (top >= MAX_SIZE - 1) {
      stdout.write('stack full on push ');
    } else {
      top++;
      item[top] = element;
    }
  }

  bool isEmpty() {
    return top < 0;
  }

  void pop() {
    if (isEmpty()) {
      stdout.write('stack empty on pop ');
    } else {
      top--;
    }
  }

  void popAndGet(T element) {
    if (isEmpty()) {
      stdout.write('stack empty on pop ');
    } else {
      element = item[top];
      top--;
    }
  }

  void getTop(T stackTop) {
    if (isEmpty()) {
      stdout.write('stack empty on getTop');
    } else {
      stackTop = item[top];
      stdout.writeln(stackTop);
    }
  }

  void printStack() {
    stdout.write('[');
    for (int i = top; i >= 0; i--) {
      stdout.write('${item[i]} ');
    }
    stdout.write(']');
    stdout.writeln();
  }
}

void main() {
  var s = Stack();
  s.push(2);
  s.push(4);
  s.push(6);
  s.push(8);
  s.printStack();

  var y = 0;
  s.getTop(y);

  var s1 = Stack();
  s1.push('r');
  s1.push('r');
  s1.push('r');
  s1.push('r');
  s1.printStack();

  var y1 = '';
  s1.getTop(y1);

}
