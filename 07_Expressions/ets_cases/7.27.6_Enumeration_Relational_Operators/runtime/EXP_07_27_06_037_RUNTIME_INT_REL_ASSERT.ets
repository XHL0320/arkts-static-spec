/**
 * @id EXP_07_27_06_037_RUNTIME_INT_REL_ASSERT
 * @expect runtime
 * @section 7.27.6
 * @design Enumeration_Relational_Operators中int关系运算运行时断言
 * @note 对抗用例: Enumeration_Relational_Operators中int关系运算运行时行为正确
 */
function main(): void {
  let a: int = 10; let b: int = 20
  if (!(a < b)) { throw new Error("assertion"); }
  console.log("verified")
}




