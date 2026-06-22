/*
 * @id SEM_15_10_033_FAIL_ARCHIVE_main_overload_prohibited
 * @expect compile-fail
 * @section 15.10
 * @design 归档吸纳：main overload prohibited。来源 `Overloading\compile-fail\OVERLOAD_FAIL_025_main_overload_prohibited.ets`；用于补充 ArkTS overload / overload resolution / effective signature 覆盖。
 * @source D:\work\spec\arkts-spec\SEMANTICS\ets_cases\Overloading\compile-fail\OVERLOAD_FAIL_025_main_overload_prohibited.ets
 */

function main(): void {}

// @expect-error: ESE0373 Main overload is not enabled
function main(p: string[]): void {}
