/**
 * @id CLS_09_07_032_FAIL_VOID_RETURN_VALUE
 * @expect compile-fail
 * @section 9.7.7
 */
class Bad { foo(): void { return 42 } }
