-- Delete associated records in WorkoutSessions
DELETE FROM WorkoutSessions
WHERE member_id = (SELECT id FROM Members WHERE name = 'John Smith');

-- Delete the member record from Members
DELETE FROM Members
WHERE name = 'John Smith';
