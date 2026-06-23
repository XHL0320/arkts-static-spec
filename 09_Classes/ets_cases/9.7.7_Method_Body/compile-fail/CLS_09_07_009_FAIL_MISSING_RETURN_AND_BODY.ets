/**
 * @id CLS_09_07_009_FAIL_MISSING_RETURN_AND_BODY
 * @expect compile-fail
 * @section 9.7.7
 * @design 方法体违规：非void返回类型缺少return语句；abstract方法有block体；非abstract/native方法无体
 * @note 反向用例：方法体规则违规
 */
abstract class Base009 {
  abstract good(): int
}

class BadMethodBody009 extends Base009 {
  // Error: non-abstract, non-native method has semicolon (empty body)
  good(): int;

  // Error: return type int but no return on the else execution path
  conditionalReturn(flag: boolean): int {
    if (flag) {
      return 1
    }
  }
}

abstract class BadAbstract009 {
  // Error: abstract method with block body
  abstract hasBody(): void {
    let x: int = 0
  }
}
