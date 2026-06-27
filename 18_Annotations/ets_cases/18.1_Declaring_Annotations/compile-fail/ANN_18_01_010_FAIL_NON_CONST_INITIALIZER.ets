/**
 * @id ANN_18_01_010_FAIL_NON_CONST_INITIALIZER
 * @expect compile-fail
 * @section 18.1
 * @design 验证注解字段默认值必须为常量表达式
 * @note 反向用例：函数调用不是常量表达式，导致编译时错误
 */
function getDefault(): string {
  return "default"
}

@interface Config {
  name: string = getDefault() // Compile-time error, not a constant expression
}
