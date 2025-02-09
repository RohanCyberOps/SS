#!/bin/bash
BACKUP_DIR="/backup"
TIMESTAMP=$(date +%Y%m%d_%H%M%S)
DB_NAME="your_database"
DB_USER="your_user"
DB_PASS="your_password"
tar -czf "$BACKUP_DIR/files_backup_$TIMESTAMP.tar.gz" /your/important/files
mysqldump -u $DB_USER -p$DB_PASS $DB_NAME > "$BACKUP_DIR/db_backup_$TIMESTAMP.sql"
echo "Backup completed at $TIMESTAMP"
