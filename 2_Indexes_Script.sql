-- This SQL script creates indexes on various columns across four different tables: users, surveys, questions, and responses.
-- to optimize query performance

-- Indexes for Basic Query Problems

CREATE INDEX idx_surveys_survey_id ON surveys (survey_id);
CREATE INDEX idx_questions_survey_id ON questions (survey_id);
CREATE INDEX idx_questions_question_id ON questions (question_id);
CREATE INDEX idx_responses_question_id ON responses (question_id);

-- Indexes for Advanced Query Problems

CREATE INDEX idx_responses_user_id ON responses(user_id);
CREATE INDEX idx_users_user_id ON users(user_id);
