USE msdb;
GO


EXEC sp_add_job
    @job_name = 'DailyBackup_ITI_LMS';

EXEC sp_add_jobstep
    @job_name  = 'DailyBackup_ITI_LMS',
    @step_name = 'Run Daily Backup',
    @command   = 'EXEC [ITI_LMS].[dbo].[USP_BackupDatabase]
                       @BackupType = ''FULL'',
                       @BackupPath = ''/var/opt/mssql/backups/'';';


EXEC sp_add_schedule
    @schedule_name        = 'Every_1Day',
    @freq_type            = 4,        -- Daily
    @freq_interval        = 1,        -- Every 1 day
    @freq_subday_type     = 1,        -- Once a day
    @freq_subday_interval = 0,
    @active_start_time    = 020000;   -- 2:00 AM



EXEC sp_attach_schedule
    @job_name      = 'DailyBackup_ITI_LMS',
    @schedule_name = 'Every_1Day';


EXEC sp_add_jobserver
    @job_name = 'DailyBackup_ITI_LMS';
GO
