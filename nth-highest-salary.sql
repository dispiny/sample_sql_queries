--
-- @lc app=leetcode id=177 lang=mysql
--
-- [177] Nth Highest Salary
--

-- @lc code=start
CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
  RETURN (
    select distinct e1.salary  -- distinct는 중복 제거
    from employee e1 
    where (
      Select count(distinct salary) 
      from employee e2 
      where e2.salary>e1.salary
    )
    =N-1
  );
END
-- @lc code=end

