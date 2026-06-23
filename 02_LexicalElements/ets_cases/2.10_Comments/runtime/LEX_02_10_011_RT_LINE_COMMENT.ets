/**
 * @id LEX_02_10_011_RT_LINE_COMMENT
 * @expect runtime
 * @section 2.10
 * @design 单行注释不影响代码执行
 * @note runtime 用例：验证单行注释不影响代码执行
 */

function main(): void {
  // This is a comment
  let x1: int = 1
  if (x1 !== 1) { throw new Error("line comment failed") }

  // Another comment
  let x2: int = 2
  if (x2 !== 2) { throw new Error("line comment failed") }

  let x3: int = x1 + x2 // Comment after code
  if (x3 !== 3) { throw new Error("line comment after code failed") }
}
