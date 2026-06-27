/**
 * @id ANN_18_01_1_008_PASS_BYTE_FIELD
 * @expect compile-pass
 * @section 18.1.1
 * @design 验证 byte 类型是合法的注解字段类型
 * @note 正向用例：byte 类型字段
 */
@interface A {
  b: byte
}
