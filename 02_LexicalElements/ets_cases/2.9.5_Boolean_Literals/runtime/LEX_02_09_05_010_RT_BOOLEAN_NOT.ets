/**
 * @id LEX_02_09_05_010_RT_BOOLEAN_NOT
 * @expect runtime
 * @section 2.9.5
 * @design 布尔 NOT 运算正确性
 * @note runtime 用例：验证布尔 NOT 运算结果
 */

function main(): void {
  // 验证 NOT 运算
  let x1: boolean = !true
  if (x1 !== false) { throw new Error("!true failed") }

  let x2: boolean = !false
  if (x2 !== true) { throw new Error("!false failed") }

  // 验证双重 NOT
  let x3: boolean = !!true
  if (x3 !== true) { throw new Error("!!true failed") }

  let x4: boolean = !!false
  if (x4 !== false) { throw new Error("!!false failed") }

  // 验证 NOT 与变量
  let a: boolean = true
  let b: boolean = !a
  if (b !== false) { throw new Error("!true variable failed") }
}
