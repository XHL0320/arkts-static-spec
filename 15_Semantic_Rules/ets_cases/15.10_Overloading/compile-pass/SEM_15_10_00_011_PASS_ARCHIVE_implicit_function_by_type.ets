/*
 * @id SEM_15_10_00_011_PASS_ARCHIVE_implicit_function_by_type
 * @expect compile-pass
 * @section 15.10
 * @design 归档吸纳：implicit function by type。来源 `Overloading\compile-pass\OVERLOAD_PASS_001_implicit_function_by_type.ets`；用于补充 ArkTS overload / overload resolution / effective signature 覆盖。
 * @source D:\work\spec\arkts-spec\SEMANTICS\ets_cases\Overloading\compile-pass\OVERLOAD_PASS_001_implicit_function_by_type.ets
 */

function overloadPass001Value(p: int): int {
  return p + 1
}

function overloadPass001Value(p: string): string {
  return p + '_ok'
}

function main(): void {
  arktest.assertEQ(overloadPass001Value(1), 2)
  arktest.assertEQ(overloadPass001Value('ark'), 'ark_ok')
}
