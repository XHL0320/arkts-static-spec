/**
 * @id STM_08_15_2_013_PASS_finally_return_override
 * @expect compile-pass
 * @section 8.15.2
 * @design 测试finally块中包含return语句：当finally块中有return时，会覆盖try块或catch块中的return值。验证编译器允许finally块中出现return语句，且这是合法语法。
 * @note 正向测试：finally块中的return为合法语法，代码应正确编译通过
 */
function testFinallyReturnOverride(): number {
    let flag: number = 0;
    try {
        flag = 10;
        return flag;
    } finally {
        // return in finally overrides try's return value
        flag = 99;
        return flag;
    }
}

function testFinallyReturnFromCatch(): number {
    try {
        throw new Error("err");
    } catch (e) {
        return 1;
    } finally {
        // return in finally overrides catch's return
        return 2;
    }
}
