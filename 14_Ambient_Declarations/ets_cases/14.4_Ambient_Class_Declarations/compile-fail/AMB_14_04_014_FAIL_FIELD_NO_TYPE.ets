/**
 * @id AMB_14_04_014_FAIL_FIELD_NO_TYPE
 * @expect compile-fail
 * @section 14.4
 * @design ambient class 字段无显式类型注解，违反 spec
 * @note 反向用例：ambient class 字段无类型应产生编译时错误
 */
declare class NoTypeField {
  x
}
