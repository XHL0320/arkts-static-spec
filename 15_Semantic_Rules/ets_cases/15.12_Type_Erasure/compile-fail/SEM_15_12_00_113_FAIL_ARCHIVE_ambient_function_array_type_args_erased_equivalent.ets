/*
 * @id SEM_15_12_00_113_FAIL_ARCHIVE_ambient_function_array_type_args_erased_equivalent
 * @expect compile-fail
 * @section 15.12
 * @design 归档吸纳：ambient function array type args erased equivalent。来源 `Overloading\compile-fail\OVERLOAD_FAIL_024_ambient_function_array_type_args_erased_equivalent.d.ets`；用于补充 ArkTS overload / overload resolution / effective signature 覆盖。
 * @source D:\work\spec\arkts-spec\SEMANTICS\ets_cases\Overloading\compile-fail\OVERLOAD_FAIL_024_ambient_function_array_type_args_erased_equivalent.d.ets
 */

export declare function overloadFail024Value(p: Array<string>): string

// @expect-error: ESE0131 Function overloadFail024Value with this assembly signature already declared.
export declare function overloadFail024Value(p: Array<int>): int
