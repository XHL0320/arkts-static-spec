/**
 * @id ANN_18_02_1_006_PASS_SHORT_ARRAY
 * @expect compile-pass
 * @section 18.2.1
 * @design 验证单字段数组注解简写形式
 * @note 正向用例：@tags(["a","b"]) 简写
 */
@interface tags {
  values: string[]
}

@tags(["a", "b"])
class C {}
