/**
 * @id STM_08_09_018_RUNTIME_array_mutation_during_iteration
 * @expect runtime
 * @section 8.9
 * @design 运行时验证对Array进行for-of迭代期间向数组追加元素的行为
 * @note 迭代过程中向原数组push新元素，验证迭代次数反映数组初始长度，不因追加而改变迭代次数
 */
function main(): void {
    let arr: Array<int> = [1, 2, 3];
    let count: int = 0;
    let sum: int = 0;
    for (let x of arr) {
        sum += x;
        count++;
        arr.push(x + 10);
    }
    if (count != 3) {
        throw new Error("Iteration count mismatch: expected 3");
    }
    if (sum != 6) {
        throw new Error("Iteration sum mismatch: expected 6");
    }
    if (arr.length != 6) {
        throw new Error("Array length mismatch: expected 6");
    }
    console.log("verified");
}
