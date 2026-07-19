/**
 * @id EXP_07_27_01_012_RUNTIME_INT_REL_ASSERT
 * @expect runtime
 * @section 7.27.1
 * @design Numeric_Relational_Operators中int关系运算运行时断言
 * @note 对抗用例: Numeric_Relational_Operators中int关系运算运行时行为正确
 */
function main(): void {
  let a: int = 10; let b: int = 20
  if (!(a < b)) { throw new Error("assertion"); }
  console.log("verified")
}




