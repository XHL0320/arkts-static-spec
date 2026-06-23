/**
 * @id EXP_07_27_06_011_FAIL_DIFFERENT_ENUM
 * @expect compile-fail
 * @section 7.27.6
 * @design 验证不同类型枚举的成员关系运算产生编译时错误
 * @note 反向用例：E1 和 E2 是不同的枚举类型，无法进行关系运算
 *       spec: 两个操作数必须为相同枚举类型，否则编译时错误
 */
enum E1 { A, B }
enum E2 { C, D }

function main(): void {
    let b: boolean = E1.A < E2.C;  // Compile-time error: different enum types
}
