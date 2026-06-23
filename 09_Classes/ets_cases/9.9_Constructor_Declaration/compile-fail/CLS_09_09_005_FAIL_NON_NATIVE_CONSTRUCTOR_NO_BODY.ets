/**
 * @id CLS_09_09_005_FAIL_NON_NATIVE_CONSTRUCTOR_NO_BODY
 * @expect compile-fail
 * @section 9.9
 * @design 非 native 构造器必须有方法体
 * @note 编译错误：非 native 构造器必须有 body
 */
class Bad005 {
  constructor(x: int) // 编译错误：缺少方法体
}
