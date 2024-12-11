use std::error::Error;
use tokio::process::Command;

#[tokio::main]
async fn main() -> Result<(), Box<dyn Error>> {
    // Параметры подключения
    let host = "localhost";
    let port = "5432";
    let database = "PawPick";
    let user = "postgres"; // Используйте имя суперпользователя
    let script = "sql/setup_database.sql"; // Обновите путь к вашему SQL-скрипту

    // Полный путь к исполняемому файлу psql
    let psql_path = "D:\\NewPostgreS\\PostgreSQL\\17\\bin\\psql.exe";

    // Команда для выполнения SQL-скрипта
    let output = Command::new(psql_path)
        .arg("-h")
        .arg(host)
        .arg("-p")
        .arg(port)
        .arg("-U")
        .arg(user)
        .arg("-d")
        .arg(database)
        .arg("-f")
        .arg(script)
        .output()
        .await?;

    // Проверка вывода команды
    if output.status.success() {
        println!("SQL-скрипт выполнен успешно.");
    } else {
        eprintln!("Ошибка при выполнении SQL-скрипта: {}", String::from_utf8_lossy(&output.stderr));
    }

    Ok(())
}
