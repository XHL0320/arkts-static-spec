/**
 * @id STM_08_04_003_PASS_shadowing_in_block
 * @expect compile-pass
 * @section 8.4
 * @design 测试块作用域中变量遮蔽：外层let和内层const同名变量合法
 * @note 规范明确允许内部块遮蔽外部同名变量
 */
function testShadowingBlock(): void {
    let item: int = 123;
    {
        const item: string = "123";
    }
    let value: string = "outer";
    {
        const value: string = "inner";
    }
}
