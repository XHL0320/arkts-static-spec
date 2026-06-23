/**
 * @id EXP_07_27_06_014_FAIL_DIFFERENT_ENUM_SAME_BASE
 * @expect compile-fail
 * @section 7.27.6
 * @design 验证不同枚举类型（相同基类型）的关系运算产生编译时错误
 * @note 反向用例：E1 和 E2 基类型均为 int，但为不同枚举类型
 *       spec: 两个操作数必须为相同枚举类型，即使基类型相同也产生编译时错误
 */
enum E1: int { A = 1, B = 2 }
enum E2: int { C = 3, D = 4 }

function main(): void {
    let b: boolean = E1.A < E2.C;  // Compile-time error: different enum types (same base type)
}
