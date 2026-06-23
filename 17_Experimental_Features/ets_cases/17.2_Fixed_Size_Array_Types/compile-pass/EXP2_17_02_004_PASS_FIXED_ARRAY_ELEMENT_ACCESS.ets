/**
 * @id EXP2_17_02_004_PASS_FIXED_ARRAY_ELEMENT_ACCESS
 * @expect compile-pass
 * @section 17.2
 * @design FixedArray 元素读写访问
 * @note 正向用例：验证通过索引读取和写入 FixedArray 元素
 */
function testElementAccess(): void {
    let arr: FixedArray<int> = [10, 20, 30, 40, 50];
    let val: int = arr[0];
    arr[2] = 99;
    let updated: int = arr[2];
}
