/**
 * @id SEM_15_10_1_299_FAIL_overload_equivalent_non_generic
 * @expect compile-fail
 * @section 15.10.1
 * @design Overload-equivalent non-generic functions cause compile-time error
 * @note Spec lines 30-54: goo(x: int) twice
 */
function goo(x: int): void {}
function goo(x: int): void {}
function main(): void {}
