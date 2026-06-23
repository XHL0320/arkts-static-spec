/*
 * @id SEM_15_14_00_206_RUNTIME_undefined_false
 * @expect runtime
 * @section 15.14
 * @design undefined 在条件中为 falsy。
 */

function main(): void {
  let x: string | undefined = undefined
  let result = x ? "truthy" : "falsy"
  arktest.assertEQ(result, "falsy")
}
