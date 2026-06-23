/*
 * @id SEM_15_10_00_121_FAIL_overload_main_prohibited
 * @expect compile-fail
 * @section 15.10
 * @design Overloading for module scope name main is prohibited
 * @note Spec lines 26-29
 */

function main(): void {}
function main(p: string[]): void {}
