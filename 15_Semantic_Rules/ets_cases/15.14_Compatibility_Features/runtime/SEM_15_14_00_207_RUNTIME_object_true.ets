/*
 * @id SEM_15_14_00_207_RUNTIME_object_true
 * @expect runtime
 * @section 15.14
 * @design 非 null/undefined 对象在条件中为 truthy。
 */

function main(): void {
  let x: Object = {}
  let result = x ? "truthy" : "falsy"
  arktest.assertEQ(result, "truthy")
}
