#create network
docker network create -d bridge foodOnline-network

#Criando um container para executar uma instância do PostgreSQL
sudo docker run --name foodOnline-postgres --network=foodOnline-network -e "POSTGRES_PASSWORD=postgres2022!" -p 5432:5432 -v /home/ismael/Desenvolvimento/django_projects/PostgreSQL:/var/lib/postgresql/data -d postgres
#Criando um container para execução do pgAdmin 4
sudo docker run --name foodOnline-pgadmin --network=foodOnline-network -p 15432:80 -e "PGADMIN_DEFAULT_EMAIL=ismael@gmail.com" -e "PGADMIN_DEFAULT_PASSWORD=pgadmin2022!" -d dpage/pgadmin4


