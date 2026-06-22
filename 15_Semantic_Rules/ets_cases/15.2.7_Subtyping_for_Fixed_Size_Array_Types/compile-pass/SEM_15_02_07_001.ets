/**
 * @id SEM_15_02_07_001
 * @expect compile-pass
 * @section 15.2.7
 * @design FixedArray 自身赋值
 * @note 正向用例
 */
function main(): void { let a: FixedArray<int> = new FixedArray<int>(3); a[0] = 1; console.log("ok"); }
