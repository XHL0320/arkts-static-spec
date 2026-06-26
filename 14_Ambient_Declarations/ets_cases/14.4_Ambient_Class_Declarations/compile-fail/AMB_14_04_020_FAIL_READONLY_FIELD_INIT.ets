/**
 * @id AMB_14_04_020_FAIL_READONLY_FIELD_INIT
 * @expect compile-fail
 * @section 14.4
 * @design ambient class readonly 字段有初始化器，违反 spec
 * @note 反向用例：ambient class readonly 字段带初始化器应产生编译时错误
 */
declare class BadReadonly {
  readonly id: int = 1
}
