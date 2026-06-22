/*
 * @id SEM_15_11_063_PASS_ARCHIVE_receiver_function_overload_as_function
 * @expect compile-pass
 * @section 15.11
 * @design 归档吸纳：receiver function overload as function。来源 `Overloading\compile-pass\OVERLOAD_PASS_012_receiver_function_overload_as_function.ets`；用于补充 ArkTS overload / overload resolution / effective signature 覆盖。
 * @source D:\work\spec\arkts-spec\SEMANTICS\ets_cases\Overloading\compile-pass\OVERLOAD_PASS_012_receiver_function_overload_as_function.ets
 */

class OverloadPass012Receiver {}

function overloadPass012Read(this: OverloadPass012Receiver): string {
  return 'receiver'
}

function overloadPass012ReadValue(this: OverloadPass012Receiver, p: string): string {
  return p
}

overload overloadPass012Call { overloadPass012Read, overloadPass012ReadValue }

function main(): void {
  let c: OverloadPass012Receiver = new OverloadPass012Receiver()
  arktest.assertEQ(overloadPass012Call(c), 'receiver')
  arktest.assertEQ(overloadPass012Call(c, 'ark'), 'ark')
}
