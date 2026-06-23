/**
 * @id EXP2_17_02_005_PASS_FIXED_ARRAY_LENGTH
 * @expect compile-pass
 * @section 17.2
 * @design FixedArray length 属性读取
 * @note 正向用例：验证可以读取 FixedArray 的 length 属性
 */
function testLengthProperty(): void {
    let arr: FixedArray<int> = [1, 2, 3];
    let len: int = arr.length;
    if (len > 0) {
        let first: int = arr[0];
    }
}
