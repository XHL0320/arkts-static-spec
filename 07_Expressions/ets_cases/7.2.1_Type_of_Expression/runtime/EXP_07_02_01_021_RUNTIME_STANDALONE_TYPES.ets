/**
 * @id EXP_07_02_01_021_RUNTIME_STANDALONE_TYPES
 * @expect runtime
 * @section 7.2.1
 * @design standalone 表达式在运行时类型正确
 * @note 运行时用例：验证 standalone 推断类型的运行时行为
 */
function main(): void {
  let a = 42
  if (a != 42) {
    throw new Error("assertion failed: a != 42")
  }
  let b = "hello"
  if (b != "hello") {
    throw new Error("assertion failed: b != hello")
  }
  let c = true
  if (c != true) {
    throw new Error("assertion failed: c != true")
  }
  console.log("verified")
}
