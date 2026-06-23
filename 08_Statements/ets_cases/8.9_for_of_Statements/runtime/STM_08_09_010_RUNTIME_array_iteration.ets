/**
 * @id STM_08_09_010_RUNTIME_array_iteration
 * @expect runtime
 * @section 8.9
 * @design 运行时验证Array<int>的for-of迭代结果正确
 * @note 遍历Array<int>验证元素值和迭代次数
 */
function main(): void {
    let arr: Array<int> = [10, 20, 30];
    let sum: int = 0;
    let count: int = 0;
    for (let x of arr) {
        sum += x;
        count++;
    }
    if (sum != 60) {
        throw new Error("Array iteration sum mismatch");
    }
    if (count != 3) {
        throw new Error("Array iteration count mismatch");
    }
    console.log("verified");
}
