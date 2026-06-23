/*
 * @id SEM_15_10_00_115_FAIL_ARCHIVE_class_overload_implicit_method_name
 * @expect compile-fail
 * @section 15.10
 * @design 归档吸纳：class overload implicit method name。来源 `Overloading\compile-fail\OVERLOAD_FAIL_013_class_overload_implicit_method_name.ets`；用于补充 ArkTS overload / overload resolution / effective signature 覆盖。
 * @source D:\work\spec\arkts-spec\SEMANTICS\ets_cases\Overloading\compile-fail\OVERLOAD_FAIL_013_class_overload_implicit_method_name.ets
 */

class OverloadFail013Class {
  read(p: int): int {
    return p
  }

  read(p: string): string {
    return p
  }

  other(p: boolean): boolean {
    return p
  }

  // @expect-error: ESE0389 The overloaded name 'read' can't refer to a function with overload signatures.
  overload call { read, other }
}
