# LocalBackup

Backup script written in Python to compress a folder and upload it to a FTP

## Usage

```
usage: backup.py [-h] --folder FOLDER --ftp FTP [--max MAX] [--name NAME]

If an arg is specified in more than one place, then commandline values
override environment variables which override defaults.

optional arguments:
  -h, --help       show this help message and exit
  --folder FOLDER  folder to backup [env var: FOLDER]
  --ftp FTP        FTP url (e.g.
                   ftp://backup:password@backup.network/backups/mydb) [env
                   var: FTP_URL]
  --max MAX        maximum count of backups [env var: MAX_FILES]
  --name NAME      backup name [env var: BACKUP_NAME]
```

A Docker image `bdeinsalyon/localbackup` is also available

## ToDo

* Implement Duplicity (http://duplicity.nongnu.org/) as backup storage

## License

This script is given under MIT License.
```
© 2017, Philippe VIENNE
```