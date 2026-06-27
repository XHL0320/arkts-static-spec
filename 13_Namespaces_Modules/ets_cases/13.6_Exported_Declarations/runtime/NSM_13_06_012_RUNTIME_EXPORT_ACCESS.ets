/*
 * @id NSM_13_06_012_RUNTIME_EXPORT_ACCESS
 * @expect runtime
 * @section 13.6
 * @design Exported entities accessible at runtime
 */

export let value: int = 42

function main(): int {
    console.log(value.toString())
    return value == 42 ? 0 : 1
}
