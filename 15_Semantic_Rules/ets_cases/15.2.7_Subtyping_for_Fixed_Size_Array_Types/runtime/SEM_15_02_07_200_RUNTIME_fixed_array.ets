/**
 * @id SEM_15_02_07_200_RUNTIME_fixed_array
 * @expect runtime
 * @section 15.2.7
 * @design FixedArray 运行时
 * @note 运行时用例
 */
function main(): void { let a: FixedArray<int> = new FixedArray<int>(3); a[0] = 42; if (a[0] != 42) throw new Error("fail"); console.log("verified"); }
