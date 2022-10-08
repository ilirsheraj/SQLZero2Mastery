-- Get your own timezone
SHOW TIMEZONE;

-- Set the timezone only for the cirrent session
SET TIME ZONE 'UTC';
SHOW TIMEZONE;

-- Set all the sessions to UTC for this user
ALTER USER postgres SET timezone='UTC';