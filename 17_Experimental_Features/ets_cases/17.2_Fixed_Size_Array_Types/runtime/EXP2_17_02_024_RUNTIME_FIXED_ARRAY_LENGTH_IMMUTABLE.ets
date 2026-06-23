/**
 * @id EXP2_17_02_024_RUNTIME_FIXED_ARRAY_LENGTH_IMMUTABLE
 * @expect runtime
 * @section 17.2
 * @design FixedArray length 属性不可重新赋值
 * @note 运行时用例：验证 FixedArray 的 length 属性赋值后不改变数组长度和元素
 */
function main(): void {
    let arr: FixedArray<int> = [7, 8, 9];
    let originalLength: int = arr.length;
    let originalElement: int = arr[0];

    arr.length = 10;

    if (arr.length != originalLength) {
        throw new Error("assertion failed: length changed from " + originalLength + " to " + arr.length);
    }

    if (arr[0] != originalElement) {
        throw new Error("assertion failed: element at index 0 changed from " + originalElement + " to " + arr[0]);
    }

    arr.length = 1;

    if (arr.length != originalLength) {
        throw new Error("assertion failed: length changed from " + originalLength + " to " + arr.length);
    }

    if (arr[2] != 9) {
        throw new Error("assertion failed: element at index 2 was lost after attempt to shorten length");
    }

    console.log("verified");
}
