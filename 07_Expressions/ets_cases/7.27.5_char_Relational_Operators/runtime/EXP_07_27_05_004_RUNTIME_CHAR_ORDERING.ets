/**
 * @id EXP_07_27_05_004_RUNTIME_CHAR_ORDERING
 * @expect runtime
 * @section 7.27.5
 * @design char 码元排序验证

 * @note 运行时用例：实际执行验证char 排序
 */
function main(): void {
  let a: char = c"0"; let b: char = c"9"; let c: char = c"A"; let d: char = c"Z"
  if (!(a < b)) { throw new Error("assertion failed: \"0\" < \"9\"")
  }
  if (!(c < d)) { throw new Error("assertion failed: \"A\" < \"Z\"")
  }
  console.log("verified")
}
