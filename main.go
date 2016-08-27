package main

import (
	"bufio"
	//"encoding/binary"
	"fmt"
	"os"
)

func main() {
	file, err := os.Open("./data/sample/cifar-10-batches-bin/data_batch_2.bin")

	if err != nil {
		//return nil, err
	}
	defer file.Close()

	stats, statsErr := file.Stat()
	if statsErr != nil {
		//return nil, statsErr
	}
	fmt.Println(stats)
	//var size int64 = stats.Size()
	bytes := make([]byte, 3074)
	//label := make([]byte, 1)
	//red := make([]byte, 1024)
	//green := make([]byte, 1024)
	//blue := make([]byte, 1024)

	buff := bufio.NewReader(file)
	_, err = buff.Read(bytes)
	fmt.Println(bytes)

	//return bytes, err
}
