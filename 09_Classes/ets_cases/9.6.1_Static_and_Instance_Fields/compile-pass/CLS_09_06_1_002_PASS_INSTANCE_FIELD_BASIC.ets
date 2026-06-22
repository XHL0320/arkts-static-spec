/**
 * @id CLS_09_06_1_002_PASS_INSTANCE_FIELD_BASIC
 * @expect compile-pass
 * @section 9.6.1
 * @design instance字段基本声明编译通过
 * @note 正向用例：验证instance字段声明
 */
class InstBasic {
  name: string = ""
  age: int = 0
}
