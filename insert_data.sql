-- Insert data into the Members table
INSERT INTO Members (id, name, age) VALUES
(1, 'John Doe', 30),
(2, 'Jane Smith', 25),
(3, 'Alice Johnson', 28);

-- Insert data into the WorkoutSessions table
INSERT INTO WorkoutSessions (session_id, member_id, session_date, session_time, activity) VALUES
(1, 1, '2024-08-10', '08:00 AM', 'Yoga'),
(2, 1, '2024-08-11', '07:00 AM', 'Cardio'),
(3, 2, '2024-08-10', '09:00 AM', 'Pilates'),
(4, 3, '2024-08-11', '06:00 PM', 'Strength Training');
