/**
 * @id STM_08_04_010_RUNTIME_block_scope_shadow
 * @expect runtime
 * @section 8.4
 * @design 验证块作用域遮蔽的运行时行为：内层声明遮蔽外层
 * @note 内层块中同名变量遮蔽外层变量，离开内层块后恢复
 */
function main(): void {
    let value: int = 1;
    if (value != 1) {
        throw new Error("outer value should be 1 before block");
    }
    {
        const value: int = 2;
        if (value != 2) {
            throw new Error("inner shadowed value should be 2");
        }
    }
    if (value != 1) {
        throw new Error("outer value should still be 1 after block");
    }
    let text: string = "outer";
    if (text != "outer") {
        throw new Error("outer text should be outer");
    }
    {
        const text: string = "inner";
        if (text != "inner") {
            throw new Error("inner shadowed text should be inner");
        }
    }
    if (text != "outer") {
        throw new Error("outer text should still be outer after block");
    }
    console.log("verified");
}
