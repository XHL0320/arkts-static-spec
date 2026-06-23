/*
 * @id SEM_15_12_00_015_PASS_ARCHIVE_generic_plain_equivalent_textual_order
 * @expect compile-pass
 * @section 15.12
 * @design 归档吸纳：generic plain equivalent textual order。来源 `Overloading\compile-pass\OVERLOAD_PASS_015_generic_plain_equivalent_textual_order.ets`；用于补充 ArkTS overload / overload resolution / effective signature 覆盖。
 * @source D:\work\spec\arkts-spec\SEMANTICS\ets_cases\Overloading\compile-pass\OVERLOAD_PASS_015_generic_plain_equivalent_textual_order.ets
 */

function overloadPass015Value<T>(p: T): string {
  return 'generic'
}

function overloadPass015Value(p: int): string {
  return 'plain'
}

function overloadPass015Other(p: int): string {
  return 'plain'
}

function overloadPass015Other<T>(p: T): string {
  return 'generic'
}

function main(): void {
  arktest.assertEQ(overloadPass015Value(15), 'generic')
  arktest.assertEQ(overloadPass015Other(15), 'plain')
}
