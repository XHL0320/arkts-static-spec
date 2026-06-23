/**
 * @id EXP_07_01_01_030_RUNTIME_LOGICAL_PRECEDENCE
 * @expect runtime
 * @section 7.1.1
 * @design 逻辑与 `&&` 优先于逻辑或 `||`：`true || false && false` = true
 * @note 运行时用例：验证逻辑运算符优先级
 */
function main(): void {
  let r1: boolean = true || false && false
  // true || (false && false) = true || false = true
  if (r1 != true) {
    throw new Error("assertion failed: true||false&&false != true")
  }
  let r2: boolean = false && false || true
  // (false && false) || true = false || true = true
  if (r2 != true) {
    throw new Error("assertion failed: false&&false||true != true")
  }
  let r3: boolean = true || true && false || false
  // true || (true && false) || false = true || false || false = true
  if (r3 != true) {
    throw new Error("assertion failed: true||true&&false||false != true")
  }
  console.log("verified")
}
