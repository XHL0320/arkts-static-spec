/**
 * @id STM_08_04_017_FAIL_let_without_initializer
 * @expect compile-pass
 * @section 8.4
 * @design 测试let声明缺少初始化器编译错误
 * @note 规范：let和const声明都有初始化部分；let无初始化器 -> 编译错误
 */
function testLetWithoutInit(): void {
    let x: int;
}
