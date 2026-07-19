/**
 * @id EXP_07_34_027_RUNTIME_INT_REL_ASSERT
 * @expect runtime
 * @section 7.34
 * @design String_Interpolation_Expressions中int关系运算运行时断言
 * @note 对抗用例: String_Interpolation_Expressions中int关系运算运行时行为正确
 */
function main(): void {
  let a: int = 10; let b: int = 20
  if (!(a < b)) { throw new Error("assertion"); }
  console.log("verified")
}





