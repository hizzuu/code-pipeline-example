package main

import (
	"flag"
	"log"
)

var (
	name string
	num  int
	flg  bool
)

func init() {
	flag.StringVar(&name, "name", "", "文字列の値を指定")
	flag.IntVar(&num, "num", 0, "数値の値を指定")
	flag.BoolVar(&flg, "flg", false, "真偽値の値を指定")
	flag.Parse()
}

func main() {
	log.Println("args/name: ", name)
	log.Println("args/num: ", num)
	log.Println("args/flg: ", flg)
}
