-- ============================================================
-- seed-answer-options.sql
-- Answer options for all 30 questions in the suraksha DB
-- Run with: mysql -u root -p suraksha < seed-answer-options.sql
-- ============================================================

SET FOREIGN_KEY_CHECKS = 0;
TRUNCATE TABLE attempt_answer_option;
TRUNCATE TABLE attempt_answer;
TRUNCATE TABLE assessment_attempt;
TRUNCATE TABLE answer_option_text;
TRUNCATE TABLE answer_option;
SET FOREIGN_KEY_CHECKS = 1;

-- ============================================================
-- HELPER: each INSERT block = one question
-- Columns: (question_id, sort_order, is_correct)
-- ============================================================

-- ── MODULE 4 & 7: EARTHQUAKE ─────────────────────────────────

-- Q1 & Q2: "What should you do FIRST when an earthquake starts while you are indoors?"
-- MCQ — correct: Drop, Cover, and Hold On
INSERT INTO answer_option (question_id, sort_order, is_correct) VALUES
  (1, 1, 0), -- Run outside immediately
  (1, 2, 1), -- Drop, Cover, and Hold On under a sturdy table
  (1, 3, 0), -- Stand in a doorway
  (1, 4, 0); -- Call emergency services first

INSERT INTO answer_option_text (option_id, language, option_text) VALUES
  (1, 'en', 'Run outside immediately'),
  (2, 'en', 'Drop, Cover, and Hold On under a sturdy table'),
  (3, 'en', 'Stand in a doorway and hold the frame'),
  (4, 'en', 'Call emergency services first');

INSERT INTO answer_option (question_id, sort_order, is_correct) VALUES
  (2, 1, 0),
  (2, 2, 1),
  (2, 3, 0),
  (2, 4, 0);

INSERT INTO answer_option_text (option_id, language, option_text) VALUES
  (5, 'en', 'Run outside immediately'),
  (6, 'en', 'Drop, Cover, and Hold On under a sturdy table'),
  (7, 'en', 'Stand in a doorway and hold the frame'),
  (8, 'en', 'Call emergency services first');

-- Q4 & Q5: "It is safe to use lifts immediately after an earthquake"
-- TRUE_FALSE — correct: False
INSERT INTO answer_option (question_id, sort_order, is_correct) VALUES
  (4, 1, 0), -- True
  (4, 2, 1); -- False

INSERT INTO answer_option_text (option_id, language, option_text) VALUES
  (9,  'en', 'True'),
  (10, 'en', 'False');

INSERT INTO answer_option (question_id, sort_order, is_correct) VALUES
  (5, 1, 0),
  (5, 2, 1);

INSERT INTO answer_option_text (option_id, language, option_text) VALUES
  (11, 'en', 'True'),
  (12, 'en', 'False');

-- Q7 & Q8: "What is an aftershock?"
-- MCQ — correct: A smaller earthquake that follows the main quake
INSERT INTO answer_option (question_id, sort_order, is_correct) VALUES
  (7, 1, 0),
  (7, 2, 1),
  (7, 3, 0),
  (7, 4, 0);

INSERT INTO answer_option_text (option_id, language, option_text) VALUES
  (13, 'en', 'A second, stronger earthquake that always follows the first'),
  (14, 'en', 'A smaller earthquake that follows the main quake'),
  (15, 'en', 'A tsunami triggered by an undersea earthquake'),
  (16, 'en', 'The vibration from collapsing buildings');

INSERT INTO answer_option (question_id, sort_order, is_correct) VALUES
  (8, 1, 0),
  (8, 2, 1),
  (8, 3, 0),
  (8, 4, 0);

INSERT INTO answer_option_text (option_id, language, option_text) VALUES
  (17, 'en', 'A second, stronger earthquake that always follows the first'),
  (18, 'en', 'A smaller earthquake that follows the main quake'),
  (19, 'en', 'A tsunami triggered by an undersea earthquake'),
  (20, 'en', 'The vibration from collapsing buildings');

-- Q10 & Q11: "You should prepare an emergency kit before an earthquake strikes."
-- TRUE_FALSE — correct: True
INSERT INTO answer_option (question_id, sort_order, is_correct) VALUES
  (10, 1, 1), -- True
  (10, 2, 0); -- False

