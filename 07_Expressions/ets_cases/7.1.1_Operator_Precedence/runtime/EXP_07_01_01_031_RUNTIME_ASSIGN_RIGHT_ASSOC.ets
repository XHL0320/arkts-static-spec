/**
 * @id EXP_07_01_01_031_RUNTIME_ASSIGN_RIGHT_ASSOC
 * @expect runtime
 * @section 7.1.1
 * @design 赋值右结合：`a = b = c = 5` 从右向左赋值，a,b,c 全部为 5
 * @note 运行时用例：验证赋值右结合性
 */
function main(): void {
  let a: int = 0
  let b: int = 0
  let c: int = 0
  a = b = c = 5
  if (a != 5) {
    throw new Error("assertion failed: a != 5, got " + a)
  }
  if (b != 5) {
    throw new Error("assertion failed: b != 5, got " + b)
  }
  if (c != 5) {
    throw new Error("assertion failed: c != 5, got " + c)
  }
  console.log("verified")
}
