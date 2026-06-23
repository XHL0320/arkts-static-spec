/**
 * @id EXP2_17_02_011_FAIL_RESIZABLE_TO_FIXED
 * @expect compile-fail
 * @section 17.2
 * @design ResizableArray 赋值给 FixedArray 编译错误
 * @note 反向用例：验证 number[] 不能赋值给 FixedArray<number>
 */
let resizableArr: number[] = [1, 2, 3];
let fixedArr: FixedArray<number> = resizableArr;
