/**
 * @id EXP_07_14_009_FAIL_STATIC_METHOD
 * @expect compile-fail
 * @section 7.14
 * @design 验证静态方法使用链式操作符产生编译时错误：A?.f() 不允许
 * @note 反向用例：静态方法使用 ?. 操作符，编译时错误
 */
class A {
  static f(): string {
    return "";
  }
}

function main(): void {
  let s: string | undefined = A?.f();
}
