/**
 * @id STM_08_06_005_PASS_LabeledLoopBreak
 * @expect compile-pass
 * @section 8.6
 * @design 带标签的for循环：在循环体内使用break label正确引用标签以提前终止外层循环
 * @note 验证标签循环中break引用标签的合法性，标签必须被使用
 */
function testLabeledLoopBreak(): void {
    let sum: int = 0;
    outerLoop: for (let i: int = 0; i < 5; i++) {
        if (i > 2) {
            break outerLoop;
        }
        sum += i;
    }
}
