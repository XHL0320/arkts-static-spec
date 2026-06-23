/**
 * @id EXP_07_17_02_012_RUNTIME_NON_SUBTYPE_CLASS_CAST_ERROR
 * @expect runtime
 * @runtime-throws=ClassCastError
 * @section 7.17.2
 * @design 验证非子类型 cast 运行时抛出 ClassCastError
 * @note 运行时用例：Object 类型 int 值 as string 应抛出 ClassCastError
 */
function main(): void {
    let x: Object = 42
    let s: string = x as string
}
