/**
 * @id EXP_07_01_01_028_RUNTIME_RELATIONAL_EQUALITY
 * @expect runtime
 * @section 7.1.1
 * @design 关系优先于相等：`3 < 5 == true` = true，`10 > 20 != false` = false
 * @note 运行时用例：验证关系运算符优先于相等运算符
 */
function main(): void {
  let r1: boolean = 3 < 5 == true
  if (r1 != true) {
    throw new Error("assertion failed: 3<5==true != true")
  }
  let r2: boolean = 10 > 20 != false
  if (r2 != false) {
    throw new Error("assertion failed: 10>20!=false != false")
  }
  let r3: boolean = 1 < 2 == 3 < 4
  if (r3 != true) {
    throw new Error("assertion failed: 1<2==3<4 != true")
  }
  console.log("verified")
}
