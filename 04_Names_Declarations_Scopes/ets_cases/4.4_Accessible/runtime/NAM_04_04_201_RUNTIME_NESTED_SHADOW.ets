/**
 * @id NAM_04_04_201_RUNTIME_NESTED_SHADOW
 * @expect runtime
 * @section 4.4
 * @design 嵌套块遮蔽运行时验证
 * @note 运行时用例：验证内层同名变量遮蔽外层，内层赋值不影响外层值
 */
function main(): void {
    let x: number = 1;
    {
        let x: number = 100;
        if (x != 100) {
            throw new Error("assertion failed: " + x);
        }
    }
    // outer x should remain unchanged after inner block
    if (x != 1) {
        throw new Error("assertion failed: " + x);
    }
    console.log("verified");
}
