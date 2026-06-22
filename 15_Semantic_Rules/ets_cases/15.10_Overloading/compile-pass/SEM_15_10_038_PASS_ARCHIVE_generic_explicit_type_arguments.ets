/*
 * @id SEM_15_10_038_PASS_ARCHIVE_generic_explicit_type_arguments
 * @expect compile-pass
 * @section 15.10
 * @design 归档吸纳：generic explicit type arguments。来源 `Overloading\compile-pass\OVERLOAD_PASS_005_generic_explicit_type_arguments.ets`；用于补充 ArkTS overload / overload resolution / effective signature 覆盖。
 * @source D:\work\spec\arkts-spec\SEMANTICS\ets_cases\Overloading\compile-pass\OVERLOAD_PASS_005_generic_explicit_type_arguments.ets
 */

function overloadPass005One<T>(p: T): string {
  return 'one'
}

function overloadPass005Two<T, U = string>(p: T, q: U): string {
  return 'two'
}

function overloadPass005Three<T, U = string, V = int>(p: T, q: U, r: V): string {
  return 'three'
}

overload overloadPass005Pick { overloadPass005One, overloadPass005Two, overloadPass005Three }

function main(): void {
  arktest.assertEQ(overloadPass005Pick<int>(1), 'one')
  arktest.assertEQ(overloadPass005Pick<int, string>(1, 'a'), 'two')
  arktest.assertEQ(overloadPass005Pick<int, string, int>(1, 'a', 3), 'three')
}
