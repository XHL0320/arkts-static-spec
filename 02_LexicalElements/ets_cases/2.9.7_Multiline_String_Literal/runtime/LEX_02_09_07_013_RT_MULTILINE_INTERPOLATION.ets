/**
 * @id LEX_02_09_07_013_RT_MULTILINE_INTERPOLATION
 * @expect runtime
 * @section 2.9.7
 * @design 多行字符串插值运行时验证
 * @note runtime 用例：验证多行字符串插值的运行时行为
 */

function main(): void {
  // 多行字符串插值
  let name = "World"
  let s1 = `Hello, ${name}!`
  if (s1 !== "Hello, World!") { throw new Error("interpolation failed, got " + s1) }

  // 表达式插值
  let x = 10
  let y = 20
  let s2 = `Sum: ${x + y}`
  if (s2 !== "Sum: 30") { throw new Error("expression interpolation failed, got " + s2) }

  // 多行插值
  let s3 = `Line 1: ${name}
Line 2: ${x + y}`
  let expected = "Line 1: World\nLine 2: 30"
  if (s3 !== expected) { throw new Error("multiline interpolation failed, got " + s3) }
}
