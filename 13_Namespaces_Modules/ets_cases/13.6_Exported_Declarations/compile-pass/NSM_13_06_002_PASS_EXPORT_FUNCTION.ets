/*
 * @id NSM_13_06_002_PASS_EXPORT_FUNCTION
 * @expect compile-pass
 * @section 13.6
 * @design export function with explicit return type
 */

export function Distance(p1: number, p2: number): number {
    return p2 - p1
}
