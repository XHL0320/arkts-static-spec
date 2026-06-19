/**
 * @id CLS_09_07_015_FAIL_VOID_RETURN_VALUE
 * @expect compile-fail
 * @section 9.7.7
 * @design void返回类型方法不允许return带表达式；void方法只允许return;或无return
 * @note 反向用例：void方法使用return带值导致编译失败
 */
class VoidReturnViolation015 {
  // Error: void method cannot return a value
  badReturnInt(): void {
    return 42
  }

  // Error: void method cannot return a string value
  badReturnString(): void {
    return "hello"
  }

  // Error: void method cannot return a boolean value
  badReturnBool(): void {
    return true
  }
}

abstract class VoidAbstractViolation015 {
  // Error: abstract void method cannot return a value in a concrete subclass context
  // But abstract with semicolon is fine - the error is in the concrete override below

  abstract fine(): void
}

class Concrete015 extends VoidAbstractViolation015 {
  // Error: void override cannot return a value
  override fine(): void {
    return 0
  }
}
