/**
 * @id EXP_07_16_007_PASS_ALWAYS_TRUE_WARNING
 * @expect compile-pass
 * @section 7.16
 * @design 验证 instanceof 始终为 true 时编译通过（附带编译时警告）
 * @note 正向用例：子类实例 instanceof 父类始终为 true，编译警告但不报错
 */
class A {}
class B extends A {}

function test(b: B): boolean {
  return b instanceof A
}
