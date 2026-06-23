/*
 * @id SEM_15_10_00_108_FAIL_ARCHIVE_explicit_overload_implicit_name
 * @expect compile-fail
 * @section 15.10
 * @design 归档吸纳：explicit overload implicit name。来源 `Overloading\compile-fail\OVERLOAD_FAIL_006_explicit_overload_implicit_name.ets`；用于补充 ArkTS overload / overload resolution / effective signature 覆盖。
 * @source D:\work\spec\arkts-spec\SEMANTICS\ets_cases\Overloading\compile-fail\OVERLOAD_FAIL_006_explicit_overload_implicit_name.ets
 */

function overloadFail006Value(p: int): int {
  return p
}

function overloadFail006Value(p: string): string {
  return p
}

function overloadFail006Other(p: boolean): boolean {
  return p
}

// @expect-error: ESE0389 The overloaded name 'overloadFail006Value' can't refer to a function with overload signatures.
overload overloadFail006Call { overloadFail006Value, overloadFail006Other }
