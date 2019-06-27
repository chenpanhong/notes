package main

import "fmt"

func main() {
a := split(10)
fmt.Println(a.x)
fmt.Println(a.y)
}

func split(sum int) (x, y int) {
    x = sum * 4 / 9;
    y = sum - x;
    return
}
