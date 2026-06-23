/*
 * @id SEM_15_11_00_110_FAIL_ARCHIVE_constructor_no_matching
 * @expect compile-fail
 * @section 15.11
 * @design 归档吸纳：constructor no matching。来源 `Overloading\compile-fail\OVERLOAD_FAIL_015_constructor_no_matching.ets`；用于补充 ArkTS overload / overload resolution / effective signature 覆盖。
 * @source D:\work\spec\arkts-spec\SEMANTICS\ets_cases\Overloading\compile-fail\OVERLOAD_FAIL_015_constructor_no_matching.ets
 */

class OverloadFail015Box {
  constructor() {}

  constructor(p: int) {}
}

// @expect-error: ESE0127 No matching construct signature for OVERLOAD_FAIL_015_constructor_no_matching.OverloadFail015Box("ark")
let overloadFail015Value: OverloadFail015Box = new OverloadFail015Box('ark')
