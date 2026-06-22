/*
 * @id SEM_15_11_061_FAIL_ARCHIVE_receiver_same_name_instance_method
 * @expect compile-fail
 * @section 15.11
 * @design 归档吸纳：receiver same name instance method。来源 `Overloading\compile-fail\OVERLOAD_FAIL_027_receiver_same_name_instance_method.ets`；用于补充 ArkTS overload / overload resolution / effective signature 覆盖。
 * @source D:\work\spec\arkts-spec\SEMANTICS\ets_cases\Overloading\compile-fail\OVERLOAD_FAIL_027_receiver_same_name_instance_method.ets
 */

class OverloadFail027C {
  hit(): string {
    return 'instance'
  }
}

// @expect-error: ESE0081 The extension function 'hit' has the same name with public method in class OverloadFail027C
function hit(this: OverloadFail027C): string {
  return 'receiver'
}
