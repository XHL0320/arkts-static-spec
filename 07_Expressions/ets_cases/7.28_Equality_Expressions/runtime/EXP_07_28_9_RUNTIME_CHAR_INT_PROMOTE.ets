/**
 * @id EXP_07_28_9_RUNTIME_CHAR_INT_PROMOTE
 * @expect runtime
 * @section 7.28
 * @design char与int提升相等
 * @note 运行时用例：实际执行验证char与int提升后相等
 */
function main(): void {
  let a: char = c'a'
  if (a != 97) { throw new Error("assertion: char(c'a') == 97") }
  console.log("verified")
}
