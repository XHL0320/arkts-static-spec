/*
 * @id SEM_15_10_024_FAIL_ARCHIVE_overload_name_same_as_function_not_listed
 * @expect compile-fail
 * @section 15.10
 * @design 归档吸纳：overload name same as function not listed。来源 `Overloading\compile-fail\OVERLOAD_FAIL_007_overload_name_same_as_function_not_listed.ets`；用于补充 ArkTS overload / overload resolution / effective signature 覆盖。
 * @source D:\work\spec\arkts-spec\SEMANTICS\ets_cases\Overloading\compile-fail\OVERLOAD_FAIL_007_overload_name_same_as_function_not_listed.ets
 */

function overloadFail007Call(p: int): int {
  return p
}

function overloadFail007Other(p: string): string {
  return p
}

// @expect-error: ESE0397 Method with the same name as overload declaration 'overloadFail007Call', overloadlist must list this medhod.
overload overloadFail007Call { overloadFail007Other }
