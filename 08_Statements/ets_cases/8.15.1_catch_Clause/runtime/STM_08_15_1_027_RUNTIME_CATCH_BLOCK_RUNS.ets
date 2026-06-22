/**
 * @id STM_08_15_1_027_RUNTIME_CATCH_BLOCK_RUNS
 * @expect runtime
 * @section 8.15.1
 * @design 异常发生时 catch 块执行

 * @note 运行时用例：实际执行验证catch执行
 */
class TestError extends Error {}
function main(): void {
  let caught: boolean = false
  try { throw new TestError() } catch (e) { caught = true }
  if (!caught) { throw new Error("assertion: catch should run") }
  console.log("verified")
}
