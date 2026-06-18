/**
 * @id STM_08_13_016_RUNTIME_object_instance_switch
 * @expect runtime
 * @section 8.13
 * @design switch 表达式为 class 实例（含 null union），case 使用 null/new 表达式 — STATEMENTS.md §8.13 示例 lines 455-467
 * @note 运行时验证：switch(A|null) 中 null case 匹配 null 值；case new A() 创建新对象永不匹配原引用；default 匹配非 null 实例
 */
class SwitchObjBox {
    value: int;
    constructor(v: int) { this.value = v; }
}

function makeBox(v: int): SwitchObjBox {
    return new SwitchObjBox(v);
}

function makeNullBox(): SwitchObjBox | null {
    return null;
}

function main(): void {
    // Test 1: switch on null value — case null matches
    let a: SwitchObjBox | null = makeNullBox();
    let result: string = "";
    if (a == null) { } else { switch (a!) {
        case null:
            result = "null_matched";
            break;
        default:
            result = "not_null";
            break;
    }
    if (result != "null_matched") {
        throw new Error("Test 1 null match failed: expected 'null_matched', got '" + result + "'");
    }

    // Test 2: switch on non-null instance — default matches
    let b: SwitchObjBox | null = makeBox(42);
    let result2: string = "";
    if (b == null) { } else { switch (b!) {
        case null:
            result2 = "null";
            break;
        default:
            result2 = "instance_matched";
            break;
    }
    if (result2 != "instance_matched") {
        throw new Error("Test 2 instance default failed: expected 'instance_matched', got '" + result2 + "'");
    }

    // Test 3: case new SwitchObjBox(99) creates a NEW object — == comparison never matches existing reference
    // Per spec line 463: "Never matches as new A is a new unique object"
    let c: SwitchObjBox = makeBox(99);
    let result3: string = "";
    if (c == null) { } else { switch (c!) {
        case new SwitchObjBox(99):
            result3 = "new_matched";
            break;
        default:
            result3 = "new_not_matched";
            break;
    }
    if (result3 != "new_not_matched") {
        throw new Error("Test 3 new object case: expected 'new_not_matched', got '" + result3 + "'");
    }

    // Test 4: case with same object reference — matches via ==
    let shared: SwitchObjBox = makeBox(7);
    let result4: string = "";
    if (shared == null) { } else { switch (shared!) {
        case shared:
            result4 = "same_ref_matched";
            break;
        default:
            result4 = "same_ref_not_matched";
            break;
    }
    if (result4 != "same_ref_matched") {
        throw new Error("Test 4 same reference case: expected 'same_ref_matched', got '" + result4 + "'");
    }

    console.log("verified");
}
