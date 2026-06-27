/*
 * @id NSM_13_08_006_RUNTIME_MAIN_AFTER_TOP_LEVEL
 * @expect runtime
 * @section 13.8
 * @design main() executed after top-level statements
 * @note verifies execution order: top-level statements first, then main()
 */

let order: string = ""

order += "T" // top-level statement runs first

function main(): int {
    order += "M" // main runs after top-level statements
    // Expected: "TM" (top-level first, main second)
    return order == "TM" ? 0 : 1
}
