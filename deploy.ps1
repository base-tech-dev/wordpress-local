# get project name and port from user
$docker_project_name = ''
while (!$docker_project_name) {
    $docker_project_name = Read-Host "Por favor, digite um nome de projeto"
}

$wordpress_port = ''
while (!$wordpress_port) {
    $wordpress_port = Read-Host "Por favor, digite a porta em que o projeto estará disponível"
}

$phpmyadmin_port = ''
while (!$phpmyadmin_port) {
    $phpmyadmin_port = Read-Host "Por favor, digite a porta para o phpmyadmin"
}

[Environment]::SetEnvironmentVariable('DOCKER_PROJECT_NAME', $docker_project_name)
[Environment]::SetEnvironmentVariable('WORDPRESS_PORT', $wordpress_port)
[Environment]::SetEnvironmentVariable('PHPMYADMIN_PORT', $phpmyadmin_port)

# set environment variables
cat .env | ForEach-Object {
    if ($_ -match '^([0-9A-Z_]+)=(.*)$') {
        [Environment]::SetEnvironmentVariable($Matches[1], $Matches[2]);
    }
}

docker-compose `
    --detach `
    --project-name $docker_project_name `
    up
