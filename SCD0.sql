CREATE PROCEDURE UpdateSCD0
    @ApplicantID INT,
    @NewCity VARCHAR(50)
AS
BEGIN
    IF EXISTS (
        SELECT 1 FROM InternshipApplicants
        WHERE ApplicantID = @ApplicantID AND City <> @NewCity
    )
    BEGIN
        PRINT 'SCD Type 0: Change not allowed. Data remains unchanged.';
    END
END;
