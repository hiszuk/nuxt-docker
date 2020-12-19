FROM node:14.15.3

# パッケージアップデート
RUN apt-get update

# NUXTソースファイルコピー
WORKDIR /webapp
COPY nuxt-sample /webapp

# ライブラリを取得しビルド
RUN npm install
RUN npm run build

ENV HOST 0.0.0.0

CMD ["npm", "run", "start"]

EXPOSE 3000
