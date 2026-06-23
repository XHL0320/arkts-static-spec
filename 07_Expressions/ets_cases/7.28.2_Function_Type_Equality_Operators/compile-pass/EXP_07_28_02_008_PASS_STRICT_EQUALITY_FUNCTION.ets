/**
 * @id EXP_07_28_02_008_PASS_STRICT_EQUALITY_FUNCTION
 * @expect compile-pass
 * @section 7.28.2
 * @design 验证 === 和 !== 作用于函数类型编译通过
 * @note 正向用例：===/!== 对函数类型的引用比较应编译通过
 */
function foo(): void {}
function bar(): void {}

class A {
  method(): void {}
}

function main(): void {
  // 顶级函数 === !==
  let r1: boolean = foo === foo;
  let r2: boolean = foo !== bar;
  let r3: boolean = foo === bar;

  // 实例方法 === !==
  const a = new A();
  const aa = new A();
  let r4: boolean = a.method === a.method;
  let r5: boolean = a.method !== aa.method;
}
