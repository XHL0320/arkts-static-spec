/**
 * @id EXP2_17_11_01_007_FAIL_FINAL_EXTENDS_FINAL
 * @expect compile-fail
 * @section 17.11.1
 * @design final 类不能继承另一个 final 类：验证 final class extends final class 应产生编译时错误
 * @note 反向用例：验证两个 final 类之间的 extends 关系产生 ESE0178 编译错误
 */
final class FinalA {
  a: int = 1
}

final class FinalB extends FinalA {
  b: int = 2
}
