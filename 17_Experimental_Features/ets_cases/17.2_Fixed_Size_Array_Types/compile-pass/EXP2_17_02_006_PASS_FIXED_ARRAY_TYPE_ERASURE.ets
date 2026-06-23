/**
 * @id EXP2_17_02_006_PASS_FIXED_ARRAY_TYPE_ERASURE
 * @expect compile-pass
 * @section 17.2
 * @design FixedArray 类型擦除保留（泛型上下文）
 * @note 正向用例：验证 FixedArray 在泛型函数中保留元素类型
 */
function getFirstElement<T>(arr: FixedArray<T>): T {
    return arr[0];
}

let numArr: FixedArray<number> = [100, 200, 300];
let firstNum: number = getFirstElement<number>(numArr);

let strArr: FixedArray<string> = ["a", "b", "c"];
let firstStr: string = getFirstElement<string>(strArr);
