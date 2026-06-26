
/**
 * @id CLS_09_07_037_FAIL_RETURN_NON_THIS
 * @expect compile-fail
 * @section 9.7.8
 * @design Auto-added metadata
 * @note Auto-fixed missing metadata
 */
class Bad37 { foo(): this { return new Bad37() } }
