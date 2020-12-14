CREATE TABLE "public"."exam_results" (
    "id" SERIAL,
    "fullname" TEXT NOT NULL,
    "result" INT4 NOT NULL,
    "birthday" DATE NOT NULL,
    "is_citizen" BOOLEAN NOT NULL,
    PRIMARY KEY ("id")
);

INSERT INTO "public"."exam_results" (
  "fullname",
  "result",
  "birthday",
  "is_citizen"
)
VALUES
  ('Олег Иванов', 95, '1989-01-08'::date, TRUE),
  ('Александр Конеприказчиков', 55, '1989-02-18'::date, TRUE),
  ('Олег Семенов', 40, '1989-05-05'::date, FALSE),
  ('Светлана Сакволетдинова', 90, '1980-08-01'::date, TRUE),
  ('Ольга Иванова', 75, '1980-02-09'::date, FALSE),
  ('Ольга Светлова', 70, '1990-10-08'::date, TRUE),
  ('Никита Соболев', 80, '1992-05-08'::date, TRUE),
  ('Кира Горева', 99, '1990-11-13'::date, TRUE),
  ('Олег Безруков', 30, '1995-08-03'::date, TRUE),
  ('Николай Вавилов', 44, '1985-03-08'::date, TRUE);
