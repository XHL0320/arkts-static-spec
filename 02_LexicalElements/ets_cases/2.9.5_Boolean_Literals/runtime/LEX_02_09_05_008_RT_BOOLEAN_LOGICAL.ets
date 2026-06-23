/**
 * @id LEX_02_09_05_008_RT_BOOLEAN_LOGICAL
 * @expect runtime
 * @section 2.9.5
 * @design 布尔逻辑运算正确性
 * @note runtime 用例：验证布尔逻辑运算结果
 */

function main(): void {
  // 验证 AND 运算
  let x1: boolean = true && true
  if (x1 !== true) { throw new Error("true && true failed") }

  let x2: boolean = true && false
  if (x2 !== false) { throw new Error("true && false failed") }

  let x3: boolean = false && true
  if (x3 !== false) { throw new Error("false && true failed") }

  let x4: boolean = false && false
  if (x4 !== false) { throw new Error("false && false failed") }

  // 验证 OR 运算
  let x5: boolean = true || true
  if (x5 !== true) { throw new Error("true || true failed") }

  let x6: boolean = true || false
  if (x6 !== true) { throw new Error("true || false failed") }

  let x7: boolean = false || true
  if (x7 !== true) { throw new Error("false || true failed") }

  let x8: boolean = false || false
  if (x8 !== false) { throw new Error("false || false failed") }
}
