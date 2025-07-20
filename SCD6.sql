CREATE PROCEDURE UpdateSCD6
    @ApplicantID INT,
    @NewCity VARCHAR(50)
AS
BEGIN
    DECLARE @FullName VARCHAR(100), @College VARCHAR(100), @Year VARCHAR(10),
            @Role VARCHAR(50), @Version INT, @PrevCity VARCHAR(50);

    SELECT TOP 1 
        @FullName = FullName,
        @College = CollegeName,
        @Year = Year,
        @Role = RoleApplied,
        @Version = Version,
        @PrevCity = City
    FROM InternshipApplicants
    WHERE ApplicantID = @ApplicantID AND IsCurrent = 1;

    UPDATE InternshipApplicants
    SET IsCurrent = 0, EndDate = GETDATE()
    WHERE ApplicantID = @ApplicantID AND IsCurrent = 1;

    INSERT INTO InternshipApplicants
    (ApplicantID, FullName, CollegeName, Year, RoleApplied, City, Version, StartDate, IsCurrent, PreviousCity)
    VALUES
    (@ApplicantID, @FullName, @College, @Year, @Role, @NewCity, @Version + 1, GETDATE(), 1, @PrevCity);
END;
