/**
 * @id EXP_07_29_009_RUNTIME_INT_REL_ASSERT
 * @expect runtime
 * @section 7.29
 * @design Bitwise_and_Logical_Expressions中int关系运算运行时断言
 * @note 对抗用例: Bitwise_and_Logical_Expressions中int关系运算运行时行为正确
 */
function main(): void {
  let a: int = 10; let b: int = 20
  if (!(a < b)) { throw new Error("assertion"); }
  console.log("verified")
}





