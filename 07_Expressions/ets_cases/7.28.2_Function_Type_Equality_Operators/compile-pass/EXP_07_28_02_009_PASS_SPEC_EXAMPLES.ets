/**
 * @id EXP_07_28_02_009_PASS_SPEC_EXAMPLES
 * @expect compile-pass
 * @section 7.28.2
 * @design 验证所有 spec 示例代码编译通过
 * @note 正向用例：包含 spec 文档中所有代码示例
 */
function foo(): void {}
function bar(): void {}
function goo(p: number): void {}

class A {
  method(): void {}
  static method(): void {}
  foo(): void {}
}

function main(): void {
  // spec 示例
  let r1: boolean = foo == foo;
  let r2: boolean = foo == bar;
  let r3: boolean = foo == goo;

  const a = new A();
  let r4: boolean = a.method == a.method;
  let r5: boolean = A.method == A.method;

  const aa = new A();
  let r6: boolean = a.method == aa.method;
  let r7: boolean = a.method == a.foo;
}
