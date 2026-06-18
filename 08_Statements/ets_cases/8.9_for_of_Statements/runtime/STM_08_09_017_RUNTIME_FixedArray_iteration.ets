/**
 * @id STM_08_09_017_RUNTIME_FixedArray_iteration
 * @expect runtime
 * @section 8.9
 * @design 运行时验证for-of遍历FixedArray<T>，元素类型推断为T，迭代结果正确
 * @note FixedArray<int>元素求和与迭代次数验证，确保FixedArray可被for-of正确遍历
 */
function main(): void {
    let fixedArr: FixedArray<int> = new FixedArray<int>(3);
    fixedArr[0] = 10;
    fixedArr[1] = 20;
    fixedArr[2] = 30;
    let sum: int = 0;
    let count: int = 0;
    for (let x of fixedArr) {
        sum += x;
        count++;
    }
    if (sum != 60) {
        throw new Error("FixedArray iteration sum mismatch");
    }
    if (count != 3) {
        throw new Error("FixedArray iteration count mismatch");
    }
    console.log("verified");
}
