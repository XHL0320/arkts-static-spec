/**
 * @id EXP_07_27_04_022_RUNTIME_VARIABLES
 * @expect runtime
 * @section 7.27.4
 * @design 验证 let/const boolean 变量关系运算运行时行为
 * @note 运行时用例：使用 let/const 变量验证布尔比较正确性
 */
function main(): void {
    // let 变量
    let a: boolean = false;
    let b: boolean = true;

    if ((a < b) != true) { throw new Error("assertion failed: false < true"); }
    if ((a > b) != false) { throw new Error("assertion failed: false > true"); }
    if ((b < a) != false) { throw new Error("assertion failed: true < false"); }
    if ((b > a) != true) { throw new Error("assertion failed: true > false"); }
    if ((a <= b) != true) { throw new Error("assertion failed: false <= true"); }
    if ((b <= a) != false) { throw new Error("assertion failed: true <= false"); }
    if ((a >= b) != false) { throw new Error("assertion failed: false >= true"); }
    if ((b >= a) != true) { throw new Error("assertion failed: true >= false"); }

    // const 常量
    const C: boolean = false;
    const D: boolean = true;

    if ((C < D) != true) { throw new Error("assertion failed: const false < true"); }
    if ((C <= D) != true) { throw new Error("assertion failed: const false <= true"); }
    if ((D > C) != true) { throw new Error("assertion failed: const true > false"); }
    if ((D >= C) != true) { throw new Error("assertion failed: const true >= false"); }

    console.log("verified");
}
