name "webserver"
description "apache web server role"
run_list "recipe[apache]", "recipe[users]"
