/*
 * @id SEM_15_10_025_FAIL_ARCHIVE_export_overload_contains_unexported
 * @expect compile-fail
 * @section 15.10
 * @design 归档吸纳：export overload contains unexported。来源 `Overloading\compile-fail\OVERLOAD_FAIL_008_export_overload_contains_unexported.ets`；用于补充 ArkTS overload / overload resolution / effective signature 覆盖。
 * @source D:\work\spec\arkts-spec\SEMANTICS\ets_cases\Overloading\compile-fail\OVERLOAD_FAIL_008_export_overload_contains_unexported.ets
 */

export function overloadFail008Exported(p: string): string {
  return p
}

function overloadFail008Hidden(p: int): int {
  return p
}

// @expect-error: ESE0456 The overload function must be exported along because the overload alias is exported.
export overload overloadFail008Call { overloadFail008Exported, overloadFail008Hidden }
