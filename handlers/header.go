package handlers

import "github.com/labstack/echo"

func HeaderHandler(e *echo.Echo) {
	e.POST("/header", NewHeader)
}

func GetHeaders(c echo.Context) (err error) {
	return
}

func NewHeader(c echo.Context) (err error) {
	return
}
