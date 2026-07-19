/**
 * @id EXP_07_33_037_RUNTIME_INT_REL_ASSERT
 * @expect runtime
 * @section 7.33
 * @design Ternary_Conditional_Expressions中int关系运算运行时断言
 * @note 对抗用例: Ternary_Conditional_Expressions中int关系运算运行时行为正确
 */
function main(): void {
  let a: int = 10; let b: int = 20
  if (!(a < b)) { throw new Error("assertion"); }
  console.log("verified")
}





