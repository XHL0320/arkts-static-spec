/**
 * @id EXP2_17_07_008_FAIL_BOTH_INVOKE_AND_INSTANTIATE
 * @expect compile-fail
 * @section 17.7
 * @design 一个类不能同时拥有 $_invoke 和 $_instantiate，应产生编译时错误
 * @note 反向用例：类同时声明 static $_invoke 和 static $_instantiate，验证应编译失败
 */
class BothCallable {
  static $_invoke(): int {
    return 1
  }
  static $_instantiate(): BothCallable {
    return new BothCallable()
  }
}
