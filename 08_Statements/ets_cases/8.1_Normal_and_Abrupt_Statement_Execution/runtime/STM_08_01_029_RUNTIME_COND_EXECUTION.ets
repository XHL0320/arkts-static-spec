/**
 * @id STM_08_01_029_RUNTIME_COND_EXECUTION
 * @expect runtime
 * @section 8.1
 * @design 条件语句中只有匹配分支执行

 * @note 运行时用例：实际执行验证条件分支
 */
function main(): void {
  let flag: boolean = false
  let x: int = 0
  if (true) { x = 1 }
  if (flag) { x = 99 }
  if (x != 1) { throw new Error("assertion: only true branch executed") }
  console.log("verified")
}
