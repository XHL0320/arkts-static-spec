/**
 * @id STM_08_06_002_PASS_BasicDoWhile
 * @expect compile-pass
 * @section 8.6
 * @design 基本do-while循环：至少执行一次循环体，条件初始为false时仍执行一次
 * @note 验证do-while循环基本语法
 */
function testBasicDoWhile(): void {
    let i: int = 0;
    do {
        i++;
    } while (i < 3);
    let j: int = 0;
    do {
        j++;
    } while (false);
}
