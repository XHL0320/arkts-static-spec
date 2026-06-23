/**
 * @id EXP_07_28_02_015_RUNTIME_STRICT_EQUALITY_FUNCTION
 * @expect runtime
 * @section 7.28.2
 * @design 验证 === 和 !== 在函数类型上的运行时行为
 * @note 运行时用例：===/!== 对函数类型比较应与 ==/!= 语义相同
 */
function assert(cond: boolean, msg: string): void {
  if (!cond) {
    throw new Error("FAIL: " + msg);
  }
}

function foo(): void {}
function bar(): void {}

class A {
  method(): void {}
  static method(): void {}
  foo(): void {}
}

function main(): void {
  // === 顶级函数
  assert(foo === foo, "foo === foo should be true");
  assert((foo === bar) == false, "foo === bar should be false");
  assert(foo !== bar, "foo !== bar should be true");
  assert((foo !== foo) == false, "foo !== foo should be false");

  // === 实例方法
  const a = new A();
  const aa = new A();
  assert(a.method === a.method, "a.method === a.method should be true");
  assert((a.method === aa.method) == false, "a.method === aa.method should be false");
  assert((a.method === a.foo) == false, "a.method === a.foo should be false");

  // !== 实例方法
  assert(a.method !== aa.method, "a.method !== aa.method should be true");
  assert(a.method !== a.foo, "a.method !== a.foo should be true");
  assert((a.method !== a.method) == false, "a.method !== a.method should be false");

  // 静态方法 === !==
  assert(A.method === A.method, "A.method === A.method should be true");
  assert((A.method !== A.method) == false, "A.method !== A.method should be false");

  console.log("verified");
}
