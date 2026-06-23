/**
 * @id GEN_05_01_01_003_FAIL_LITERAL_CONSTRAINT
 * @expect compile-fail
 * @section 5.1
 * @design 字面量约束不匹配
 * @note 反向用例：验证字面量联合约束不匹配
 */
class Exotic<T extends "aa" | "bb"> {}
let e2: Exotic<"cc"> = new Exotic<"cc">();
