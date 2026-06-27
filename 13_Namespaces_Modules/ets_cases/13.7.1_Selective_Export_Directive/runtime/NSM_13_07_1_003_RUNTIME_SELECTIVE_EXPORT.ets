/*
 * @id NSM_13_07_1_003_RUNTIME_SELECTIVE_EXPORT
 * @expect runtime
 * @section 13.7.1
 * @design Selective export runtime access
 */

function d1(): int { return 42 }
export { d1 }

function main(): int {
    return d1() == 42 ? 0 : 1
}
