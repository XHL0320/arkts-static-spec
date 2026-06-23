/**
 * @id EXP2_17_10_02_001_PASS_BASIC_NATIVE_METHOD
 * @expect compile-pass
 * @section 17.10.2
 * @design class 中基本原生方法声明：验证在类中使用 native 关键字声明无方法体的原生方法可以编译通过
 * @note 正向用例：验证该特性编译通过的正确用法
 */
class NativeCalculator {
  native add(a: int, b: int): int
  native subtract(a: int, b: int): int
}
