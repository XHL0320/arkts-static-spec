/*
 * @id SEM_15_10_029_FAIL_ARCHIVE_class_overload_missing_method
 * @expect compile-fail
 * @section 15.10
 * @design 归档吸纳：class overload missing method。来源 `Overloading\compile-fail\OVERLOAD_FAIL_012_class_overload_missing_method.ets`；用于补充 ArkTS overload / overload resolution / effective signature 覆盖。
 * @source D:\work\spec\arkts-spec\SEMANTICS\ets_cases\Overloading\compile-fail\OVERLOAD_FAIL_012_class_overload_missing_method.ets
 */

class OverloadFail012Class {
  readInt(p: int): int {
    return p
  }

  // @expect-error: ESE0384 overloaded name must refer to an accessible method.
  overload read { readInt, readMissing }
}
