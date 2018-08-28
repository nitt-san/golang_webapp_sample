# 基本にするイメージはgolangなんよ
FROM golang:alpine

# コンテナ上のWorking Directoryはここなんよ
WORKDIR /go/src/golang_webapp_sample/

# ローカル上の./配下を/opt/appにコピーするんよ
COPY ./ /go/src/golang_webapp_sample/

# ポートを開けるんよ
EXPOSE 8080

# golang_webapp_sampleを go run する
CMD ["go", "run", "./src/main/golang_webapp_sample.go"]
