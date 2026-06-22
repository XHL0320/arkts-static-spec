/**
 * @id CON_06_03_01_017_FAIL_BOOL_DOUBLE_RELATIONAL
 * @expect compile-fail
 * @section 6.3.1
 * @design 关系运算符: boolean >= double, boolean 非数值类型，应编译失败
 * @note 反向用例：非数值类型用于关系运算符应按语义规则编译失败
 */
function testBoolDoubleRelationalFail(): void {
  let a: boolean = false
  let b: double = 1.0
  let r: boolean = a >= b
}
