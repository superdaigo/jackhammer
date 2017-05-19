docker-compose create --build
docker-compose start
docker-compose exec web rake db:schema:load
docker-compose run --rm -e APPLICATION_MODE=$1 web rake db:seed
docker-compose exec web figlet -k -w 500 "JACKHAMMER IS UP"
