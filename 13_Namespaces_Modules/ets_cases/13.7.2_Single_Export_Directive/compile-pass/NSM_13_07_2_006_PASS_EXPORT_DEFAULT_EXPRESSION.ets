/*
 * @id NSM_13_07_2_006_PASS_EXPORT_DEFAULT_EXPRESSION
 * @expect compile-pass
 * @section 13.7.2
 * @design export default expression (new A) creates const variable
 * @note spec example: class A {}; export default new A
 *             — this creates an anonymous constant variable
 *             A must be exported for es2panda (D类不一致:
 *             Spec认为未导出A时export default new A合法,
 *             es2panda要求A也必须导出 → 另见NSM_13_07_2_007)
 */

export class A {
    foo(): void {}
}

export default new A
