/**
 * @id CCY_16_03_01_007_PASS_async_modifier_not_part_of_type
 * @expect compile-pass
 * @section 16.3.1
 * @design async 修饰符不是函数类型的一部分
 * @note 正向用例：验证 async 和非 async 函数签名相同时类型系统无区别
 *       spec: "a non-async function that returns Promise and an async function
 *       with the same return type and arguments are no different"
 */
type FnType = () => Promise<number>;
let f1: FnType = async () => { return 42 as number; };
let f2: FnType = () => { return Promise.resolve<number>(42); };
