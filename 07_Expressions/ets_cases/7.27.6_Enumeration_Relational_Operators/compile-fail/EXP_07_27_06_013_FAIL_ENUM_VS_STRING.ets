/**
 * @id EXP_07_27_06_013_FAIL_ENUM_VS_STRING
 * @expect compile-fail
 * @section 7.27.6
 * @design 验证枚举与字符串类型的关系运算产生编译时错误
 * @note 反向用例：string 基类型枚举与 string 文字量不可进行关系运算
 *       spec: 两个操作数必须为相同枚举类型，否则编译时错误
 *       即使基类型为 string，枚举成员本质上是枚举类型而非 string 类型
 *       ⚠️ SPEC 不一致：实际编译通过（实现允许 string 基类型 enum 隐式转换为 string 后比较）
 *       记录于 design_issues_report_7.27.6.md D 类
 */
enum StrEnum: string { A = "hello", B = "world" }

function main(): void {
    let b: boolean = StrEnum.A < "world";  // ⚠️ SPEC 不一致：实际可通过编译
}
