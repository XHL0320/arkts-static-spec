/**
 * @id ANN_18_02_1_007_PASS_MULTIPLE_SINGLE_FIELD
 * @expect compile-pass
 * @section 18.2.1
 * @design 验证多个单字段注解可同时使用
 * @note 正向用例：多个简写注解在同一类上
 */
@interface deprecated {
  version: string
}
@interface author {
  name: string
}

@deprecated("2.0")
@author("Alice")
class C {}
