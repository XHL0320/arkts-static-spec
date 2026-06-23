/**
 * @id EXP_07_25_01_022_FAIL_NON_STRING_BOTH
 * @expect compile-fail
 * @section 7.25.1
 * @design 验证两个非 string 操作数且无数值转换规则的组合应报编译错误
 * @note 反向用例：正则抽象函数类型 + int，双方都不能满足字符串/数值上下文
 */
function main(): void {
    let x: int = 1;
    let y: boolean = true;
    let s = x + y;
}
