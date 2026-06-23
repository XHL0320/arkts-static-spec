/**
 * @id EXP2_17_11_01_009_FAIL_FINAL_CLASS_AS_SUPERTYPE
 * @expect compile-fail
 * @section 17.11.1
 * @design final 类不能作为父类（supertype）：验证任何类试图以 final 类作为 super 类型时应产生编译时错误
 * @note 反向用例：验证以 final 类作为 extends 目标时产生 ESE0178 编译错误
 */
final class SuperFinal {
  data: string = "sealed"
}

class ChildWithConstructor extends SuperFinal {
  constructor() { super() }
}
