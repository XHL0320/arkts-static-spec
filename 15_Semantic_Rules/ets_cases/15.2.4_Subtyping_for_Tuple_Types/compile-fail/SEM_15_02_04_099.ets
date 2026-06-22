/**
 * @id SEM_15_02_04_099
 * @expect compile-fail
 * @section 15.2.4
 * @design 元组元素类型不匹配
 * @note 反向用例
 */
function main(): void { let a: [int, string] = [1, "a"]; let b: [string, int] = a; }
