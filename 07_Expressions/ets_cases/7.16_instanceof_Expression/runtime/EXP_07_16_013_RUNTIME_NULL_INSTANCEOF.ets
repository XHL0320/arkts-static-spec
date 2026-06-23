/**
 * @id EXP_07_16_013_RUNTIME_NULL_INSTANCEOF
 * @expect runtime
 * @section 7.16
 * @design 验证 undefined/null 值 instanceof 返回 false
 * @note 运行时用例：undefined instanceof 场景，应返回 false
 */
class A {}

function main(): void {
  let a: A | undefined = undefined
  if (a instanceof A) {
    throw new Error("assertion failed: undefined instanceof A should be false")
  }
  console.log("verified")
}
