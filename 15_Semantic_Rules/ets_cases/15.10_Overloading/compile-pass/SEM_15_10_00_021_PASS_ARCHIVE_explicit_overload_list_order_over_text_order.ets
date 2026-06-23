/*
 * @id SEM_15_10_00_021_PASS_ARCHIVE_explicit_overload_list_order_over_text_order
 * @expect compile-pass
 * @section 15.10
 * @design 归档吸纳：explicit overload list order over text order。来源 `Overloading\compile-pass\OVERLOAD_PASS_018_explicit_overload_list_order_over_text_order.ets`；用于补充 ArkTS overload / overload resolution / effective signature 覆盖。
 * @source D:\work\spec\arkts-spec\SEMANTICS\ets_cases\Overloading\compile-pass\OVERLOAD_PASS_018_explicit_overload_list_order_over_text_order.ets
 */

function overloadPass018Wide(p: number): string {
  return 'wide'
}

function overloadPass018Narrow(p: int): string {
  return 'narrow'
}

overload overloadPass018Select { overloadPass018Narrow, overloadPass018Wide }

function main(): void {
  arktest.assertEQ(overloadPass018Select(18), 'narrow')
}
