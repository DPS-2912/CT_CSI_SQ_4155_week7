CREATE PROCEDURE UpdateSCD1
    @ApplicantID INT,
    @NewCity VARCHAR(50)
AS
BEGIN
    UPDATE InternshipApplicants
    SET City = @NewCity
    WHERE ApplicantID = @ApplicantID;
END;
