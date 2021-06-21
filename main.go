package main

import (
	"fmt"
	"log"

	"github.com/jmoiron/sqlx"
	"github.com/labstack/echo"
	"github.com/labstack/echo/middleware"

	"gitlab.com/cnpibk/handlers"
	"gitlab.com/cnpibk/models"
)

func main() {
	var err error

	dbHost := "localhost"
	dbPort := "3306"
	dbUser := "root"
	dbPass := "root"
	dbName := "cnpibk"
	connection := fmt.Sprintf(`%s:%s@(%s:%s)/%s?parseTime=true`, dbUser, dbPass, dbHost, dbPort, dbName)
	connection += "&loc=Asia%2FJakarta"

	models.DBPool, err = sqlx.Open("mysql", connection)
	if err != nil {
		log.Fatal(err)
	}

	var server = echo.New()

	server.Use(middleware.CORS())
	server.Use(middleware.CORSWithConfig(middleware.CORSConfig{
		AllowOrigins:     []string{"*"},
		AllowCredentials: true,
		AllowMethods:     []string{"POST", "OPTIONS", "GET", "PUT", "DELETE"},
		AllowHeaders:     []string{"Accept", "Authorization", "Content-Type", "Content-Length", "X-CSRF-Token", "Token", "session", "Origin", "Host", "Connection", "Accept-Encoding", "Accept-Language", "X-Requested-With"},
	}))
	server.Static("/static", "assets")
	server.Use(middleware.BodyLimit("5M"))

	handlers.Init(server)

	err = server.Start(":8080")
	if err != nil {
		log.Println(err)
	}
}
