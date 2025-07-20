CREATE TABLE InternshipApplicants (
    ApplicantID INT,
    FullName VARCHAR(100),
    CollegeName VARCHAR(100),
    Year VARCHAR(10), -- Final / Pre-Final
    RoleApplied VARCHAR(50),
    City VARCHAR(50),
    Version INT DEFAULT 1,
    IsCurrent BIT DEFAULT 1,
    StartDate DATE DEFAULT GETDATE(),
    EndDate DATE NULL,
    PreviousCity VARCHAR(50) -- For SCD Type 3/6
);

-- Dummy Data
INSERT INTO InternshipApplicants (ApplicantID, FullName, CollegeName, Year, RoleApplied, City)
VALUES
(1, 'Ananya Sharma', 'IIT Delhi', 'Final', 'Data Analyst', 'Delhi'),
(2, 'Rohit Sinha', 'NIT Trichy', 'Pre-Final', 'Web Developer', 'Trichy'),
(3, 'Mehak Kapoor', 'BITS Pilani', 'Final', 'AI Intern', 'Hyderabad'),
(4, 'Karan Patel', 'VIT Vellore', 'Pre-Final', 'Backend Developer', 'Vellore');
