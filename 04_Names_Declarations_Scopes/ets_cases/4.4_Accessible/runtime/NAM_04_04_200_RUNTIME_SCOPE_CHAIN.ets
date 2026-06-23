/**
 * @id NAM_04_04_200_RUNTIME_SCOPE_CHAIN
 * @expect runtime
 * @section 4.4
 * @design 作用域链运行时验证
 * @note 运行时用例：验证嵌套作用域中变量按正确顺序查找（外层→内层）
 */
function main(): void {
    let outer: number = 10;
    {
        let inner: number = 20;
        // inner accessible, outer accessible from enclosing scope
        if (inner + outer != 30) {
            throw new Error("assertion failed: " + (inner + outer));
        }
    }
    // outer still accessible after inner block
    if (outer != 10) {
        throw new Error("assertion failed: " + outer);
    }
    console.log("verified");
}
