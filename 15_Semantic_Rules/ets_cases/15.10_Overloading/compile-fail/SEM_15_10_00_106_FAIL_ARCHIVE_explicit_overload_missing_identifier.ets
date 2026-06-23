/*
 * @id SEM_15_10_00_106_FAIL_ARCHIVE_explicit_overload_missing_identifier
 * @expect compile-fail
 * @section 15.10
 * @design 归档吸纳：explicit overload missing identifier。来源 `Overloading\compile-fail\OVERLOAD_FAIL_004_explicit_overload_missing_identifier.ets`；用于补充 ArkTS overload / overload resolution / effective signature 覆盖。
 * @source D:\work\spec\arkts-spec\SEMANTICS\ets_cases\Overloading\compile-fail\OVERLOAD_FAIL_004_explicit_overload_missing_identifier.ets
 */

function overloadFail004Value(p: int): int {
  return p
}

// @expect-error: ESE0143 Unresolved reference overloadFail004Missing
overload overloadFail004Call { overloadFail004Value, overloadFail004Missing }
