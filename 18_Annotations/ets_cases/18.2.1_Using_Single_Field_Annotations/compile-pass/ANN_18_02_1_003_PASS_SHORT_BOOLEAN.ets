/**
 * @id ANN_18_02_1_003_PASS_SHORT_BOOLEAN
 * @expect compile-pass
 * @section 18.2.1
 * @design 验证单字段注解简写形式（boolean 值）
 * @note 正向用例：@visible(true) 简写
 */
@interface visible {
  isVisible: boolean
}

@visible(true)
class C {}
