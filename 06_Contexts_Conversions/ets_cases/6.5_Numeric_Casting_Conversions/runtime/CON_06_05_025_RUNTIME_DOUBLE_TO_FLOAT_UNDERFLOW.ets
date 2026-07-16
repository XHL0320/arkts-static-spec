/**
 * @id CON_06_05_025_RUNTIME_DOUBLE_TO_FLOAT_UNDERFLOW
 * @expect runtime
 * @section 6.5
 * @design doubleµΩfloatœ¬“ÁµΩ¡„
 * @note spec: float zero from a nonzero double
 */
function main(): void {
    let tiny: double = 1e-50
    let f: float = tiny.toFloat()
    if (f != 0.0) { throw new Error("underflow mismatch") }
    console.log("verified")
}
