/**
 * @id SEM_15_07_01_004
 * @expect compile-fail
 * @section 15.7.1
 * @design 验证非法常量表达式拒绝：字符串与整数相乘无效
 * @note 反向用例：const 表达式类型不兼容应报错
 */
function main(): void {
    let x = "str" * 2;
}
