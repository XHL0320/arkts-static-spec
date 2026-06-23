/**
 * @id STM_08_03_005_PASS_empty_block
 * @expect compile-pass
 * @section 8.3
 * @design 空块语句：完全空的块 {}，以及仅有注释的块，验证边界情况
 * @note 正向用例：空块和注释块的编译通过
 */
function testEmptyBlock(): void {
    let x: int = 0;
    {
    }
    x = 1;
}

function testCommentOnlyBlock(): void {
    let x: int = 0;
    {
        /* this is a comment */
    }
    x = 1;
}

function testBlockWithOnlySemicolon(): void {
    let x: int = 0;
    {
        ;
        ;
    }
    x = 1;
}

function testManyEmptyBlocks(): void {
    let x: int = 0;
    {
    }
    {
    }
    {
        x = 42;
    }
}
