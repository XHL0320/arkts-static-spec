/**
 * @id ANN_18_02_1_001_PASS_SHORT_STRING
 * @expect compile-pass
 * @section 18.2.1
 * @design 验证单字段注解简写形式（string 值）
 * @note 正向用例：@deprecated("5.18") 简写
 */
@interface deprecated {
  fromVersion: string
}

@deprecated("5.18")
class C {}
