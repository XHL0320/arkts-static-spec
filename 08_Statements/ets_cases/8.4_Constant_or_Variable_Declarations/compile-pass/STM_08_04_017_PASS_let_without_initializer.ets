/**
 * @id STM_08_04_017_PASS_let_without_initializer
 * @expect compile-pass
 * @section 8.4
 * @design let 声明仅带类型注解、无初始化器，编译通过
 * @note ArkTS 允许 let 声明无初始值（spec §8.4 初始化部分非强制，与 const 不同）
 */
function testLetWithoutInit(): void {
    let x: int;
}
