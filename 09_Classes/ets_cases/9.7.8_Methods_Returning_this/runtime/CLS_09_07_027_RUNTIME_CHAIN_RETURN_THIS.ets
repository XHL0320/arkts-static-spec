/**
 * @id CLS_09_07_027_RUNTIME_CHAIN_RETURN_THIS
 * @expect runtime
 * @section 9.7.8
 * @design return this链式调用运行时
 * @note 运行时用例
 */
class Chain { setA(v: int): this { return this } setB(v: string): this { return this } }
function main(): void { let c: Chain = new Chain(); let r: Chain = c.setA(1).setB("x"); console.log("verified") }
