/*
 * @id SEM_15_12_026_FAIL_ARCHIVE_constructor_array_type_args_erased_equivalent
 * @expect compile-fail
 * @section 15.12
 * @design 归档吸纳：constructor array type args erased equivalent。来源 `Overloading\compile-fail\OVERLOAD_FAIL_023_constructor_array_type_args_erased_equivalent.ets`；用于补充 ArkTS overload / overload resolution / effective signature 覆盖。
 * @source D:\work\spec\arkts-spec\SEMANTICS\ets_cases\Overloading\compile-fail\OVERLOAD_FAIL_023_constructor_array_type_args_erased_equivalent.ets
 */

class OverloadFail023Box {
  constructor(p: Array<string>) {}

  // @expect-error: ESE0131 Function constructor with this assembly signature already declared.
  constructor(p: Array<int>) {}
}
