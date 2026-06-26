/**
 * @id CLS_09_10_040_RUNTIME_MULTI_LEVEL
 * @expect runtime
 * @section 9.10
 * @design 三级继承链方法调用
 * @note 运行时用例
 */
class L1 { l1(): string { return "L1" } }
class L2 extends L1 { l2(): string { return "L2" } }
class L3 extends L2 { l3(): string { return "L3" } }
function main(): void { let obj: L3 = new L3(); if (obj.l1() != "L1" || obj.l2() != "L2" || obj.l3() != "L3") { throw new Error("fail") } console.log("verified") }
