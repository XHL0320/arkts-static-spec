/*
 * @id SEM_15_10_00_116_FAIL_ARCHIVE_class_overload_same_name_method_not_listed
 * @expect compile-fail
 * @section 15.10
 * @design 归档吸纳：class overload same name method not listed。来源 `Overloading\compile-fail\OVERLOAD_FAIL_014_class_overload_same_name_method_not_listed.ets`；用于补充 ArkTS overload / overload resolution / effective signature 覆盖。
 * @source D:\work\spec\arkts-spec\SEMANTICS\ets_cases\Overloading\compile-fail\OVERLOAD_FAIL_014_class_overload_same_name_method_not_listed.ets
 */

class OverloadFail014Class {
  read(p: int): int {
    return p
  }

  readString(p: string): string {
    return p
  }

  // @expect-error: ESE0397 Method with the same name as overload declaration 'read', overloadlist must list this medhod.
  overload read { readString }
}
