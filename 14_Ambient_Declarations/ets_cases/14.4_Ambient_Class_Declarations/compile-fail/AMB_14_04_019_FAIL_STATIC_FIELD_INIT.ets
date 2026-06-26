/**
 * @id AMB_14_04_019_FAIL_STATIC_FIELD_INIT
 * @expect compile-fail
 * @section 14.4
 * @design ambient class static 字段有初始化器，违反 spec
 * @note 反向用例：ambient class static 字段带初始化器应产生编译时错误
 */
declare class BadStatic {
  static count: int = 0
}
