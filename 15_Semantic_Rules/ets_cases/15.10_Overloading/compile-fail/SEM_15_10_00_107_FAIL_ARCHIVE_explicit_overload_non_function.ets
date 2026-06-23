/*
 * @id SEM_15_10_00_107_FAIL_ARCHIVE_explicit_overload_non_function
 * @expect compile-fail
 * @section 15.10
 * @design 归档吸纳：explicit overload non function。来源 `Overloading\compile-fail\OVERLOAD_FAIL_005_explicit_overload_non_function.ets`；用于补充 ArkTS overload / overload resolution / effective signature 覆盖。
 * @source D:\work\spec\arkts-spec\SEMANTICS\ets_cases\Overloading\compile-fail\OVERLOAD_FAIL_005_explicit_overload_non_function.ets
 */

function overloadFail005Value(p: int): int {
  return p
}

let overloadFail005Name: int = 1

// @expect-error: ESE0384 overloaded name must refer to an accessible method.
overload overloadFail005Call { overloadFail005Value, overloadFail005Name }
