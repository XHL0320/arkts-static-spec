/**
 * @id SEM_15_11_03_005_PASS_interface_override_dedup
 * @expect compile-pass
 * @section 15.11.3
 * @design Overridden methods occur only once in overload set (deduplication)
 * @note Spec lines 76-86, interface K overrides I2.foo
 */
interface I1 {
    foo(x: number): void
}
interface I2 {
    foo(s: string): void
    foo(b: boolean): void
}
interface K extends I1, I2 {
    foo(s: string): void
}
function main(): void {}
