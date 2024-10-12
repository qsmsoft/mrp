package main

import (
	"github.com/gofiber/fiber/v2"
	"log"
)

func main() {

	app := fiber.New()

	app.Get("/", func(ctx *fiber.Ctx) error {
		return ctx.SendString("MRP SYSTEM")
	})

	log.Fatal(app.Listen(":3000"))

}
