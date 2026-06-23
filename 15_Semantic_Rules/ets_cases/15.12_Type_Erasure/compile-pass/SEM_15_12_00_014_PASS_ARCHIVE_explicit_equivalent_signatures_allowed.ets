/*
 * @id SEM_15_12_00_014_PASS_ARCHIVE_explicit_equivalent_signatures_allowed
 * @expect compile-pass
 * @section 15.12
 * @design 归档吸纳：explicit equivalent signatures allowed。来源 `Overloading\compile-pass\OVERLOAD_PASS_014_explicit_equivalent_signatures_allowed.ets`；用于补充 ArkTS overload / overload resolution / effective signature 覆盖。
 * @source D:\work\spec\arkts-spec\SEMANTICS\ets_cases\Overloading\compile-pass\OVERLOAD_PASS_014_explicit_equivalent_signatures_allowed.ets
 */

function overloadPass014StringArray(p: Array<string>): string {
  return 'string:' + p[0]
}

function overloadPass014IntArray(p: Array<int>): string {
  return 'int:' + p[0].toString()
}

overload overloadPass014Select { overloadPass014StringArray, overloadPass014IntArray }

function main(): void {
  let strings: Array<string> = ['ark']
  let ints: Array<int> = [14]

  arktest.assertEQ(overloadPass014Select(strings), 'string:ark')
  arktest.assertEQ(overloadPass014Select(ints), 'int:14')
}
