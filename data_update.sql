-- Update the session time for Jane Smith
UPDATE WorkoutSessions
SET session_time = '07:00 PM'
WHERE member_id = (SELECT id FROM Members WHERE name = 'Jane Smith')
AND session_time = '09:00 AM';  -- Assuming '09:00 AM' is the old session time to be updated
