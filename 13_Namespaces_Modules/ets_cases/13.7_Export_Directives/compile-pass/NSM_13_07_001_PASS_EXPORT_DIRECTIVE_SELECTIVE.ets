/*
 * @id NSM_13_07_001_PASS_EXPORT_DIRECTIVE_SELECTIVE
 * @expect compile-pass
 * @section 13.7
 * @design Export directive with selective bindings
 */

function helper(): void {
    console.log("helper")
}

export { helper }
