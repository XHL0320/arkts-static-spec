/**
 * @id CLS_09_06_4_002_PASS_FIELD_DEFAULT_VALUE
 * @expect compile-pass
 * @section 9.6.4
 * @design 字段使用类型默认值编译通过
 * @note 正向用例：验证字段使用默认值初始化
 */
class DefaultVal {
  numVal: int = 0
  boolVal: boolean = false
}
