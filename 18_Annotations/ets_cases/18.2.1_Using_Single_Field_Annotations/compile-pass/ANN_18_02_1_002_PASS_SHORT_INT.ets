/**
 * @id ANN_18_02_1_002_PASS_SHORT_INT
 * @expect compile-pass
 * @section 18.2.1
 * @design 验证单字段注解简写形式（int 值）
 * @note 正向用例：@version(42) 简写
 */
@interface version {
  num: int
}

@version(42)
class C {}
