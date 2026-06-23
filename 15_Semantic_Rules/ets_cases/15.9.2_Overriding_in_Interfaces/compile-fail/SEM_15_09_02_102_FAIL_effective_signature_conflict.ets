/**
 * @id SEM_15_09_02_102_FAIL_effective_signature_conflict
 * @expect compile-fail
 * @section 15.9.2
 * @design method_4(a: Array<number>) not override-compatible, but effective signatures after type erasure are compatible
 * @note Spec lines 32-60, method_4(a: Array<number>)
 */
interface Base {
    method_4(a: Array<string>): void
}
interface Derived extends Base {
    method_4(a: Array<number>): void
}
function main(): void {}
