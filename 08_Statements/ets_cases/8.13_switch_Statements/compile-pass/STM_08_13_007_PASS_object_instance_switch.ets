/**
 * @id STM_08_13_007_PASS_object_instance_switch
 * @expect compile-pass
 * @section 8.13
 * @design switch 表达式为 class 实例类型，case 使用 new 表达式创建对象 — STATEMENTS.md §8.13 示例 lines 455-467
 * @note 正向用例：switch 表达式类型为 A | null，case 使用 null 和 new A() 字面量，验证对象实例 switch 可编译
 */
class SwitchTestBox {
    value: int;
    constructor(v: int) { this.value = v; }
}

function testObjectInstanceSwitch(): void {
    let a: SwitchTestBox | null = new SwitchTestBox(42);
    let result: string = "";
    if (a == null) { } else { switch (a!) {
        case null:
            result = "null";
            break;
        case new SwitchTestBox(42):
            result = "never_matches";
            break;
        default:
            result = "non_null_instance";
            break;
    }
}
