/*
 * @id NSM_13_01_006_RUNTIME_MODULE_INIT
 * @expect runtime
 * @section 13.1
 * @design Module initialization - top-level statements executed once
 */

let counter: int = 0

function increment(): void {
    counter++
}

increment()
increment()

function main(): int {
    console.log(counter.toString())
    return counter == 2 ? 0 : 1
}
