function matrix_iter()

end

local new = {}
function new:Matrix(...)
local matrix = {rows=0, cols=0, prototype={}}
local elements = {...}
matrix.rows = #elements
matrix.cols = #elements[1]
local m = matrix.prototype
function matrix:get(r, c)
return m[r][c]
end
function matrix:getr(r)

end
function matrix:getc(c)

end
function matrix:set(r, c, v)
if r > matrix.rows or c > matrix.cols then error("Invalid row or column.") return end
if not m[r] then m[r] = {} end
if not m[r][c] then m[r][c] = {} end
m[r][c] = v
end
for i = 1, #elements do
for j = 1, #elements[i] do
matrix:set(i, j, elements[i][j] or 0)
end
end
setmetatable(matrix, {

__tostring = function()
local str = "| "
for r = 1, matrix.rows do
str = str .. table.concat(m[r], " | ") .. " |\n| "
end
return str:sub(-1)
end,

__add = function()
for i =
end
})
return matrix
end

local myMatrix = new:Matrix(
{1, 2, 3},
{6, 7, 8}
)
print(myMatrix)
