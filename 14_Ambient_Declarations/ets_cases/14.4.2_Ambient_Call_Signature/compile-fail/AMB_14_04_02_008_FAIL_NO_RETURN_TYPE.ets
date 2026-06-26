/**
 * @id AMB_14_04_02_008_FAIL_NO_RETURN_TYPE
 * @expect compile-fail
 * @section 14.4.2
 * @design call signature 缺少返回类型
 * @note 反向用例：call signature 缺返回类型应产生编译时错误
 */
declare class C {
  (x: number)
}
