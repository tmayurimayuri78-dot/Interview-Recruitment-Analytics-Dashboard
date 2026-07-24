CREATE DATABASE interview_recruitment_analytics;
SELECT DATABASE();
USE interview_recruitment_analytics;
CREATE TABLE job_details(Job_ID INT PRIMARY KEY, Job_Role VARCHAR(50), Department VARCHAR(20), Location VARCHAR(100));
CREATE TABLE candidate_details(Candidate_ID INT PRIMARY KEY, Candidate_Name VARCHAR(50), College VARCHAR(100), Location VARCHAR(100),
 CGPA FLOAT, Job_ID INT);
CREATE TABLE candidate_skills(Candidate_ID INT, SQL_Skills INT, Python_Skills INT,Excel_Skills INT,PowerBi_Skills INT,
	Communication_Skills INT, ProblemSolving_Skills INT);
CREATE TABLE interview_results(Candidate_ID INT, Aptitude_Score INT, Technical_Score INT, HR_Score INT,Final_Result VARCHAR(20));

ALTER TABLE candidate_skills
ADD CONSTRAINT fk_candidate_skills
FOREIGN KEY (Candidate_ID)
REFERENCES candidate_details(Candidate_ID);

ALTER TABLE interview_results
ADD CONSTRAINT fk_interview_skills
FOREIGN KEY (Candidate_ID)
REFERENCES candidate_details(Candidate_ID);

ALTER TABLE candidate_details
ADD CONSTRAINT fk_candidate_details
FOREIGN KEY (Job_ID)
REFERENCES job_details(Job_ID);
SELECT * FROM interview_results;
DESC candidate_details;

SET SQL_SAFE_UPDATES = 0;

SELECT * FROM job_details;
SELECT * FROM candidate_details;
SELECT * from interview_results;
SELECT * FROM candidate_skills;

