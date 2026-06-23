/**
 * @id EXP2_17_02_020_RUNTIME_FIXED_ARRAY_LENGTH
 * @expect runtime
 * @section 17.2
 * @design FixedArray length 属性值验证
 * @note 运行时用例：验证 FixedArray 的 length 属性值与字面量长度一致
 */
function main(): void {
    let arr1: FixedArray<int> = [10, 20, 30];
    if (arr1.length != 3) {
        throw new Error("assertion failed: expected length 3, got " + arr1.length);
    }

    let arr2: FixedArray<string> = ["a", "b", "c", "d", "e"];
    if (arr2.length != 5) {
        throw new Error("assertion failed: expected length 5, got " + arr2.length);
    }

    let arr3: FixedArray<double> = [1.5, 2.5];
    if (arr3.length != 2) {
        throw new Error("assertion failed: expected length 2, got " + arr3.length);
    }

    console.log("verified");
}
