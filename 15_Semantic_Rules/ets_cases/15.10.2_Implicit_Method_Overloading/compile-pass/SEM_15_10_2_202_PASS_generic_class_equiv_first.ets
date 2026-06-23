/**
 * @id SEM_15_10_2_202_PASS_generic_class_equiv_first
 * @expect compile-pass
 * @section 15.10.2
 * @design Generic instantiation leads to overload-equivalent methods, textually first called
 * @note Spec lines 60-79: Template<T> with foo(T)/foo(number), bar(number)/bar(T)
 */
class Template<T> {
    foo(p: T): void { console.log("generic foo") }
    foo(p: number): void { console.log("plain foo") }
    bar(p: number): void { console.log("plain bar") }
    bar(p: T): void { console.log("generic bar") }
}
function main(): void {
    let instantiation: Template<number> = new Template<number>()
    instantiation.foo(1)
    instantiation.bar(1)
}
