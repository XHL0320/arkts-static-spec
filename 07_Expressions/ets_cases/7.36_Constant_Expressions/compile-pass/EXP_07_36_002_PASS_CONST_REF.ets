/**
 * @id EXP_07_36_002_PASS_CONST_REF
 * @expect compile-pass
 * @section 7.36
 * @design 常量表达式：引用其他常量
 * @note 正向用例：验证该特性编译通过的正确用法。
 */
const BASE: int = 10
const DOUBLE: int = BASE * 2
const SHIFTED: int = BASE << 1
function testConstRef(): void {
  console.log(BASE.toString(), DOUBLE.toString(), SHIFTED.toString())
}
