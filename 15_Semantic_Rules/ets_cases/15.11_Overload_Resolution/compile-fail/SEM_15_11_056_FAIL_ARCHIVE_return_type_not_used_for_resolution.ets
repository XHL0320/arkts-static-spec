/*
 * @id SEM_15_11_056_FAIL_ARCHIVE_return_type_not_used_for_resolution
 * @expect compile-fail
 * @section 15.11
 * @design 归档吸纳：return type not used for resolution。来源 `Overloading\compile-fail\OVERLOAD_FAIL_003_return_type_not_used_for_resolution.ets`；用于补充 ArkTS overload / overload resolution / effective signature 覆盖。
 * @source D:\work\spec\arkts-spec\SEMANTICS\ets_cases\Overloading\compile-fail\OVERLOAD_FAIL_003_return_type_not_used_for_resolution.ets
 */

function overloadFail003Value(p: string): string {
  return p
}

function overloadFail003Value(p: int): int {
  return p
}

// @expect-error: ESE0318 Type 'String' cannot be assigned to type 'Int'
let overloadFail003Result: int = overloadFail003Value('ark')
