/**
 * @id CLS_09_07_013_FAIL_NATIVE_WITH_BODY
 * @expect compile-fail
 * @section 9.7.6
 * @design native方法违规：native方法有block体而非分号或空体；native与abstract组合
 * @note 反向用例：native方法体规则与修饰符约束违规
 */
class NativeBad013 {
  // Error: native method must not have a block body
  native externalCall(): int {
    return 42
  }
}

abstract class NativeAbstractBad013 {
  // Error: native cannot combine with abstract
  abstract native badCombo(): void
}
