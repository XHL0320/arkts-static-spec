/**
 * @id STM_08_01_030_RUNTIME_ABRUPT_ABORT
 * @expect runtime
 * @section 8.1
 * @design 异常完成中止后续语句
 * @runtime-throws=Error
 * @note 运行时用例：实际执行验证异常中止
 */
function main(): void {
  let x: int = 0
  x = 1
  throw new Error("abort")
  x = 2
}
