/**
 * @id ANN_18_02_1_005_PASS_LONG_FORM_EQUIVALENT
 * @expect compile-pass
 * @section 18.2.1
 * @design 验证单字段注解完整对象字面量形式与简写等价
 * @note 正向用例：@deprecated({fromVersion: "5.18"}) 完整形式
 */
@interface deprecated {
  fromVersion: string
}

@deprecated({fromVersion: "5.18"})
class C {}
