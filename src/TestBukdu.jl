module TestBukdu

export custom_routes

using Bukdu

struct MicroServiceController <: ApplicationController
    conn::Conn
end

function load_portfolio_service(c::MicroServiceController)
    render(JSON, "Hello World")
end

function custom_routes()
    post("/loadportfolio", MicroServiceController, load_portfolio_service)
end

end # module
