CREATE PROCEDURE UpdateSCD3
    @ApplicantID INT,
    @NewCity VARCHAR(50)
AS
BEGIN
    DECLARE @CurrentCity VARCHAR(50);

    SELECT @CurrentCity = City
    FROM InternshipApplicants
    WHERE ApplicantID = @ApplicantID;

    UPDATE InternshipApplicants
    SET City = @NewCity,
        PreviousCity = @CurrentCity
    WHERE ApplicantID = @ApplicantID;
END;