INSERT INTO answer_option_text (option_id, language, option_text) VALUES
  (21, 'en', 'True'),
  (22, 'en', 'False');

INSERT INTO answer_option (question_id, sort_order, is_correct) VALUES
  (11, 1, 1),
  (11, 2, 0);

INSERT INTO answer_option_text (option_id, language, option_text) VALUES
  (23, 'en', 'True'),
  (24, 'en', 'False');

-- Q13 & Q14: "Why should you NOT use open flames or switch on lights immediately after an earthquake?"
-- MCQ — correct: Gas leaks may cause explosion
INSERT INTO answer_option (question_id, sort_order, is_correct) VALUES
  (13, 1, 0),
  (13, 2, 0),
  (13, 3, 1),
  (13, 4, 0);

INSERT INTO answer_option_text (option_id, language, option_text) VALUES
  (25, 'en', 'It may disturb rescue workers trying to listen for survivors'),
  (26, 'en', 'The electricity network is usually overloaded after a quake'),
  (27, 'en', 'Gas leaks are common and a spark could cause an explosion'),
  (28, 'en', 'Flames attract insects that spread disease in disaster zones');

INSERT INTO answer_option (question_id, sort_order, is_correct) VALUES
  (14, 1, 0),
  (14, 2, 0),
  (14, 3, 1),
  (14, 4, 0);

INSERT INTO answer_option_text (option_id, language, option_text) VALUES
  (29, 'en', 'It may disturb rescue workers trying to listen for survivors'),
  (30, 'en', 'The electricity network is usually overloaded after a quake'),
  (31, 'en', 'Gas leaks are common and a spark could cause an explosion'),
  (32, 'en', 'Flames attract insects that spread disease in disaster zones');


-- ── MODULE 5 & 8: FLOOD ──────────────────────────────────────

-- Q16 & Q17: "How deep does fast-moving floodwater need to be to sweep away an adult?"
-- MCQ — correct: 30 cm
INSERT INTO answer_option (question_id, sort_order, is_correct) VALUES
  (16, 1, 0),
  (16, 2, 0),
  (16, 3, 1),
  (16, 4, 0);

INSERT INTO answer_option_text (option_id, language, option_text) VALUES
  (33, 'en', '1 metre (waist height)'),
  (34, 'en', '60 cm (thigh height)'),
  (35, 'en', '30 cm (knee height)'),
  (36, 'en', '15 cm (ankle height)');

INSERT INTO answer_option (question_id, sort_order, is_correct) VALUES
  (17, 1, 0),
  (17, 2, 0),
  (17, 3, 1),
  (17, 4, 0);

INSERT INTO answer_option_text (option_id, language, option_text) VALUES
  (37, 'en', '1 metre (waist height)'),
  (38, 'en', '60 cm (thigh height)'),
  (39, 'en', '30 cm (knee height)'),
  (40, 'en', '15 cm (ankle height)');

-- Q19 & Q20: "You should wait until floodwater enters your home before evacuating."
-- TRUE_FALSE — correct: False
INSERT INTO answer_option (question_id, sort_order, is_correct) VALUES
  (19, 1, 0), -- True
  (19, 2, 1); -- False

INSERT INTO answer_option_text (option_id, language, option_text) VALUES
  (41, 'en', 'True'),
  (42, 'en', 'False');

INSERT INTO answer_option (question_id, sort_order, is_correct) VALUES
  (20, 1, 0),
  (20, 2, 1);

INSERT INTO answer_option_text (option_id, language, option_text) VALUES
  (43, 'en', 'True'),
  (44, 'en', 'False');

-- Q22 & Q23: "What should you do with drinking water after a flood?"
-- MCQ — correct: Boil or disinfect it
INSERT INTO answer_option (question_id, sort_order, is_correct) VALUES
  (22, 1, 0),
  (22, 2, 1),
  (22, 3, 0),
  (22, 4, 0);

