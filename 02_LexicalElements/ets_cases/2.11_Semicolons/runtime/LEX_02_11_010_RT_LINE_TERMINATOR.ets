/**
 * @id LEX_02_11_010_RT_LINE_TERMINATOR
 * @expect runtime
 * @section 2.11
 * @design 行分隔符终止运行时行为
 * @note runtime 用例：验证行分隔符终止运行时行为
 */

function main(): void {
  // 行分隔符终止
  let x1: int = 1
  let x2: int = 2
  let x3: int = x1 + x2
  if (x3 !== 3) { throw new Error("line terminator failed") }
}
