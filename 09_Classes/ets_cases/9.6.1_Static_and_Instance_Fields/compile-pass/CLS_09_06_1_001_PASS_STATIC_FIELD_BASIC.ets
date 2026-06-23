/**
 * @id CLS_09_06_1_001_PASS_STATIC_FIELD_BASIC
 * @expect compile-pass
 * @section 9.6.1
 * @design static字段基本声明编译通过
 * @note 正向用例：验证static字段声明
 */
class StaticBasic {
  static counter: int = 0
  static label: string = "default"
}
