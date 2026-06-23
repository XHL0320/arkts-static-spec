/**
 * @id EXP_07_01_01_025_RUNTIME_PAREN_OVERRIDES
 * @expect runtime
 * @section 7.1.1
 * @design 括号覆盖优先级：`(2 + 3) * 4` = 20，`2 + 3 * 4` = 14
 * @note 运行时用例：验证括号改变计算顺序的实际值
 */
function main(): void {
  let withParen: int = (2 + 3) * 4
  let withoutParen: int = 2 + 3 * 4
  if (withParen != 20) {
    throw new Error("assertion failed: (2+3)*4 != 20, got " + withParen)
  }
  if (withoutParen != 14) {
    throw new Error("assertion failed: 2+3*4 != 14, got " + withoutParen)
  }
  let nested: int = ((1 + 2) * (3 + 4))
  if (nested != 21) {
    throw new Error("assertion failed: (1+2)*(3+4) != 21, got " + nested)
  }
  console.log("verified")
}
