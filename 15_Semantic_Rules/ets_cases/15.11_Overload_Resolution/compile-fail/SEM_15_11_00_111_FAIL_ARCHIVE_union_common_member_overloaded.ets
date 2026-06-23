/*
 * @id SEM_15_11_00_111_FAIL_ARCHIVE_union_common_member_overloaded
 * @expect compile-fail
 * @section 15.11
 * @design 归档吸纳：union common member overloaded。来源 `Overloading\compile-fail\OVERLOAD_FAIL_017_union_common_member_overloaded.ets`；用于补充 ArkTS overload / overload resolution / effective signature 覆盖。
 * @source D:\work\spec\arkts-spec\SEMANTICS\ets_cases\Overloading\compile-fail\OVERLOAD_FAIL_017_union_common_member_overloaded.ets
 */

class OverloadFail017C {
  readInt(p: int): int {
    return p
  }

  readString(p: string): string {
    return p
  }

  overload read { readInt, readString }
}

class OverloadFail017D {
  read(p: int): int {
    return p
  }
}

function useUnion(v: OverloadFail017C | OverloadFail017D): int {
  // @expect-error: ESE0391 Overload declaration cannot be called by union.
  return v.read(1)
}
