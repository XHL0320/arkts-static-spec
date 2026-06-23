/**
 * @id EXP_07_27_05_005_PASS_CHAR_EXPRESSION
 * @expect compile-pass
 * @section 7.27.5
 * @design 验证表达式/函数返回值作为 char 关系运算的操作数编译通过
 * @note 正向用例：char 类型表达式结果可作为关系运算的操作数
 */
function getCharA(): char {
    return c'A';
}

function getCharB(): char {
    return c'B';
}

function main(): void {
    let a: char = c'A';
    let b: char = c'B';

    // 关系运算表达式作为操作数（链式）
    let r1: boolean = (a < b) == true;
    let r2: boolean = (b > a) == true;

    // 函数返回值作为操作数
    let r3: boolean = getCharA() < getCharB();  // 'A' < 'B' = true
    let r4: boolean = getCharA() <= getCharA(); // 'A' <= 'A' = true
    let r5: boolean = getCharB() > getCharA();  // 'B' > 'A' = true
    let r6: boolean = getCharB() >= getCharB(); // 'B' >= 'B' = true

    console.log("PASS: " + r1 + " " + r2 + " " + r3 + " " + r4);
}
