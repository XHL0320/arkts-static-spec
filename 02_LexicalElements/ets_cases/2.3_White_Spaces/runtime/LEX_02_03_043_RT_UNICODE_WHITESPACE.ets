/**
 * @id LEX_02_03_043_RT_UNICODE_WHITESPACE
 * @expect runtime
 * @section 2.3
 * @design Unicode 空白字符运行时验证
 * @note runtime 用例：验证 Unicode 空白字符不影响运算结果
 */

function main(): void {
  // Unicode 空白字符不影响运算
  let x1:int = 1
  let y1:int = 2
  let z1:int = x1 + y1
  if (z1 !== 3) { throw new Error("Unicode whitespace failed, got " + z1) }

  // 全角空格不影响运算
  let x2:int = 10
  let　y2:int = 20
  let z2:int = x2 + y2
  if (z2 !== 30) { throw new Error("Fullwidth space failed, got " + z2) }
}
