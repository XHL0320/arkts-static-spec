/*
 * @id SEM_15_11_00_113_FAIL_ARCHIVE_static_method_not_inherited_for_overload
 * @expect compile-fail
 * @section 15.11
 * @design 归档吸纳：static method not inherited for overload。来源 `Overloading\compile-fail\OVERLOAD_FAIL_026_static_method_not_inherited_for_overload.ets`；用于补充 ArkTS overload / overload resolution / effective signature 覆盖。
 * @source D:\work\spec\arkts-spec\SEMANTICS\ets_cases\Overloading\compile-fail\OVERLOAD_FAIL_026_static_method_not_inherited_for_overload.ets
 */

class OverloadFail026Base {
  static select(p: int): string {
    return 'base-int'
  }
}

class OverloadFail026Derived extends OverloadFail026Base {
  static select(p: string): string {
    return 'derived-string'
  }
}

// KNOWN_ISSUE: spec expects no fallback to inherited static method because the static overload set uses only methods directly defined in the class; current WSL compiler resolves the base static method and passes.
let overloadFail026Value: string = OverloadFail026Derived.select(26)