INSERT INTO answer_option_text (option_id, language, option_text) VALUES
  (45, 'en', 'Use it normally — floodwater is filtered by soil'),
  (46, 'en', 'Boil or disinfect all water before drinking'),
  (47, 'en', 'Let it settle for 24 hours and it will become safe'),
  (48, 'en', 'Mix it with salt to kill bacteria');

INSERT INTO answer_option (question_id, sort_order, is_correct) VALUES
  (23, 1, 0),
  (23, 2, 1),
  (23, 3, 0),
  (23, 4, 0);

INSERT INTO answer_option_text (option_id, language, option_text) VALUES
  (49, 'en', 'Use it normally — floodwater is filtered by soil'),
  (50, 'en', 'Boil or disinfect all water before drinking'),
  (51, 'en', 'Let it settle for 24 hours and it will become safe'),
  (52, 'en', 'Mix it with salt to kill bacteria');

-- Q25 & Q26: "Wearing rubber gloves and boots when cleaning flood-affected areas is important."
-- TRUE_FALSE — correct: True
INSERT INTO answer_option (question_id, sort_order, is_correct) VALUES
  (25, 1, 1), -- True
  (25, 2, 0); -- False

INSERT INTO answer_option_text (option_id, language, option_text) VALUES
  (53, 'en', 'True'),
  (54, 'en', 'False');

INSERT INTO answer_option (question_id, sort_order, is_correct) VALUES
  (26, 1, 1),
  (26, 2, 0);

INSERT INTO answer_option_text (option_id, language, option_text) VALUES
  (55, 'en', 'True'),
  (56, 'en', 'False');

-- Q28 & Q29: "If you are trapped in a flooded building, you should:"
-- MCQ — correct: Move to the highest floor and signal for help
INSERT INTO answer_option (question_id, sort_order, is_correct) VALUES
  (28, 1, 0),
  (28, 2, 1),
  (28, 3, 0),
  (28, 4, 0);

INSERT INTO answer_option_text (option_id, language, option_text) VALUES
  (57, 'en', 'Swim out through a window as soon as possible'),
  (58, 'en', 'Move to the highest floor and signal for help'),
  (59, 'en', 'Stay on the ground floor and wait for water to recede'),
  (60, 'en', 'Open all windows and doors to slow water flow');

INSERT INTO answer_option (question_id, sort_order, is_correct) VALUES
  (29, 1, 0),
  (29, 2, 1),
  (29, 3, 0),
  (29, 4, 0);

INSERT INTO answer_option_text (option_id, language, option_text) VALUES
  (61, 'en', 'Swim out through a window as soon as possible'),
  (62, 'en', 'Move to the highest floor and signal for help'),
  (63, 'en', 'Stay on the ground floor and wait for water to recede'),
  (64, 'en', 'Open all windows and doors to slow water flow');


-- ── MODULE 6 & 9: FIRE ───────────────────────────────────────

-- Q31 & Q32: "What does PASS stand for when using a fire extinguisher?"
-- MCQ — correct: Pull, Aim, Squeeze, Sweep
INSERT INTO answer_option (question_id, sort_order, is_correct) VALUES
  (31, 1, 0),
  (31, 2, 1),
  (31, 3, 0),
  (31, 4, 0);

INSERT INTO answer_option_text (option_id, language, option_text) VALUES
  (65, 'en', 'Prepare, Activate, Spray, Secure'),
  (66, 'en', 'Pull, Aim, Squeeze, Sweep'),
  (67, 'en', 'Position, Alert, Suppress, Stop'),
  (68, 'en', 'Point, Apply, Smother, Stand-back');

INSERT INTO answer_option (question_id, sort_order, is_correct) VALUES
  (32, 1, 0),
  (32, 2, 1),
  (32, 3, 0),
  (32, 4, 0);

INSERT INTO answer_option_text (option_id, language, option_text) VALUES
  (69, 'en', 'Prepare, Activate, Spray, Secure'),
  (70, 'en', 'Pull, Aim, Squeeze, Sweep'),
  (71, 'en', 'Position, Alert, Suppress, Stop'),
  (72, 'en', 'Point, Apply, Smother, Stand-back');

