/*
 * @id SEM_15_12_00_107_FAIL_ARCHIVE_overload_equivalent_return_ignored
 * @expect compile-fail
 * @section 15.12
 * @design 归档吸纳：overload equivalent return ignored。来源 `Overloading\compile-fail\OVERLOAD_FAIL_002_overload_equivalent_return_ignored.ets`；用于补充 ArkTS overload / overload resolution / effective signature 覆盖。
 * @source D:\work\spec\arkts-spec\SEMANTICS\ets_cases\Overloading\compile-fail\OVERLOAD_FAIL_002_overload_equivalent_return_ignored.ets
 */

function overloadFail002Value(p: Array<string>): string {
  return 's'
}

// @expect-error: ESE0131 Function overloadFail002Value with this assembly signature already declared.
function overloadFail002Value(p: Array<int>): int {
  return 2
}
