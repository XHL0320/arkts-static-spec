/**
 * @id EXP_07_28_02_004_PASS_SAME_INSTANCE_METHOD
 * @expect compile-pass
 * @section 7.28.2
 * @design 验证同一实例上同一方法的两次引用比较编译通过
 * @note 正向用例：同一实例同一方法通过 == 比较应编译通过（spec 示例：a.method == a.method）
 */
class A {
  method(): void {}
}

function main(): void {
  const a = new A();
  let r: boolean = a.method == a.method;
  let r2: boolean = a.method != a.method;
}
