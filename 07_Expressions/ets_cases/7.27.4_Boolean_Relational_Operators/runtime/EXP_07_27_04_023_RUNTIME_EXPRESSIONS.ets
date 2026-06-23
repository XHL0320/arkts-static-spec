/**
 * @id EXP_07_27_04_023_RUNTIME_EXPRESSIONS
 * @expect runtime
 * @section 7.27.4
 * @design 验证 boolean 表达式（逻辑运算结果）作为关系操作数运行时行为
 * @note 运行时用例：&& || ! 表达式结果作为 boolean 关系操作数
 */
function main(): void {
    let x: boolean = true;
    let y: boolean = false;

    // && 结果作为操作数：true && false = false, true || false = true
    if (((x && y) < (x || y)) != true) { throw new Error("assertion failed: (true&&false) < (true||false)"); }
    if (((x && y) > (x || y)) != false) { throw new Error("assertion failed: (true&&false) > (true||false)"); }
    if (((x && y) <= (x || y)) != true) { throw new Error("assertion failed: (true&&false) <= (true||false)"); }
    if (((x && y) >= (x || y)) != false) { throw new Error("assertion failed: (true&&false) >= (true||false)"); }

    // ! 取反后比较：!false = true, !true = false
    if (((!y) < (!x)) != false) { throw new Error("assertion failed: !false < !true"); }
    if (((!y) > (!x)) != true) { throw new Error("assertion failed: !false > !true"); }
    if (((!x) < (!y)) != true) { throw new Error("assertion failed: !true < !false"); }
    if (((!x) > (!y)) != false) { throw new Error("assertion failed: !true > !false"); }

    console.log("verified");
}
