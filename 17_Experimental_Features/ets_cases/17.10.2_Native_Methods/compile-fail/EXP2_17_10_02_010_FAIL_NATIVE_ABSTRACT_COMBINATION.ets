/**
 * @id EXP2_17_10_02_010_FAIL_NATIVE_ABSTRACT_COMBINATION
 * @expect compile-fail
 * @section 17.10.2
 * @design native 与 abstract 不能组合使用：验证 native abstract 方法产生编译错误 ESE0047
 * @note 反向用例：验证该场景应产生编译时错误 - an abstract method can't have ... native modifier
 */
class BadCombination {
  native abstract foo(): void
}
