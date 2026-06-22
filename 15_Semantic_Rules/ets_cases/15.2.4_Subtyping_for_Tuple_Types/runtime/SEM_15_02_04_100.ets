/**
 * @id SEM_15_02_04_100
 * @expect runtime
 * @section 15.2.4
 * @design 元组子类型运行时
 * @note 运行时用例
 */
function main(): void { let t: [int, string] = [1, "a"]; if (t[0] != 1) throw new Error("fail"); console.log("verified"); }
