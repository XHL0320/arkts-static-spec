/**
 * @id EXP_07_35_02_002_PASS_BLOCK_BODY_RETURN
 * @expect compile-pass
 * @section 7.35.2
 * @design 验证 Lambda 块体（block body）带显式 return 语句的正确用法
 * @note 正向用例：块体可以是 { return expression; } 形式，支持 int/string 类型
 */
function main(): void {
  // 块体带 return — int 类型
  const f1: (x: int) => int = (x: int): int => {
    return x + 1
  }
  // 块体带 return — string 类型
  const f2: (s: string) => string = (s: string): string => {
    return s + "!"
  }
  // 块体带 return — boolean 类型
  const f3: (b: boolean) => boolean = (b: boolean): boolean => {
    return !b
  }

  let r1: int = f1(10)
  let r2: string = f2("hello")
  let r3: boolean = f3(true)

  if (r1 != 11) { throw new Error("FAIL: f1(10)") }
  if (r2 != "hello!") { throw new Error("FAIL: f2('hello')") }
  if (r3 != false) { throw new Error("FAIL: f3(true)") }
  console.log("verified")
}
