CREATE PROCEDURE UpdateSCD4
    @ApplicantID INT,
    @NewCity VARCHAR(50)
AS
BEGIN
    INSERT INTO InternshipApplicants_History
    SELECT ApplicantID, FullName, CollegeName, Year, RoleApplied, City, GETDATE()
    FROM InternshipApplicants
    WHERE ApplicantID = @ApplicantID;

    UPDATE InternshipApplicants
    SET City = @NewCity
    WHERE ApplicantID = @ApplicantID;
END;
