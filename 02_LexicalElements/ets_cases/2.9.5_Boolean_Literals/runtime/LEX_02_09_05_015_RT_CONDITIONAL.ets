/**
 * @id LEX_02_09_05_015_RT_CONDITIONAL
 * @expect runtime
 * @section 2.9.5
 * @design 条件表达式验证
 * @note runtime 用例：验证布尔在条件表达式中的使用
 */

function main(): void {
  // 验证 if 条件
  let x1: boolean = true
  let result1: int = 0
  if (x1) {
    result1 = 1
  }
  if (result1 !== 1) { throw new Error("if true failed, got " + result1) }

  // 验证 if false
  let x2: boolean = false
  let result2: int = 0
  if (x2) {
    result2 = 1
  }
  if (result2 !== 0) { throw new Error("if false failed, got " + result2) }

  // 验证三元表达式
  let x3: boolean = true
  let result3: int = x3 ? 1 : 0
  if (result3 !== 1) { throw new Error("ternary true failed, got " + result3) }

  let x4: boolean = false
  let result4: int = x4 ? 1 : 0
  if (result4 !== 0) { throw new Error("ternary false failed, got " + result4) }
}
