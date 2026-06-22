/*
 * @id SEM_15_10_027_FAIL_ARCHIVE_static_overload_non_static_method
 * @expect compile-fail
 * @section 15.10
 * @design 归档吸纳：static overload non static method。来源 `Overloading\compile-fail\OVERLOAD_FAIL_010_static_overload_non_static_method.ets`；用于补充 ArkTS overload / overload resolution / effective signature 覆盖。
 * @source D:\work\spec\arkts-spec\SEMANTICS\ets_cases\Overloading\compile-fail\OVERLOAD_FAIL_010_static_overload_non_static_method.ets
 */

class OverloadFail010Class {
  static readInt(p: int): int {
    return p
  }

  readString(p: string): string {
    return p
  }

  // @expect-error: ESE0387 Overload alias and overloaded method name must have exactly the same modifiers (static, async).
  static overload read { readInt, readString }
}
