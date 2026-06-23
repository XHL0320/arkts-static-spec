/**
 * @id EXP_07_16_008_PASS_ALWAYS_FALSE_WARNING
 * @expect compile-pass
 * @section 7.16
 * @design 验证 instanceof 始终为 false 时编译通过（附带编译时警告）
 * @note 正向用例：不相关类型 instanceof 始终为 false，编译警告但不报错
 */
class A {}
class B {}

function test(b: B): boolean {
  return b instanceof A
}
