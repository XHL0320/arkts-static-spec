/*
 * @id SEM_15_10_036_PASS_ARCHIVE_explicit_function_order
 * @expect compile-pass
 * @section 15.10
 * @design 归档吸纳：explicit function order。来源 `Overloading\compile-pass\OVERLOAD_PASS_003_explicit_function_order.ets`；用于补充 ArkTS overload / overload resolution / effective signature 覆盖。
 * @source D:\work\spec\arkts-spec\SEMANTICS\ets_cases\Overloading\compile-pass\OVERLOAD_PASS_003_explicit_function_order.ets
 */

function overloadPass003Number(p: number): string {
  return 'number'
}

function overloadPass003Int(p: int): string {
  return 'int'
}

overload overloadPass003Select { overloadPass003Number, overloadPass003Int }

function main(): void {
  arktest.assertEQ(overloadPass003Select(1), 'number')
  arktest.assertEQ(overloadPass003Int(1), 'int')
}
