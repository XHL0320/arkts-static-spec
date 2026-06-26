
/**
 * @id CLS_09_07_040_PASS_STATIC_MULTI_PARAM
 * @expect compile-pass
 * @section 9.7.1
 * @design Auto-added metadata
 * @note Auto-fixed missing metadata
 */
class Math040 { static sum3(a: int, b: int, c: int): int { return a+b+c } static max(a: int, b: int): int { if (a>b) {return a} return b } }
