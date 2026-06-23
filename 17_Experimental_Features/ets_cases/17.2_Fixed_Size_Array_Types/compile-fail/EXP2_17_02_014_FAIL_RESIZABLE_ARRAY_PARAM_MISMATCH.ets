/**
 * @id EXP2_17_02_014_FAIL_RESIZABLE_ARRAY_PARAM_MISMATCH
 * @expect compile-fail
 * @section 17.2
 * @design ResizableArray 传递给期望 FixedArray 的函数参数编译错误
 * @note 反向用例：验证 number[] 不能传递给期望 FixedArray<number> 的函数参数
 */
function processFixedArray(arr: FixedArray<number>): void {
    let len: int = arr.length;
}

let resizableArr: number[] = [1, 2, 3];
processFixedArray(resizableArr);
