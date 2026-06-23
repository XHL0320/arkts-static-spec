/**
 * @id LEX_02_05_045_RT_NULLISH_COALESCING
 * @expect runtime
 * @section 2.5
 * @design 空值合并运算符运行时验证
 * @note runtime 用例：验证空值合并运算符的运行时行为
 */

function main(): void {
  // 空值合并运算符
  let x: int | null = null
  let y: int = x ?? 42
  if (y !== 42) { throw new Error("null ?? 42 failed, got " + y) }

  let a: int | null = 10
  let b: int = a ?? 42
  if (b !== 10) { throw new Error("10 ?? 42 failed, got " + b) }

  let c: string | undefined = undefined
  let d: string = c ?? "default"
  if (d !== "default") { throw new Error("undefined ?? default failed, got " + d) }

  let e: string | undefined = "hello"
  let f: string = e ?? "default"
  if (f !== "hello") { throw new Error("hello ?? default failed, got " + f) }
}
