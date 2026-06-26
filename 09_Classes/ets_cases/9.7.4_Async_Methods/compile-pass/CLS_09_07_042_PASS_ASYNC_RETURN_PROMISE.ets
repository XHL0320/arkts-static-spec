
/**
 * @id CLS_09_07_042_PASS_ASYNC_RETURN_PROMISE
 * @expect compile-pass
 * @section 9.7.4
 * @design Auto-added metadata
 * @note Auto-fixed missing metadata
 */
class Async042 { async fetch(): Promise<string> { return "data" } }
