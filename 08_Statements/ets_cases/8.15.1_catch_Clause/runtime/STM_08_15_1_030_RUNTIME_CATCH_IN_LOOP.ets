/**
 * @id STM_08_15_1_030_RUNTIME_CATCH_IN_LOOP
 * @expect runtime
 * @section 8.15.1
 * @design 循环中每次 catch 独立处理异常

 * @note 运行时用例：实际执行验证循环catch
 */
function main(): void {
  let errors: int = 0
  for (let i: int = 0; i < 5; i++) {
    try { if (i % 2 == 0) throw new Error() } catch (e) { errors++ }
  }
  if (errors != 3) { throw new Error("assertion: 3 errors (i=0,2,4)") }
  console.log("verified")
}
