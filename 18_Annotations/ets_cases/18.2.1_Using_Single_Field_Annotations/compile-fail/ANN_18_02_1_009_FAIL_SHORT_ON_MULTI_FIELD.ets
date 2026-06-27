/**
 * @id ANN_18_02_1_009_FAIL_SHORT_ON_MULTI_FIELD
 * @expect compile-fail
 * @section 18.2.1
 * @design 验证多字段注解不能使用简写形式
 * @note 反向用例：简写形式要求注解只有一个字段
 */
@interface Config {
  name: string
  version: int
}

@Config("test")
class C {}
