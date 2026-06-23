/**
 * @id LEX_02_08_010_PASS_INC_DEC_OPS
 * @expect compile-pass
 * @section 2.8
 * @design 自增自减运算符 ++ -- 的前置与后置形式
 * @note 正向用例：验证该特性编译通过的正确用法
 */
function testIncDecOps(): void {
  let x: number = 5
  x++
  x--
  ++x
  --x
  let y: number = x++
  let z: number = ++x
}
