/**
 * @id STM_08_06_003_PASS_BasicFor
 * @expect compile-pass
 * @section 8.6
 * @design 基本for循环：包含初始化、条件判断、更新表达式，支持多种写法
 * @note 验证for循环基本语法，包括空初始化和空更新表达式
 */
function testBasicFor(): void {
    let sum: int = 0;
    for (let i: int = 0; i < 5; i++) {
        sum += i;
    }
    let j: int = 0;
    for (; j < 3; j++) {
        sum += j;
    }
    for (let k: int = 0; k < 2; ) {
        sum += k;
        break;
    }
}
