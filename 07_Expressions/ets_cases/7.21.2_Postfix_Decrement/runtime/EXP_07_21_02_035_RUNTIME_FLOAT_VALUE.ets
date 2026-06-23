/**
 * @id EXP_07_21_02_035_RUNTIME_FLOAT_VALUE
 * @expect runtime
 * @section 7.21.2
 * @design 验证 float 后置递减返回值语义和副作用。
 *         x-- 返回自减前的值（old value），x 变为 old - 1。
 * @note 运行时用例：float-- 返回旧值，变量-1
 */
function main(): void {
    let x: float = 1.5 as float;
    let result: float = x--;
    if (result != 1.5) {
        throw new Error("assertion failed: expected return value 1.5, got " + result);
    }
    if (x != 0.5) {
        throw new Error("assertion failed: expected x=0.5, got " + x);
    }
    console.log("verified");
}
