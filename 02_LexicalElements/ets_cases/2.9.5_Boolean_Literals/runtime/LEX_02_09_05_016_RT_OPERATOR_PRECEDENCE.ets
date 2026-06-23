/**
 * @id LEX_02_09_05_016_RT_OPERATOR_PRECEDENCE
 * @expect runtime
 * @section 2.9.5
 * @design 运算优先级验证
 * @note runtime 用例：验证 && 优先于 ||
 */

function main(): void {
  // 验证 && 优先于 ||
  // true || false && false 应该等于 true || (false && false) = true || false = true
  let x1: boolean = true || false && false
  if (x1 !== true) { throw new Error("precedence 1 failed, got " + x1) }

  // (true || false) && false 应该等于 true && false = false
  let x2: boolean = (true || false) && false
  if (x2 !== false) { throw new Error("precedence 2 failed, got " + x2) }

  // false && true || true 应该等于 (false && true) || true = false || true = true
  let x3: boolean = false && true || true
  if (x3 !== true) { throw new Error("precedence 3 failed, got " + x3) }

  // false && (true || true) 应该等于 false && true = false
  let x4: boolean = false && (true || true)
  if (x4 !== false) { throw new Error("precedence 4 failed, got " + x4) }
}
