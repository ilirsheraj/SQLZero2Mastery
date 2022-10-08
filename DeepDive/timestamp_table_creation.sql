-- Timepstamps
-- Create a new table
CREATE TABLE timezones(
ts TIMESTAMP WITHOUT TIME ZONE,
tz TIMESTAMP WITH TIME ZONE
);

-- Insert values into the table
INSERT INTO timezones VALUES(
TIMESTAMP WITHOUT TIME ZONE '2000-01-01 10:00:00-05',
TIMESTAMP WITH TIME ZONE '2000-01-01 10:00:00-05'
);

-- Check the table created
SELECT * FROM timezones;