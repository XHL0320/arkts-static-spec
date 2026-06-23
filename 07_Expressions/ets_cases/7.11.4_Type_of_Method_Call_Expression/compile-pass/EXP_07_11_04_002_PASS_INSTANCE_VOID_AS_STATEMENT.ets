/**
 * @id EXP_07_11_04_002_PASS_INSTANCE_VOID_AS_STATEMENT
 * @expect compile-pass
 * @section 7.11.4
 * @design 验证 instance void 方法作为表达式语句调用，编译通过
 * @note 正向用例：实例 void 方法调用作为独立语句（new A().method()），编译通过
 */
class Printer {
  print(): void {
    let text: string = "world";
  }
}

function main(): void {
  let p: Printer = new Printer();
  p.print();
}
