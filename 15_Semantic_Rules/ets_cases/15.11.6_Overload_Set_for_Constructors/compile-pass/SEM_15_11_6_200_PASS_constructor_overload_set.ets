/**
 * @id SEM_15_11_6_200_PASS_constructor_overload_set
 * @expect compile-pass
 * @section 15.11.6
 * @design Constructor overload set formation with explicit overload declaration
 * @note Spec lines 20-44
 */
class C {
    constructor() { console.log("ctor#1") }
    constructor(s: string) { console.log("ctor#2") }
    constructor fromNumber(n: number) { console.log("fromNumber") }
    overload constructor { fromNumber }
}
function main(): void {
    new C()
    new C("aa")
    new C(1)
}
