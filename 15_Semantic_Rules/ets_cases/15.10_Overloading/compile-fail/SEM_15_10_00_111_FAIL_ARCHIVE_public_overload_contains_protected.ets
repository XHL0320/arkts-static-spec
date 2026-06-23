/*
 * @id SEM_15_10_00_111_FAIL_ARCHIVE_public_overload_contains_protected
 * @expect compile-fail
 * @section 15.10
 * @design 归档吸纳：public overload contains protected。来源 `Overloading\compile-fail\OVERLOAD_FAIL_009_public_overload_contains_protected.ets`；用于补充 ArkTS overload / overload resolution / effective signature 覆盖。
 * @source D:\work\spec\arkts-spec\SEMANTICS\ets_cases\Overloading\compile-fail\OVERLOAD_FAIL_009_public_overload_contains_protected.ets
 */

class OverloadFail009Class {
  protected readString(p: string): string {
    return p
  }

  public readInt(p: int): int {
    return p
  }

  // @expect-error: ESE0386 Access modifier mismatch: a 'public' overload requires all methods to be 'public'; a 'protected' overload cannot have 'private' methods.
  public overload read { readString, readInt }
}
