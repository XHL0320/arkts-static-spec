/**
 * @id STM_08_03_006_FAIL_nested_function_in_block
 * @expect compile-fail
 * @section 8.3
 * @design 块内声明嵌套函数应编译失败（ArkTS 不允许嵌套函数）
 * @note 反向用例：块中函数声明嵌套，违反 ArkTS 限制
 */
function testNestedFunctionInBlockFail(): void {
    let x: int = 0;
    {
        function helper(): void {
            x = 1;
        }
        helper();
    }
}
