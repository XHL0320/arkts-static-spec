/**
 * @id EXP_07_32_02_029_RUNTIME_INT_REL_ASSERT
 * @expect runtime
 * @section 7.32.2
 * @design Compound_Assignment_Operators中int关系运算运行时断言
 * @note 对抗用例: Compound_Assignment_Operators中int关系运算运行时行为正确
 */
function main(): void {
  let a: int = 10; let b: int = 20
  if (!(a < b)) { throw new Error("assertion"); }
  console.log("verified")
}




