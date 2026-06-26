/**
 * @id CLS_09_08_032_RUNTIME_ACCESSOR_VALIDATION
 * @expect runtime
 * @section 9.8
 * @design 运行时验证 setter 内置校验逻辑：非法值被拒绝写入，原值保持
 * @note 运行时用例：age setter 对负值不写入，getter 返回受保护的原值
 */
class Age { private _age: int = 0; get age(): int { return this._age } set age(a: int) { if (a < 0) { return } this._age = a } }
function main(): void { let p: Age = new Age(); p.age = 25; if (p.age != 25) { throw new Error("fail") } p.age = -1; if (p.age != 25) { throw new Error("setter validation fail") } console.log("verified") }
