
/**
 * @id CLS_09_07_035_RUNTIME_ABSTRACT_MULTI_IMPL
 * @expect runtime
 * @section 9.7.3
 * @design Auto-added metadata
 * @note Auto-fixed missing metadata
 */
abstract class Shape { abstract area(): int }
class Square extends Shape { override area(): int { return 4 } }
class Rect extends Shape { override area(): int { return 6 } }
function main(): void { let s1: Shape = new Square(); let s2: Shape = new Rect(); if (s1.area()!=4 || s2.area()!=6) { throw new Error("fail") } console.log("verified") }
