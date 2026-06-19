/**
 * @id CLS_09_07_021_RUNTIME_STATIC_ACCESS_PROTECTED
 * @expect runtime
 * @section 9.7.1
 * @design static方法访问protected static字段
 * @note 运行时用例
 */
class Container { protected static val: int = 42; static getVal(): int { return Container.val } }
function main(): void { if (Container.getVal() != 42) { throw new Error("fail") } console.log("verified") }
