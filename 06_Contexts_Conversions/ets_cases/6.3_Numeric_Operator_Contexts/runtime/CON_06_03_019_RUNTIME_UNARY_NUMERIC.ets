/**
 * @id CON_06_03_019_RUNTIME_UNARY_NUMERIC
 * @expect runtime
 * @section 6.3
 * @design 一元运算运行时行为: + - ~ 对 int/long
 * @note 运行时用例：实际执行验证一元运算符结果
 */
function main(): void {
  let a: int = 10
  if (+a != 10) {
    throw new Error("assertion failed: +10 should be 10")
  }
  if (-a != -10) {
    throw new Error("assertion failed: -10 should be -10")
  }
  if (~a != -11) {
    throw new Error("assertion failed: ~10 should be -11")
  }

  let b: int = 0
  if (~b != -1) {
    throw new Error("assertion failed: ~0 should be -1")
  }

  console.log("Unary numeric verified")
}
