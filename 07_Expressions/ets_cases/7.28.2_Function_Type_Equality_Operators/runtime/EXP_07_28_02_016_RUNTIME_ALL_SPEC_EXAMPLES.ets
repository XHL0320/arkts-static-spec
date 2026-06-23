/**
 * @id EXP_07_28_02_016_RUNTIME_ALL_SPEC_EXAMPLES
 * @expect runtime
 * @section 7.28.2
 * @design 验证 spec 中所有 Function Type Equality Operators 示例的运行时行为
 * @note 运行时用例：完整运行 spec 中的每一个代码示例并验证结果
 */
function assert(cond: boolean, msg: string): void {
  if (!cond) {
    throw new Error("FAIL: " + msg);
  }
}

function foo(): void {}
function bar(): void {}
function goo(p: number): void {}

class A {
  method(): void {}
  static method(): void {}
  foo(): void {}
}

function main(): void {
  // ===== 顶级函数 =====
  // foo == foo // true, same function object
  assert(foo == foo, "foo == foo should be true (spec)");

  // foo == bar // false, different function objects
  assert((foo == bar) == false, "foo == bar should be false (spec)");

  // foo == goo // false, different function objects
  assert((foo == goo) == false, "foo == goo should be false (spec)");

  // ===== 实例和静态方法 =====
  const a = new A();

  // a.method == a.method // true, same function object
  assert(a.method == a.method, "a.method == a.method should be true (spec)");

  // A.method == A.method // true, same function object
  assert(A.method == A.method, "A.method == A.method should be true (spec)");

  // ===== 不同实例 =====
  const aa = new A();

  // a.method == aa.method // false, different bounded objects
  assert((a.method == aa.method) == false, "a.method == aa.method should be false (spec)");

  // a.method == a.foo // false, different function objects
  assert((a.method == a.foo) == false, "a.method == a.foo should be false (spec)");

  console.log("verified");
}
