/**
 * @id EXP_07_28_02_014_RUNTIME_METHOD_REFERENCE
 * @expect runtime
 * @section 7.28.2
 * @design 验证实例和静态方法引用等值比较的运行时正确性
 * @note 运行时用例：测试方法引用与实例绑定的等值比较
 */
function assert(cond: boolean, msg: string): void {
  if (!cond) {
    throw new Error("FAIL: " + msg);
  }
}

class A {
  method(): void {}
  static method(): void {}
  foo(): void {}
}

function main(): void {
  const a = new A();
  const aa = new A();

  // 同一实例同一方法（spec 示例）
  assert(a.method == a.method, "a.method == a.method should be true (spec example)");

  // 静态方法（spec 示例）
  assert(A.method == A.method, "A.method == A.method should be true (spec example)");

  // 不同实例同一方法（spec 示例）
  assert((a.method == aa.method) == false, "a.method == aa.method should be false (spec example)");

  // 同一实例不同方法（spec 示例）
  assert((a.method == a.foo) == false, "a.method == a.foo should be false (spec example)");

  // != 验证
  assert(a.method != aa.method, "a.method != aa.method should be true");
  assert(a.method != a.foo, "a.method != a.foo should be true");
  assert((a.method != a.method) == false, "a.method != a.method should be false");
  assert((A.method != A.method) == false, "A.method != A.method should be false");

  console.log("verified");
}
