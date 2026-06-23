/**
 * @id CLS_09_09_004_FAIL_NATIVE_CONSTRUCTOR_WITH_BODY
 * @expect compile-fail
 * @section 9.9
 * @design native 构造器不能有方法体
 * @note 编译错误：native constructor 必须无 body
 */
class Bad004 {
  native constructor() { // 编译错误：native 构造器不能有体
    this.x = 0
  }
}
