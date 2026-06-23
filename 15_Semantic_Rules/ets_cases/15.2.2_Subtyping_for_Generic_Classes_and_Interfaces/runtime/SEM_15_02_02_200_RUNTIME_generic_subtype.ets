/**
 * @id SEM_15_02_02_200_RUNTIME_generic_subtype
 * @expect runtime
 * @section 15.2.2
 * @design 泛型子类型运行时
 * @note 运行时用例
 */
function identity<T>(x: T): T { return x; }
function main(): void { let r = identity<int>(42); if (r != 42) throw new Error("fail"); console.log("verified"); }
