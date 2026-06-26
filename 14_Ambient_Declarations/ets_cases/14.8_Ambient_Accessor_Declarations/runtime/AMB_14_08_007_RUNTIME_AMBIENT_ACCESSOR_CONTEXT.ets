/**
 * @id AMB_14_08_007_RUNTIME_AMBIENT_ACCESSOR_CONTEXT
 * @expect runtime
 * @section 14.8
 * @design ambient accessor 与 main 共存
 * @note 运行时用例
 */
declare get name(): string

function main(): void {
  let x: int = 1
  if (x != 1) {
    throw new Error("assertion failed")
  }
  console.log("verified")
}
