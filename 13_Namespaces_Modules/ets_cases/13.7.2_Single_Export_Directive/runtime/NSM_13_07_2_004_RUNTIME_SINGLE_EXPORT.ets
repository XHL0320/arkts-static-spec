/*
 * @id NSM_13_07_2_004_RUNTIME_SINGLE_EXPORT
 * @expect runtime
 * @section 13.7.2
 * @design Single export runtime access
 */

let v: int = 42
export v

function main(): int {
    console.log(v.toString())
    return v == 42 ? 0 : 1
}
