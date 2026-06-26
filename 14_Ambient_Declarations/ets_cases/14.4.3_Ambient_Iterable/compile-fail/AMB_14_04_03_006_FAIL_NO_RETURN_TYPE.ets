/**
 * @id AMB_14_04_03_006_FAIL_NO_RETURN_TYPE
 * @expect compile-fail
 * @section 14.4.3
 * @design ambient iterable 缺少返回类型
 * @note 反向用例：iterable 缺返回类型应产生编译时错误
 */
declare class Bad {
  [Symbol.iterator]()
}
