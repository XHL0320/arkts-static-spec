/*
 * @id NSM_13_07_1_001_PASS_SELECTIVE_EXPORT
 * @expect compile-pass
 * @section 13.7.1
 * @design export { d1, d2 as d3 } — selective export with renaming
 */

function d1(): void {}
function d2(): void {}

export { d1, d2 as d3 }
