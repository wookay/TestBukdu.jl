using TestBukdu # custom_routes
using Bukdu # routes

routes(custom_routes)
Bukdu.start(8080)


sleep(1)

Router.call(post, "/loadportfolio")
Bukdu.stop()
