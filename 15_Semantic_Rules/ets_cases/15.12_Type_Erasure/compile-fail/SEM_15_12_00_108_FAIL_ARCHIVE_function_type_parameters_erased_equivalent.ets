/*
 * @id SEM_15_12_00_108_FAIL_ARCHIVE_function_type_parameters_erased_equivalent
 * @expect compile-fail
 * @section 15.12
 * @design 归档吸纳：function type parameters erased equivalent。来源 `Overloading\compile-fail\OVERLOAD_FAIL_019_function_type_parameters_erased_equivalent.ets`；用于补充 ArkTS overload / overload resolution / effective signature 覆盖。
 * @source D:\work\spec\arkts-spec\SEMANTICS\ets_cases\Overloading\compile-fail\OVERLOAD_FAIL_019_function_type_parameters_erased_equivalent.ets
 */

function overloadFail019Value(cb: (p: int) => string): string {
  return cb(19)
}

// @expect-error: ESE0131 Function overloadFail019Value with this assembly signature already declared.
function overloadFail019Value(cb: (p: string) => int): int {
  return cb('ark')
}
