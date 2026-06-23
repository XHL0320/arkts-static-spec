/*
 * @id SEM_15_12_00_109_FAIL_ARCHIVE_tuple_same_arity_erased_equivalent
 * @expect compile-fail
 * @section 15.12
 * @design 归档吸纳：tuple same arity erased equivalent。来源 `Overloading\compile-fail\OVERLOAD_FAIL_020_tuple_same_arity_erased_equivalent.ets`；用于补充 ArkTS overload / overload resolution / effective signature 覆盖。
 * @source D:\work\spec\arkts-spec\SEMANTICS\ets_cases\Overloading\compile-fail\OVERLOAD_FAIL_020_tuple_same_arity_erased_equivalent.ets
 */

function overloadFail020Value(p: [int, int]): int {
  return p[0]
}

// @expect-error: ESE0131 Function overloadFail020Value with this assembly signature already declared.
function overloadFail020Value(p: [string, string]): string {
  return p[0]
}
