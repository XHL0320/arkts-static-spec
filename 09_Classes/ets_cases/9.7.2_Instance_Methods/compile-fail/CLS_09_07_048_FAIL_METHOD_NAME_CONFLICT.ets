
/**
 * @id CLS_09_07_048_FAIL_METHOD_NAME_CONFLICT
 * @expect compile-fail
 * @section 9.7.2
 * @design Auto-added metadata
 * @note Auto-fixed missing metadata
 */
class Bad048 { work(): void {} work(): int { return 1 } }
