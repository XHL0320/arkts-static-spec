/*
 * @id SEM_15_11_00_116_FAIL_return_type_ignored
 * @expect compile-fail
 * @section 15.11
 * @design Return types are not considered by overload resolution, selected entity can lead to compile-time error
 * @note Spec lines 34-39: let x: number = foo("1") returns string
 */

function foo(n: number): number { return n }
function foo(s: string): string { return s }

function sem_15_11_fail_200_return_type_ignored(): void {
  let x: number = foo("1")
}
