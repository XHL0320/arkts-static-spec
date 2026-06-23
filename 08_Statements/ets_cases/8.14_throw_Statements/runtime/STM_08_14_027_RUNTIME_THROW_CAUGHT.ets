/**
 * @id STM_08_14_027_RUNTIME_THROW_CAUGHT
 * @expect runtime
 * @section 8.14
 * @design throw 被 catch 捕获

 * @note 运行时用例：实际执行验证throw被catch
 */
function main(): void {
  let caught: boolean = false
  try { throw new Error("test") } catch (e) { caught = true }
  if (!caught) { throw new Error("assertion: should have caught") }
  console.log("verified")
}
