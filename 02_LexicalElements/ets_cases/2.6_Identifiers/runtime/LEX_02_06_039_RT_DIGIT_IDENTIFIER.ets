/**
 * @id LEX_02_06_039_RT_DIGIT_IDENTIFIER
 * @expect runtime
 * @section 2.6
 * @design 运行时验证含数字标识符的运算
 * @note 运行时用例：v0/v1/v2 等数字后缀标识符
 */
function main(): void {
  let v0: int = 0
  let v1: int = 10
  let v2: int = 20
  let var123abc: int = v0 + v1 + v2
  if (var123abc !== 30) { throw new Error("var123abc !== 30") }
}