-- Q34 & Q35: "If you are caught in a smoke-filled corridor, you should:"
-- MCQ — correct: Crawl low to the floor
INSERT INTO answer_option (question_id, sort_order, is_correct) VALUES
  (34, 1, 0),
  (34, 2, 0),
  (34, 3, 1),
  (34, 4, 0);

INSERT INTO answer_option_text (option_id, language, option_text) VALUES
  (73, 'en', 'Run as fast as possible to reach the exit'),
  (74, 'en', 'Open windows to clear the smoke before moving'),
  (75, 'en', 'Crawl low to the floor to stay below the smoke'),
  (76, 'en', 'Hold your breath and walk upright to conserve energy');

INSERT INTO answer_option (question_id, sort_order, is_correct) VALUES
  (35, 1, 0),
  (35, 2, 0),
  (35, 3, 1),
  (35, 4, 0);

INSERT INTO answer_option_text (option_id, language, option_text) VALUES
  (77, 'en', 'Run as fast as possible to reach the exit'),
  (78, 'en', 'Open windows to clear the smoke before moving'),
  (79, 'en', 'Crawl low to the floor to stay below the smoke'),
  (80, 'en', 'Hold your breath and walk upright to conserve energy');

-- Q37 & Q38: "It is safe to use a lift to evacuate during a building fire."
-- TRUE_FALSE — correct: False
INSERT INTO answer_option (question_id, sort_order, is_correct) VALUES
  (37, 1, 0), -- True
  (37, 2, 1); -- False

INSERT INTO answer_option_text (option_id, language, option_text) VALUES
  (81, 'en', 'True'),
  (82, 'en', 'False');

INSERT INTO answer_option (question_id, sort_order, is_correct) VALUES
  (38, 1, 0),
  (38, 2, 1);

INSERT INTO answer_option_text (option_id, language, option_text) VALUES
  (83, 'en', 'True'),
  (84, 'en', 'False');

-- Q40 & Q41: "What is the RACE procedure in fire emergencies?"
-- MCQ — correct: Rescue, Alert, Contain, Evacuate
INSERT INTO answer_option (question_id, sort_order, is_correct) VALUES
  (40, 1, 0),
  (40, 2, 0),
  (40, 3, 1),
  (40, 4, 0);

INSERT INTO answer_option_text (option_id, language, option_text) VALUES
  (85, 'en', 'Run, Alarm, Call, Exit'),
  (86, 'en', 'React, Assess, Control, Escape'),
  (87, 'en', 'Rescue, Alert, Contain, Evacuate'),
  (88, 'en', 'Remove, Activate, Combat, Evacuate');

INSERT INTO answer_option (question_id, sort_order, is_correct) VALUES
  (41, 1, 0),
  (41, 2, 0),
  (41, 3, 1),
  (41, 4, 0);

INSERT INTO answer_option_text (option_id, language, option_text) VALUES
  (89, 'en', 'Run, Alarm, Call, Exit'),
  (90, 'en', 'React, Assess, Control, Escape'),
  (91, 'en', 'Rescue, Alert, Contain, Evacuate'),
  (92, 'en', 'Remove, Activate, Combat, Evacuate');

-- Q43 & Q44: "Closing doors behind you slows the spread of fire and smoke."
-- TRUE_FALSE — correct: True
INSERT INTO answer_option (question_id, sort_order, is_correct) VALUES
  (43, 1, 1), -- True
  (43, 2, 0); -- False

INSERT INTO answer_option_text (option_id, language, option_text) VALUES
  (93, 'en', 'True'),
  (94, 'en', 'False');

INSERT INTO answer_option (question_id, sort_order, is_correct) VALUES
  (44, 1, 1),
  (44, 2, 0);

INSERT INTO answer_option_text (option_id, language, option_text) VALUES
  (95, 'en', 'True'),
  (96, 'en', 'False');

-- ── VERIFY ──────────────────────────────────────────────────
SELECT
  q.id AS question_id,
  q.module_id,
  q.q_type,
  COUNT(ao.id) AS option_count,
  SUM(ao.is_correct) AS correct_count
FROM question q
LEFT JOIN answer_option ao ON ao.question_id = q.id
GROUP BY q.id, q.module_id, q.q_type
ORDER BY q.module_id, q.id;
