/**
 * @id EXP2_17_02_023_RUNTIME_FIXED_ARRAY_OUT_OF_BOUNDS
 * @expect runtime
 * @section 17.2
 * @design FixedArray 越界访问抛出错误
 * @note 运行时用例：验证索引越界访问（>= length 或 < 0）抛出运行时错误
 */
function main(): void {
    let arr: FixedArray<int> = [1, 2, 3];
    let outOfBoundsCaught: boolean = false;

    try {
        let val: int = arr[5];
    } catch (e) {
        outOfBoundsCaught = true;
    }
    if (!outOfBoundsCaught) {
        throw new Error("assertion failed: out-of-bounds access at index 5 did not throw");
    }

    let negativeIndexCaught: boolean = false;
    try {
        let val: int = arr[-1];
    } catch (e) {
        negativeIndexCaught = true;
    }
    if (!negativeIndexCaught) {
        throw new Error("assertion failed: negative index access at -1 did not throw");
    }

    console.log("verified");
}
