-- Create the Members table
CREATE TABLE Members (
    id INT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    age INT
);

-- Create the WorkoutSessions table
CREATE TABLE WorkoutSessions (
    session_id INT PRIMARY KEY,
    member_id INT,
    session_date DATE,
    session_time VARCHAR(50),
    activity VARCHAR(255),
    FOREIGN KEY (member_id) REFERENCES Members(id)
);

-- Insert data into the Members table
INSERT INTO Members (id, name, age) VALUES
(1, 'John Doe', 30),
(2, 'Jane Smith', 25),
(3, 'Alice Johnson', 28),
(4, 'John Smith', 40);  -- Adding John Smith for the deletion task

-- Insert data into the WorkoutSessions table
INSERT INTO WorkoutSessions (session_id, member_id, session_date, session_time, activity) VALUES
(1, 1, '2024-08-10', '08:00 AM', 'Yoga'),
(2, 1, '2024-08-11', '07:00 AM', 'Cardio'),
(3, 2, '2024-08-10', '09:00 AM', 'Pilates'),
(4, 3, '2024-08-11', '06:00 PM', 'Strength Training'),
(5, 4, '2024-08-09', '10:00 AM', 'Swimming');  -- Adding a session for John Smith

-- Update the session time for Jane Smith
UPDATE WorkoutSessions
SET session_time = '07:00 PM'
WHERE member_id = (SELECT id FROM Members WHERE name = 'Jane Smith')
AND session_time = '09:00 AM';

-- Delete associated records in WorkoutSessions for John Smith
DELETE FROM WorkoutSessions
WHERE member_id = (SELECT id FROM Members WHERE name = 'John Smith');

-- Delete the member record from Members
DELETE FROM Members
WHERE name = 'John Smith';
