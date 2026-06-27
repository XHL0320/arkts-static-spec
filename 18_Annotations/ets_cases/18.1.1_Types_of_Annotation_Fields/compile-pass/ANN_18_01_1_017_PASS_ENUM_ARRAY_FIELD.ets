/**
 * @id ANN_18_01_1_017_PASS_ENUM_ARRAY_FIELD
 * @expect compile-pass
 * @section 18.1.1
 * @design 验证枚举数组类型是合法的注解字段类型
 * @note 正向用例：枚举数组类型字段
 */
enum Status {
  OK,
  ERROR
}

@interface A {
  statuses: Status[]
}
