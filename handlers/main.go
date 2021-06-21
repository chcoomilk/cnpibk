package handlers

import (
	"net/http"

	"github.com/labstack/echo"

	"gitlab.com/cnpibk/models"
)

func Init(e *echo.Echo) {
	e.GET("/", main)

	HeaderHandler(e)
}

func main(c echo.Context) (err error) {
	models.GetAllTables()
	c.JSON(http.StatusOK, map[string]interface{}{
		"msg": "pong",
	})
	return
}
