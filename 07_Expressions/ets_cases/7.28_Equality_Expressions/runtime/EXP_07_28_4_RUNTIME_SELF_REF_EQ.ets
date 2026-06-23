/**
 * @id EXP_07_28_4_RUNTIME_SELF_REF_EQ
 * @expect runtime
 * @section 7.28
 * @design 自身引用相等
 * @note 运行时用例：实际执行验证自身引用相等
 */

function main(): void {
  let a: int = 42; if (a != a) { throw new Error("assertion: self eq") }
  console.log("verified")
}
