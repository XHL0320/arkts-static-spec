/**
 * @id STM_08_03_002_PASS_nested_blocks
 * @expect compile-pass
 * @section 8.3
 * @design 嵌套块语句：块中嵌套块，多层嵌套，不同作用域级别
 * @note 正向用例：块嵌套场景，验证嵌套块编译通过
 */
function testNestedBlocks(): void {
    let outer: int = 1;
    {
        let inner1: int = 2;
        outer = outer + inner1;
        {
            let inner2: int = 3;
            outer = outer + inner2;
            {
                let inner3: int = 4;
                outer = outer + inner3;
            }
        }
    }
}

function testNestedEmptyBlocks(): void {
    let x: int = 0;
    {
        {
            {
                x = 42;
            }
        }
    }
}

function testNestedBlockShadowing(): void {
    let x: int = 10;
    {
        let x: int = 20;
        {
            let x: int = 30;
            x = x + 1;
        }
    }
}
