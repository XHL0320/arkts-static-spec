/*
 * @id SEM_15_10_037_PASS_ARCHIVE_explicit_function_rest
 * @expect compile-pass
 * @section 15.10
 * @design 归档吸纳：explicit function rest。来源 `Overloading\compile-pass\OVERLOAD_PASS_004_explicit_function_rest.ets`；用于补充 ArkTS overload / overload resolution / effective signature 覆盖。
 * @source D:\work\spec\arkts-spec\SEMANTICS\ets_cases\Overloading\compile-pass\OVERLOAD_PASS_004_explicit_function_rest.ets
 */

function overloadPass004Two(a: int, b: int): int {
  return a + b
}

function overloadPass004Many(...items: int[]): int {
  let result: int = 0
  for (let i: int = 0; i < items.length; i++) {
    result += items[i]
  }
  return result
}

overload overloadPass004Sum { overloadPass004Two, overloadPass004Many }

function main(): void {
  arktest.assertEQ(overloadPass004Sum(1, 2), 3)
  arktest.assertEQ(overloadPass004Sum(1, 2, 3), 6)
}
