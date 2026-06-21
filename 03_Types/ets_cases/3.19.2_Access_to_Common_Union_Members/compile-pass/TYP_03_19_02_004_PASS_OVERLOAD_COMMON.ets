/**
 * @id TYP_03_19_02_004_FAIL_OVERLOAD_METHOD
 * @expect compile-fail
 * @section 3.19.2
 * @design 联合类型中重载方法不可作为共同成员访问
 * @note 反向用例：验证 C 中 foo 是 overload，D 中 foo 是普通方法
 */
class C4 {
  foo1(a: number): void {}
  foo2(a: string): void {}
}

class D4 {
  foo(a: number): void {}
  foo2(a: string): void {}
}

function test(x: C4 | D4): void {
  x.foo2("aa")
}

function main(): void {
  let c: C4 = new C4()
  test(c)
  console.log("verified")
}