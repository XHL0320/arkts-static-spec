/*
 * @id SEM_15_12_00_013_PASS_ARCHIVE_different_arity_not_equivalent
 * @expect compile-pass
 * @section 15.12
 * @design 归档吸纳：different arity not equivalent。来源 `Overloading\compile-pass\OVERLOAD_PASS_013_different_arity_not_equivalent.ets`；用于补充 ArkTS overload / overload resolution / effective signature 覆盖。
 * @source D:\work\spec\arkts-spec\SEMANTICS\ets_cases\Overloading\compile-pass\OVERLOAD_PASS_013_different_arity_not_equivalent.ets
 */

function overloadPass013Value(p: int): string {
  return 'one:' + p.toString()
}

function overloadPass013Value(p: int, q: int): string {
  return 'two:' + (p + q).toString()
}

function main(): void {
  arktest.assertEQ(overloadPass013Value(1), 'one:1')
  arktest.assertEQ(overloadPass013Value(1, 2), 'two:3')
}
