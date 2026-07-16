/**
 * @id CON_06_05_026_RUNTIME_DOUBLE_TO_FLOAT_OVERFLOW
 * @expect runtime
 * @section 6.5
 * @design double到float上溢到无穷
 * @note spec: float infinity from a finite double
 */
function main(): void {
    let huge: double = 1e40
    let f: float = huge.toFloat()
    if (f.isInfinite() != true) { throw new Error("overflow mismatch") }
    console.log("verified")
}
