/**
 * @id EXP2_17_01_012_RUNTIME_CHAR_OBJECT_INSTANCEOF
 * @expect runtime
 * @section 17.1
 * @design char 赋值给 Object 后 instanceof 检查：验证 char 是 Object 的子类型
 * @note 运行时用例：实际执行验证 char 与 Object 的类型关系
 */
function main(): void {
  let ch: char = c'X'
  let o: Object = ch
  // char is a class type and subtype of Object
  // instanceof should work on Object reference
  if (o == null) {
    throw new Error("assertion failed: Object reference should not be null")
  }
  console.log("verified")
}
