/**
 * @id EXP2_17_10_02_003_PASS_STATIC_NATIVE_METHOD
 * @expect compile-pass
 * @section 17.10.2
 * @design 静态原生方法：验证 static 和 native 修饰符可以组合使用
 * @note 正向用例：验证该特性编译通过的正确用法
 */
class MathLib {
  static native sqrt(x: double): double
  static native abs(x: int): int
}
