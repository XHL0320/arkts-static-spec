/**
 * @id GEN_05_01_01_003_PASS_CONSTRAINT_LITERAL_UNION
 * @expect compile-pass
 * @section 5.1.1
 * @design 类型参数约束-字面量联合
 * @note 正向用例：验证 extends 字面量联合类型约束
 */
class Exotic<T extends "aa" | "bb"> {}
let e1: Exotic<"aa"> = new Exotic<"aa">();
