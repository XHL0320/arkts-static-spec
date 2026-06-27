/**
 * @id ANN_18_02_003_PASS_OBJECT_LITERAL
 * @expect compile-pass
 * @section 18.2
 * @design 验证对象字面量形式的注解用法
 * @note 正向用例：@Anno({field: value})
 */
@interface Config {
  name: string
  version: int
}

@Config({name: "test", version: 1})
class C {}
