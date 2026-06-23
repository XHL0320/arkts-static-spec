/**
 * @id SEM_15_10_4_299_FAIL_overload_equivalent_sig
 * @expect compile-fail
 * @section 15.10.4
 * @design Overload-equivalent signatures (Array<string> vs Array<number> erased to Array<>) cause compile-time error
 * @note Spec lines 20-22
 */
function foo(x: Array<string>): string { return "" }
function foo(x: Array<number>): number { return 0 }
function main(): void {}
