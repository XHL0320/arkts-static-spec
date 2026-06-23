/**
 * @id EXP_07_28_02_007_PASS_DIFF_METHOD_NAME
 * @expect compile-pass
 * @section 7.28.2
 * @design 验证同一实例上不同方法的引用比较编译通过（即使运行时为 false）
 * @note 正向用例：同一实例不同方法通过 == 比较应编译通过（spec 示例：a.method == a.foo）
 */
class A {
  method(): void {}
  foo(): void {}
}

function main(): void {
  const a = new A();
  let r: boolean = a.method == a.foo;
  let r2: boolean = a.method != a.foo;
}
