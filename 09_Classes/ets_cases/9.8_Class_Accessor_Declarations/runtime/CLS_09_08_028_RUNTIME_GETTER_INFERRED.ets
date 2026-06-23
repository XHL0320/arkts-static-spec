/**
 * @id CLS_09_08_028_RUNTIME_GETTER_INFERRED
 * @expect runtime
 * @section 9.8
 * @design getter返回类型推断运行时验证
 * @note 运行时用例
 */
class GetterBox028 { private _val: int = 99; get val() { return this._val } }
function main(): void { let b: GetterBox028 = new GetterBox028(); if (b.val != 99) { throw new Error("fail") } console.log("verified") }
