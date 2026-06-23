/**
 * @id LEX_02_11_011_RT_SEMICOLON
 * @expect runtime
 * @section 2.11
 * @design 分号分隔运行时行为
 * @note runtime 用例：验证分号分隔运行时行为
 */

function main(): void {
  // 分号分隔
  let x1: int = 1; let x2: int = 2; let x3: int = x1 + x2
  if (x3 !== 3) { throw new Error("semicolon failed") }
}
