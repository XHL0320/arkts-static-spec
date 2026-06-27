/**
 * @id ANN_18_02_019_FAIL_NON_CONST_EXPRESSION
 * @expect compile-fail
 * @section 18.2
 * @design 验证注解字段值必须为常量表达式
 * @note 反向用例：变量引用不是常量表达式
 */
@interface Config {
  name: string
}

let x: string = "hello"

@Config({name: x})
class C {}
