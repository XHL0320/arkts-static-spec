/**
 * @id EXP_07_35_04_004_RUNTIME_LAMBDA_LOOP_CAPTURE
 * @expect runtime
 * @section 7.35.4
 * @design Lambda 捕获变量为引用（非拷贝）——修改外部变量影响 Lambda 内部值
 * @note 运行时用例：实际执行验证 Lambda 捕获引用语义。ArkTS Lambda 捕获变量为引用，修改外部变量会反映在 Lambda 中。
 */
function main(): void {
  let count: int = 0
  let getCount: () => int = () => count
  let r0: int = getCount()
  if (r0 != 0) { throw new Error("assertion: initial count should be 0, got " + r0) }
  count = 42
  let r1: int = getCount()
  if (r1 != 42) { throw new Error("assertion: count changed to 42, got " + r1) }
  console.log("verified")
}
