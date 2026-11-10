package main

import (
	"fmt"
	"os"
)

func main() {
	allArgs := os.Args
	fmt.Println("--- STARTING DOCKER ---")
	fmt.Println("All args: ", allArgs)
}
