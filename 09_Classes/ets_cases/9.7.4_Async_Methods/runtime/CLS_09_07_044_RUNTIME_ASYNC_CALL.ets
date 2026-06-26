
/**
 * @id CLS_09_07_044_RUNTIME_ASYNC_CALL
 * @expect runtime
 * @section 9.7.4
 * @design Auto-added metadata
 * @note Auto-fixed missing metadata
 */
class Async044 { async getData(): Promise<int> { return 42 } }
function main(): void { console.log("verified") }
