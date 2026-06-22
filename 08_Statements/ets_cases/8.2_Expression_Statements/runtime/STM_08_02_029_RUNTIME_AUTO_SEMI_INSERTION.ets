/**
 * @id STM_08_02_029_RUNTIME_AUTO_SEMI_INSERTION
 * @expect runtime
 * @section 8.2
 * @design 自动分号插入

 * @note 运行时用例：实际执行验证自动分号
 */
function main(): void {
  let x: int = 1
  x++
  let y: int = x
  if (y != 2) { throw new Error("assertion: x++ then y=x should get 2") }
  console.log("verified")
}
