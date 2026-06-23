/**
 * @id EXP_07_11_04_001_PASS_STATIC_VOID_AS_STATEMENT
 * @expect compile-pass
 * @section 7.11.4
 * @design 验证 static void 方法作为表达式语句调用，编译通过
 * @note 正向用例：void 方法调用作为独立语句（A.method()）不产生值赋值，编译通过
 */
class Logger {
  static log(): void {
    let msg: string = "hello";
  }
}

function main(): void {
  Logger.log();
}
