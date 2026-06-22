/**
 * @id CON_06_03_01_021_RUNTIME_DOUBLE_INT_COMPARISON
 * @expect runtime
 * @section 6.3.1
 * @design double 与 int 的关系比较运行时行为：int widening 为 double
 * @note 运行时用例：实际执行验证 double > int 的语义正确性
 */
function main(): void {
  let a: double = 3.14
  let b: int = 3

  if (!(a > b)) {
    throw new Error("assertion failed: 3.14 > 3 should be true")
  }
  if (a < b) {
    throw new Error("assertion failed: 3.14 < 3 should be false")
  }
  if (!(a >= b)) {
    throw new Error("assertion failed: 3.14 >= 3 should be true")
  }
  if (a <= b) {
    throw new Error("assertion failed: 3.14 <= 3 should be false")
  }

  console.log("Double-int relational comparison verified")
}
