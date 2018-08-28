package main

import (
	"golang_webapp_sample/src/main/handler"
	"net/http"
)

func main() {
	http.HandleFunc("/", handler.Handler)
	http.ListenAndServe(":8080", nil)
}
