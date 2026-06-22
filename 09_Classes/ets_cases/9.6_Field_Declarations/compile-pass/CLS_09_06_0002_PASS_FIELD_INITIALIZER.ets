/**
 * @id CLS_09_06_0002_PASS_FIELD_INITIALIZER
 * @expect compile-pass
 * @section 9.6
 * @design 字段初始化器表达式编译通过
 * @note 正向用例：验证字段使用表达式初始化器
 */
class FieldInit {
  a: int = 10 + 5
  b: string = "hello"
  c: double = 3.14
}
