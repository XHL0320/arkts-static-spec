/**
 * @id STM_08_09_012_RUNTIME_external_variable
 * @expect runtime
 * @section 8.9
 * @design 运行时验证使用外部声明变量的for-of迭代结果正确
 * @note 外部变量正确接收每个元素值，验证求和结果和最后一个元素值
 */
function main(): void {
    let arr: Array<int> = [1, 2, 3, 4, 5];
    let elem: int = 0;
    let sum: int = 0;
    for (elem of arr) {
        sum += elem;
    }
    if (sum != 15) {
        throw new Error("External variable sum mismatch");
    }
    if (elem != 5) {
        throw new Error("External variable last value mismatch");
    }
    console.log("verified");
}
