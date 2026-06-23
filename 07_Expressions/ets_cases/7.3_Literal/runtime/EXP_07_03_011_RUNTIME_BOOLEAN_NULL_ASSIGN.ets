/**
 * @id EXP_07_03_011_RUNTIME_BOOLEAN_NULL_ASSIGN
 * @expect runtime
 * @section 7.3
 * @design 运行时验证布尔、null、undefined 字面量的使用
 * @note 运行时用例：验证 Boolean 字面量 true/false 和 null/undefined 的基本运行时行为
 */
function main(): void {
  let t: boolean = true
  let f: boolean = false
  if (t != true) throw new Error("true literal fail")
  if (f != false) throw new Error("false literal fail")
  if (!t) throw new Error("not true fail")
  if (f) throw new Error("false is truthy fail")
  console.log("verified")
}
