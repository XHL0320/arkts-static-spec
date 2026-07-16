/**
 * @id CON_06_04_01_024_RUNTIME_INT_TO_FLOAT_LSB_LOSS
 * @expect runtime
 * @section 6.4.1
 * @design int到float扩大时LSB可能丢失
 * @note spec: widening int→float may lose least significant bits
 */
function main(): void {
    let large: int = 16777217
    let f: float = large as float
    if (f != 16777216.0) { throw new Error("LSB loss mismatch") }
    console.log("verified")
}
