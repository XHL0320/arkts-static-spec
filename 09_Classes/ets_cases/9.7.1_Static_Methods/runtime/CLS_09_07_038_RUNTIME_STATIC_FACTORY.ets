
/**
 * @id CLS_09_07_038_RUNTIME_STATIC_FACTORY
 * @expect runtime
 * @section 9.7.1
 * @design Auto-added metadata
 * @note Auto-fixed missing metadata
 */
class S38 { private constructor() {} static create(): S38 { return new S38() } }
function main(): void { let s: S38 = S38.create(); console.log("verified") }
