/**
 * @id LEX_02_08_011_PASS_TERNARY_OP
 * @expect compile-pass
 * @section 2.8
 * @design 三元条件运算符 ? :
 * @note 正向用例：验证该特性编译通过的正确用法
 */
function testTernaryOp(): void {
  let cond: boolean = true
  let r1: number = cond ? 1 : 2
  let r2: string = cond ? "yes" : "no"
  let nested: number = cond ? (1 + 1) : (2 * 2)
  let r3: number = (1 > 0) ? 100 : -100
}
