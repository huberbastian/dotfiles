function hdb --wraps='mariadb -h 127.0.0.1 -P 3306 -u hybris -p hybris' --wraps='mariadb -h 127.0.0.1 -P 3306 -u hybris -p hybris -A' --description 'alias hdb=mariadb -h 127.0.0.1 -P 3306 -u hybris -p hybris -A'
  mariadb -h 127.0.0.1 -P 3306 -u hybris -p hybris -A $argv
        
end
