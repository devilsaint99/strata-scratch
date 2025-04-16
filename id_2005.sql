-- Share of Active Users
-- Calculate the percentage of users who are both from the US and have an 'open' status, as indicated in the fb_active_users table.

SELECT (active_users/total_users)*100 AS active_users_share
FROM (
    SELECT COUNT(user_id) total_users,
           SUM(CASE WHEN status = 'open' and country = 'USA' THEN 1
                 ELSE 0
                 END) active_users
    FROM fb_active_users
) usa_user_counts
