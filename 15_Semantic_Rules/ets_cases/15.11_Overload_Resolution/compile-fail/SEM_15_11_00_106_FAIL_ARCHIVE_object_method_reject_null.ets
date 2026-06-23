/*
 * @id SEM_15_11_00_106_FAIL_ARCHIVE_object_method_reject_null
 * @expect compile-fail
 * @section 15.11
 * @design 归档吸纳：object method reject null。来源 `NullishOverloadResolution\compile-fail\SEM_FAIL_001_object_method_reject_null.ets`；用于补充 ArkTS overload / overload resolution / effective signature 覆盖。
 * @source D:\work\spec\arkts-spec\SEMANTICS\ets_cases\NullishOverloadResolution\compile-fail\SEM_FAIL_001_object_method_reject_null.ets
 */

// @expect-error: Type 'null' cannot be assigned to parameter type 'Object'
class SemFail001ObjectReceiver {
  testedMethod(p: Object): void {}
}

function main(): void {
  let c: SemFail001ObjectReceiver = new SemFail001ObjectReceiver()
  c.testedMethod(null)
}
