#ARG IMAGE=store/intersystems/iris-community:2021.1.0.215.0
ARG IMAGE=registry.heroku.com/test-iijima1/herokutest_iris
FROM $IMAGE

USER root
# コンテナ内のワークディレクトリを /opt/try　に設定（後でここにデータベースを作成予定）
WORKDIR /opt/try
RUN chown ${ISC_PACKAGE_MGRUSER}:${ISC_PACKAGE_IRISGROUP} /opt/try

USER ${ISC_PACKAGE_MGRUSER}

# ファイルのコピー
COPY src src
COPY iris.script iris.script

# iris.scriptに記載された内容を実行
RUN iris start IRIS \
	&& iris session IRIS < iris.script \
    && iris stop IRIS quietly