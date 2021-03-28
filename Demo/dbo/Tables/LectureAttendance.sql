CREATE TABLE [dbo].[LectureAttendance] (
    [Id]        BIGINT NOT NULL,
    [PupilId]   BIGINT NOT NULL,
    [LectureId] BIGINT NOT NULL,
    CONSTRAINT [PK_LectureAttendance] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_LectureAttendance_Lesson] FOREIGN KEY ([LectureId]) REFERENCES [dbo].[Lesson] ([Id]),
    CONSTRAINT [FK_LectureAttendance_Pupil] FOREIGN KEY ([PupilId]) REFERENCES [dbo].[Pupil] ([id])
);

