/**
 * @id CLS_09_07_031_FAIL_STATIC_FINAL
 * @expect compile-fail
 * @section 9.7.1
 * @design static final方法应报错
 * @note spec: static and final cannot be combined
 */
class C031 {
    static final foo(): void {}
}
