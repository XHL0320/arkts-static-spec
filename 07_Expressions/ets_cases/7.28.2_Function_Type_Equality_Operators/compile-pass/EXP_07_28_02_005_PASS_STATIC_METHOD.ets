/**
 * @id EXP_07_28_02_005_PASS_STATIC_METHOD
 * @expect compile-pass
 * @section 7.28.2
 * @design 验证静态方法引用的两次比较编译通过
 * @note 正向用例：同一静态方法引用通过 == 比较应编译通过（spec 示例：A.method == A.method）
 */
class A {
  static method(): void {}
}

function main(): void {
  let r: boolean = A.method == A.method;
  let r2: boolean = A.method != A.method;
}
