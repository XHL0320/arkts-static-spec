/*
 * @id SEM_15_11_00_020_PASS_ARCHIVE_overload_set_warning_unreachable
 * @expect compile-pass
 * @section 15.11
 * @design 归档吸纳：overload set warning unreachable。来源 `Overloading\compile-pass\OVERLOAD_PASS_017_overload_set_warning_unreachable.ets`；用于补充 ArkTS overload / overload resolution / effective signature 覆盖。
 * @source D:\work\spec\arkts-spec\SEMANTICS\ets_cases\Overloading\compile-pass\OVERLOAD_PASS_017_overload_set_warning_unreachable.ets
 */

function overloadPass017Number(p: number): string {
  return 'number'
}

function overloadPass017NumberOrString(p: number | string): string {
  return 'number-or-string'
}

function overloadPass017String(p: string): string {
  return 'string'
}

overload overloadPass017Select {
  overloadPass017Number,
  overloadPass017NumberOrString,
  overloadPass017String
}

function main(): void {
  arktest.assertEQ(overloadPass017Select(17), 'number')
  arktest.assertEQ(overloadPass017Select('ark'), 'number-or-string')
}
