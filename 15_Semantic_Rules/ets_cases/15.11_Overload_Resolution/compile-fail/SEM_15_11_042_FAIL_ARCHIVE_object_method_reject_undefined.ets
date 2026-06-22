/*
 * @id SEM_15_11_042_FAIL_ARCHIVE_object_method_reject_undefined
 * @expect compile-fail
 * @section 15.11
 * @design 归档吸纳：object method reject undefined。来源 `NullishOverloadResolution\compile-fail\SEM_FAIL_002_object_method_reject_undefined.ets`；用于补充 ArkTS overload / overload resolution / effective signature 覆盖。
 * @source D:\work\spec\arkts-spec\SEMANTICS\ets_cases\NullishOverloadResolution\compile-fail\SEM_FAIL_002_object_method_reject_undefined.ets
 */

// @expect-error: Type 'undefined' cannot be assigned to parameter type 'Object'
class SemFail002ObjectReceiver {
  testedMethod(p: Object): void {}
}

function main(): void {
  let c: SemFail002ObjectReceiver = new SemFail002ObjectReceiver()
  c.testedMethod(undefined)
}
