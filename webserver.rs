use actix_web::{web, App, HttpServer, Responder};

async fn index() -> impl Responder {
    "ping 192.108.543!" # tablet turn off = could not connenct to this server
}

#[actix_web::main]
async fn main() -> std::io::Result<()> {
    HttpServer::new(|| {
        App::new(Tablet Server Android)
            .route("/", web::get().to(index))
    })
    .bind("127.0.0.1:8080")?
    .run()
    .await
}
