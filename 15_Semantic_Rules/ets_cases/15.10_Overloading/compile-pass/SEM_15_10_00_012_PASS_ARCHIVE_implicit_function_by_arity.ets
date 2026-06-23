/*
 * @id SEM_15_10_00_012_PASS_ARCHIVE_implicit_function_by_arity
 * @expect compile-pass
 * @section 15.10
 * @design 归档吸纳：implicit function by arity。来源 `Overloading\compile-pass\OVERLOAD_PASS_002_implicit_function_by_arity.ets`；用于补充 ArkTS overload / overload resolution / effective signature 覆盖。
 * @source D:\work\spec\arkts-spec\SEMANTICS\ets_cases\Overloading\compile-pass\OVERLOAD_PASS_002_implicit_function_by_arity.ets
 */

function overloadPass002Value(): int {
  return 2
}

function overloadPass002Value(p: int): int {
  return p + 2
}

function main(): void {
  arktest.assertEQ(overloadPass002Value(), 2)
  arktest.assertEQ(overloadPass002Value(3), 5)
}
