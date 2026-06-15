/**
 * @id LEX_02_03_010_PASS_WS_BEFORE_KEYWORD
 * @expect compile-pass
 * @section 2.3
 * @design 关键字前的空白(行首缩进) * @note 正向用例：验证该特性编译通过的正确用法

 */
function testWsBeforeKeyword(): void {
    let x: number = 1
        let y: number = 2
	let z: number = 3
}
