/**
 * @id EXP_07_29_02_028_RUNTIME_INT_REL_ASSERT
 * @expect runtime
 * @section 7.29.2
 * @design Boolean_Logical_Operators中int关系运算运行时断言
 * @note 对抗用例: Boolean_Logical_Operators中int关系运算运行时行为正确
 */
function main(): void {
  let a: int = 10; let b: int = 20
  if (!(a < b)) { throw new Error("assertion"); }
  console.log("verified")
}




