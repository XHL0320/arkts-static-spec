/**
 * @id STM_08_06_006_FAIL_LabelInLambdaContinue
 * @expect compile-fail
 * @section 8.6
 * @design 在标签循环体内使用lambda表达式，lambda中引用外层标签的continue语句
 * @note 规范示例：标签不能在lambda表达式中使用，编译时报错
 */
function testLabelInLambdaContinue(): void {
    label: for (let i: int = 0; i < 10; i++) {
        const f = (): void => {
            continue label;
        };
    }
}
