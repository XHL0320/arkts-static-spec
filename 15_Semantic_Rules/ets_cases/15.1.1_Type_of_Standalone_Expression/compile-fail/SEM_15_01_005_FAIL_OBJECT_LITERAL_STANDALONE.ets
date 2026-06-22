/**
 * @id SEM_15_01_005
 * @expect compile-fail
 * @section 15.1.1
 * @design 验证对象字面量作为独立表达式应产生编译错误 ESE0127
 * @note 反向用例：对象字面量不能作为独立表达式
 */
function main(): void {
    let obj = { name: "test", value: 42 };
}
