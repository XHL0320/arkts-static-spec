/**
 * @id EXP_07_28_02_006_PASS_DIFF_INSTANCE_METHOD
 * @expect compile-pass
 * @section 7.28.2
 * @design 验证不同实例上的同名方法引用比较编译通过（即使运行时为 false）
 * @note 正向用例：不同实例同名方法通过 == 比较应编译通过（spec 示例：a.method == aa.method）
 */
class A {
  method(): void {}
}

function main(): void {
  const a = new A();
  const aa = new A();
  let r: boolean = a.method == aa.method;
  let r2: boolean = a.method != aa.method;
}
