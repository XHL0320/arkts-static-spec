/**
 * @id STM_08_09_022_RUNTIME_empty_array_for_of
 * @expect runtime
 * @section 8.9
 * @design 运行时验证for-of遍历空数组，循环体不执行（0次迭代）
 * @note 空数组迭代次数为0，循环体不应被执行
 */
function main(): void {
    let arr: Array<int> = [];
    let count: int = 0;
    for (let x of arr) {
        count++;
    }
    if (count != 0) {
        throw new Error("Empty array should produce zero iterations");
    }
    console.log("verified");
}
