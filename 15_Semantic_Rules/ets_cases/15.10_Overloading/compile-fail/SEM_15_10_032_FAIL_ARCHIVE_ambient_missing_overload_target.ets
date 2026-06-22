/*
 * @id SEM_15_10_032_FAIL_ARCHIVE_ambient_missing_overload_target
 * @expect compile-fail
 * @section 15.10
 * @design 归档吸纳：ambient missing overload target。来源 `Overloading\compile-fail\OVERLOAD_FAIL_016_ambient_missing_overload_target.d.ets`；用于补充 ArkTS overload / overload resolution / effective signature 覆盖。
 * @source D:\work\spec\arkts-spec\SEMANTICS\ets_cases\Overloading\compile-fail\OVERLOAD_FAIL_016_ambient_missing_overload_target.d.ets
 */

export declare function overloadFail016Value(p: int): int

// @expect-error: ESE0143 Unresolved reference overloadFail016Missing
export declare overload overloadFail016Call { overloadFail016Value, overloadFail016Missing }
