/**
 * @id EXP2_17_11_01_008_FAIL_DEEP_EXTENDS_FINAL
 * @expect compile-fail
 * @section 17.11.1
 * @design 深层继承链中包含 final 类：验证 extends 关系中任何一环是 final 类都应产生编译时错误
 * @note 反向用例：验证深层继承链（C extends B extends final A）中 A 是 final 类时产生 ESE0178 编译错误
 */
final class DeepFinal {
  base: int = 0
}

class Middle extends DeepFinal {
  mid: int = 1
}

class Bottom extends Middle {
  bot: int = 2
}
