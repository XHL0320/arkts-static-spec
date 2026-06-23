/**
 * @id EXP2_17_02_012_FAIL_FIXED_ARRAY_NO_METHODS
 * @expect compile-fail
 * @section 17.2
 * @design 对 FixedArray 调用方法编译错误
 * @note 反向用例：验证 FixedArray 没有定义方法，调用 push 编译错误
 */
let fixedArr: FixedArray<number> = [1, 2, 3];
fixedArr.push(4);
