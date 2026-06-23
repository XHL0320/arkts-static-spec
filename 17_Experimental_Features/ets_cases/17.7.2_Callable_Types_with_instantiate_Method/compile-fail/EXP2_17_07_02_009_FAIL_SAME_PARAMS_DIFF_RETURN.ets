/**
 * @id EXP2_17_07_02_009_FAIL_SAME_PARAMS_DIFF_RETURN
 * @expect compile-fail
 * @section 17.7.2
 * @design 多个 $_instantiate 签名相同（相同参数列表）但返回类型不同时，应产生编译时错误
 * @note 反向用例：验证相同参数不同返回类型的多个 $_instantiate 编译失败
 */
class MyFailFactory3 {
  constructor() {}

  static $_instantiate(__factory: () => MyFailFactory3): MyFailFactory3 {
    return __factory()
  }

  static $_instantiate(__factory: () => MyFailFactory3): int {
    return 0
  }
}
