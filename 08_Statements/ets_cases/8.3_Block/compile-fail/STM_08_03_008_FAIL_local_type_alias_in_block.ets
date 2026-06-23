/**
 * @id STM_08_03_008_FAIL_local_type_alias_in_block
 * @expect compile-fail
 * @section 8.3
 * @design 块内声明局部类型别名应编译失败（ArkTS 不允许块级 type alias）
 * @note 反向用例：块中 type 声明，违反 ArkTS 限制
 */
function testLocalTypeAliasInBlockFail(): void {
    let x: int = 0;
    {
        type MyInt = int;
        let y: MyInt = 42;
        x = y;
    }
}
