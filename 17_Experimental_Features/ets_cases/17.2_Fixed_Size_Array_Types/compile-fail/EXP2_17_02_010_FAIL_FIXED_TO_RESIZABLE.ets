/**
 * @id EXP2_17_02_010_FAIL_FIXED_TO_RESIZABLE
 * @expect compile-fail
 * @section 17.2
 * @design FixedArray 赋值给 ResizableArray 编译错误
 * @note 反向用例：验证 FixedArray<number> 不能赋值给 number[]
 */
let fixedArr: FixedArray<number> = [1, 2, 3];
let resizableArr: number[] = fixedArr;
