/**
 * @id ANN_18_02_1_010_FAIL_SHORT_NON_CONST
 * @expect compile-fail
 * @section 18.2.1
 * @design 验证简写形式中值必须为常量表达式
 * @note 反向用例：变量引用不是常量
 */
@interface deprecated {
  version: string
}

let x: string = "hello"

@deprecated(x)
class C {}
