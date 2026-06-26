/**
 * @id AMB_14_04_013_FAIL_FIELD_INITIALIZER
 * @expect compile-fail
 * @section 14.4
 * @design ambient class 字段有初始化器，违反 spec：ambient field 不能有初始化器
 * @note 反向用例：ambient class 字段带初始化器应产生编译时错误
 */
declare class BadField {
  x: int = 42
}
