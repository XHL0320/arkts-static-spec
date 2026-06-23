/**
 * @id STM_08_07_011_PASS_while_body_try_catch
 * @expect compile-pass
 * @section 8.7
 * @design while 循环体内包含 try-catch 语句，验证循环体可包含异常处理 — STATEMENTS.md §8.7
 * @note while 的 statement 可以是任何语句，包括 try-catch
 */
function testWhileBodyTryCatch(): void {
    let i: int = 0;
    while (i < 5) {
        try {
            i = i + 1;
            if (i == 3) {
                throw new Error("test");
            }
        } catch (e) {
            i = i + 1;
        }
    }
    let flag: boolean = true;
    let count: int = 0;
    while (flag) {
        try {
            count = count + 1;
            if (count >= 3) {
                flag = false;
            }
        } catch (e) {
            count = count - 1;
        }
    }
}
