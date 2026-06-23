/**
 * @id EXP2_17_11_01_006_FAIL_EXTENDS_FINAL_CLASS
 * @expect compile-fail
 * @section 17.11.1
 * @design final 类不能被继承：验证普通类 extends final 类应产生编译时错误
 * @note 反向用例：验证 extends 子句中包含 final 类时产生 ESE0178 编译错误
 */
final class SealedBase {
  x: int = 0
}

class AttemptedExtend extends SealedBase {
  y: int = 1
}
