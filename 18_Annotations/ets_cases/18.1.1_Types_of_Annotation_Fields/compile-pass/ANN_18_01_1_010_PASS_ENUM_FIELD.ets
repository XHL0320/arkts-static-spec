/**
 * @id ANN_18_01_1_010_PASS_ENUM_FIELD
 * @expect compile-pass
 * @section 18.1.1
 * @design 验证枚举类型是合法的注解字段类型
 * @note 正向用例：枚举类型字段
 */
enum Color {
  RED,
  GREEN,
  BLUE
}

@interface A {
  color: Color
}
