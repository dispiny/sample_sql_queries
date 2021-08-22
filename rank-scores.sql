--
-- @lc app=leetcode id=178 lang=mysql
--
-- [178] Rank Scores
--

-- @lc code=start
# Write your MySQL query statement below
select s1.score,(select count(Distinct Score) from scores s2 where s2.score>=s1.score) as 'Rank' from scores s1 order by s1.score desc;
-- @lc code=end

