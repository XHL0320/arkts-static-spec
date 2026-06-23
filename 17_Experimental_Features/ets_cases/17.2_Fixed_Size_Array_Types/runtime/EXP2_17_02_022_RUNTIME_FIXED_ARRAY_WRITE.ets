/**
 * @id EXP2_17_02_022_RUNTIME_FIXED_ARRAY_WRITE
 * @expect runtime
 * @section 17.2
 * @design FixedArray 边界内元素写后读访问验证
 * @note 运行时用例：验证通过索引写入 FixedArray 元素后再读取值正确
 */
function main(): void {
    let arr: FixedArray<number> = [1, 2, 3, 4];
    arr[0] = 10;
    arr[1] = 20;
    arr[2] = 30;
    arr[3] = 40;

    if (arr[0] != 10) {
        throw new Error("assertion failed: arr[0] expected 10, got " + arr[0]);
    }
    if (arr[1] != 20) {
        throw new Error("assertion failed: arr[1] expected 20, got " + arr[1]);
    }
    if (arr[2] != 30) {
        throw new Error("assertion failed: arr[2] expected 30, got " + arr[2]);
    }
    if (arr[3] != 40) {
        throw new Error("assertion failed: arr[3] expected 40, got " + arr[3]);
    }

    console.log("verified");
}
