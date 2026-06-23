/**
 * @id EXP_07_21_02_036_RUNTIME_DOUBLE_VALUE
 * @expect runtime
 * @section 7.21.2
 * @design 验证 double 后置递减返回值语义和副作用。
 *         x-- 返回自减前的值（old value），x 变为 old - 1。
 *         使用整数精度避免浮点 IEEE 754 表示误差。
 * @note 运行时用例：double-- 返回旧值，变量-1
 */
function main(): void {
    let x: double = 2.0;
    let result: double = x--;
    if (result != 2.0) {
        throw new Error("assertion failed: expected return value 2.0, got " + result);
    }
    if (x != 1.0) {
        throw new Error("assertion failed: expected x=1.0, got " + x);
    }
    console.log("verified");
}
