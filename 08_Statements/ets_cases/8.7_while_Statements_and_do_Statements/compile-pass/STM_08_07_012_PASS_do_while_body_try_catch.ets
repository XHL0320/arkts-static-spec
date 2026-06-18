/**
 * @id STM_08_07_012_PASS_do_while_body_try_catch
 * @expect compile-pass
 * @section 8.7
 * @design do-while 循环体内包含 try-catch 语句，验证 do 体可包含异常处理 — STATEMENTS.md §8.7
 * @note do 的 statement 可以是任何语句，包括 try-catch
 */
function testDoWhileBodyTryCatch(): void {
    let i: int = 0;
    do {
        try {
            i = i + 1;
            if (i == 2) {
                throw new Error("skip");
            }
        } catch (e) {
            i = i + 1;
        }
    } while (i < 5);
    let count: int = 0;
    do {
        try {
            count = count + 1;
        } catch (e) {
            count = 0;
        }
    } while (count < 3);
}
