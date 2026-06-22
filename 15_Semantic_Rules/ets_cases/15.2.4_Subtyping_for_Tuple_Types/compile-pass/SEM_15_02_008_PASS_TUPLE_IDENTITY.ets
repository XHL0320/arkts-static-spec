/**
 * @id SEM_15_02_008
 * @expect compile-pass
 * @section 15.2.4
 * @design 验证元组类型的子类型关系：相同结构元组 <: 自身
 * @note 正向用例：[int, string] 应可赋值给相同结构的 [int, string] 变量
 */
function main(): void {
    let t1: [int, string] = [1, "a"];
    let t2: [int, string] = t1;
    console.log(`t2[0]=${t2[0]}, t2[1]=${t2[1]}`);
}
