#!/bin/bash

cd ./kernel/
go build --tags "fts5" -o "../app/kernel/SiYuan-Kernel"
cd ../app/
pnpm run dev &
cd ./kernel/
./SiYuan-Kernel --wd=.. --mode=dev &
cd ../
pnpm run start &
