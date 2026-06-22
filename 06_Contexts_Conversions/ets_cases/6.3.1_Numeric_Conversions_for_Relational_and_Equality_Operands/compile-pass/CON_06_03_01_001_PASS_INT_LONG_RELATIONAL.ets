/**
 * @id CON_06_03_01_001_PASS_INT_LONG_RELATIONAL
 * @expect compile-pass
 * @section 6.3.1
 * @design 关系运算符: int < long, int 隐式 widening 转换为 long 后比较
 * @note 正向用例：验证该特性编译通过的正确用法
 */
function testIntLongRelational(): void {
  let a: int = 1
  let b: long = 0
  let r1: boolean = a < b
  let r2: boolean = a > b
  let r3: boolean = b < a
  let r4: boolean = b > a
}
