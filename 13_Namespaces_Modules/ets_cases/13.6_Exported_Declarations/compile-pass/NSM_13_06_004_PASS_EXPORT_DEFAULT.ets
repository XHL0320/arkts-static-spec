/*
 * @id NSM_13_06_004_PASS_EXPORT_DEFAULT
 * @expect compile-pass
 * @section 13.6
 * @design Only one top-level declaration can be exported using default
 */

export default class MainClass {
    run(): void {
        console.log("Running")
    }
}
