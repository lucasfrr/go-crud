package main

import (
	"fmt"
	"log"
	"net/http"
)

func main() {
	http.HandleFunc("/", func(rw http.ResponseWriter, r *http.Request) {
		fmt.Println("opa disgraça")
	})

	log.Fatal(http.ListenAndServe(":8000", nil))
}
