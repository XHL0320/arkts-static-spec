/**
 * @id STM_08_06_001_PASS_BasicWhile
 * @expect compile-pass
 * @section 8.6
 * @design 基本while循环：条件为false时循环体不执行，true时正常迭代
 * @note 验证while循环基本语法，条件表达式使用boolean类型
 */
function testBasicWhile(): void {
    let i: int = 0;
    while (i < 3) {
        i++;
    }
    let flag: boolean = true;
    while (flag) {
        flag = false;
    }
}
