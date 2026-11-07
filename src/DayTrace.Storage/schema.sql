CREATE TABLE IF NOT EXISTS activity_interval (
    id INTEGER PRIMARY KEY,
    start_utc_ms INTEGER NOT NULL,
    end_utc_ms INTEGER NOT NULL CHECK (end_utc_ms > start_utc_ms),
    process_name TEXT NOT NULL,
    window_title TEXT NOT NULL,
    tab_title TEXT
);
CREATE INDEX IF NOT EXISTS activity_by_start ON activity_interval(start_utc_ms);
