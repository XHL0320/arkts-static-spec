/**
 * @id EXP2_17_02_013_FAIL_FIXED_ARRAY_PARAM_MISMATCH
 * @expect compile-fail
 * @section 17.2
 * @design FixedArray 传递给期望 ResizableArray 的函数参数编译错误
 * @note 反向用例：验证 FixedArray 不能传递给期望 T[] 的函数参数
 */
function processArray(arr: number[]): void {
    let len: number = arr.length;
}

let fixedArr: FixedArray<number> = [1, 2, 3];
processArray(fixedArr);
