# graphite

Simple graphite installation.

# Security
When cntainer starts, it tries to create django admin user. It's email can be set using env variable. To set admin's password, you should execute:
`docker exec -ti <container_name> graphite-manage changepassword admin`

# Env variables

| Variable | Default value | Description |
| --- | --- | --- |
| `DJANGO_ADMIN_EMAIL` | `admin@graphite.host` | Email of django admin user |
| `SECRET_KEY` | (none) | django secret key, should be set to a unique random value for each instance of the container |

## Credits
Created by [Marek Obuchowicz](https://github.com/marek-obuchowicz) from [KoreKontrol](https://www.korekontrol.eu/).

Many thanks to `bebehei`

## License
[MIT](LICENSE)
