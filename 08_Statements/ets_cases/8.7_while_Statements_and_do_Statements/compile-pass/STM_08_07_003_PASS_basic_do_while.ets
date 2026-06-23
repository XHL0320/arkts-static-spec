/**
 * @id STM_08_07_003_PASS_basic_do_while
 * @expect compile-pass
 * @section 8.7
 * @design 基本 do-while 循环，条件使用布尔变量和比较表达式，验证合法的 do 语句通过编译
 * @note do-while 先执行循环体再判断条件，条件必须为 boolean 类型
 */
function testBasicDoWhile(): void {
    let i: int = 0;
    do {
        i = i + 1;
    } while (i < 5);
    let flag: boolean = true;
    let j: int = 0;
    do {
        j = j + 1;
        if (j >= 3) {
            flag = false;
        }
    } while (flag);
}
