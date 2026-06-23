/*
 * @id SEM_15_14_00_205_RUNTIME_null_false
 * @expect runtime
 * @section 15.14
 * @design null 在条件中为 falsy。
 */

function main(): void {
  let x: string | null = null
  let result = x ? "truthy" : "falsy"
  arktest.assertEQ(result, "falsy")
}
