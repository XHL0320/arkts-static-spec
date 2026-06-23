/**
 * @id EXP_07_35_02_003_PASS_BLOCK_BODY_MULTI_STMT
 * @expect compile-pass
 * @section 7.35.2
 * @design 验证 Lambda 块体包含多条语句（局部变量声明 + 计算 + return）的正确用法
 * @note 正向用例：块体内可声明局部变量、进行计算后返回结果
 */
function main(): void {
  // 块体多条语句：声明局部变量后返回
  const f1: (x: int) => int = (x: int): int => {
    let y: int = x + 1
    return y * 2
  }
  // 块体多条语句：两个中间变量
  const f2: (a: int, b: int) => int = (a: int, b: int): int => {
    let sum: int = a + b
    let prod: int = a * b
    return sum + prod
  }
  // 块体多条语句：字符串操作
  const f3: (s: string, n: int) => string = (s: string, n: int): string => {
    let prefix: string = s + ": "
    return prefix + n
  }

  let r1: int = f1(5)
  let r2: int = f2(3, 4)
  let r3: string = f3("value", 42)

  if (r1 != 12) { throw new Error("FAIL: f1(5)") }
  if (r2 != 19) { throw new Error("FAIL: f2(3,4)") }
  if (r3 != "value: 42") { throw new Error("FAIL: f3('value', 42)") }
  console.log("verified")
}
