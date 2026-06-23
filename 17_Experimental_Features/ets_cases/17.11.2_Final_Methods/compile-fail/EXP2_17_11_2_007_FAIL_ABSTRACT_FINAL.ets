/**
 * @id EXP2_17_11_2_007_FAIL_ABSTRACT_FINAL
 * @expect compile-fail
 * @section 17.11.2
 * @design abstract + final 组合：验证 abstract 和 final 不能同时修饰一个方法
 * @note 反向用例：验证 abstract final 组合产生 ESE0047 编译错误
 */
abstract class Base {
  abstract final doit(): void
}
