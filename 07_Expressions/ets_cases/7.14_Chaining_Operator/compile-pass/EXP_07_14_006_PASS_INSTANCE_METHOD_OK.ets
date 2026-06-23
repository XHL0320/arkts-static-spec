/**
 * @id EXP_07_14_006_PASS_INSTANCE_METHOD_OK
 * @expect compile-pass
 * @section 7.14
 * @design 验证链式操作符在实例方法上合法：b?.g() 是实例方法调用，编译通过
 * @note 正向用例：实例方法使用 ?. 操作符，编译通过
 */
class A {
  g(): string {
    return "ok";
  }
}

function main(): void {
  let b: A | undefined = new A();
  let s: string | undefined = b?.g();
}
