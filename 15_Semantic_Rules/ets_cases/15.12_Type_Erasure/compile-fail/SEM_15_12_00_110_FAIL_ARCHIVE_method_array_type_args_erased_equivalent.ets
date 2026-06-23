/*
 * @id SEM_15_12_00_110_FAIL_ARCHIVE_method_array_type_args_erased_equivalent
 * @expect compile-fail
 * @section 15.12
 * @design 归档吸纳：method array type args erased equivalent。来源 `Overloading\compile-fail\OVERLOAD_FAIL_021_method_array_type_args_erased_equivalent.ets`；用于补充 ArkTS overload / overload resolution / effective signature 覆盖。
 * @source D:\work\spec\arkts-spec\SEMANTICS\ets_cases\Overloading\compile-fail\OVERLOAD_FAIL_021_method_array_type_args_erased_equivalent.ets
 */

class OverloadFail021Box {
  read(p: Array<string>): string {
    return p[0]
  }

  // @expect-error: ESE0131 Function read with this assembly signature already declared.
  read(p: Array<int>): int {
    return p[0]
  }
}
