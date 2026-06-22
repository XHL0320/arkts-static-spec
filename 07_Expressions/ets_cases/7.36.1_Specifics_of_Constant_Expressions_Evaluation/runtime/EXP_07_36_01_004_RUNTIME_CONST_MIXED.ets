/**
 * @id EXP_07_36_01_004_RUNTIME_CONST_MIXED
 * @expect runtime
 * @section 7.36.1
 * @design 混合常量表达式各子表达式独立求值

 * @note 运行时用例：实际执行验证混合常量求值
 */
const C: int = 3
function main(): void {
  let r: boolean = C > 1 && C * 2 < 8
  if (r != true) { throw new Error("assertion: 3>1 && 3*2<8 should be true") }
  console.log("verified")
}
