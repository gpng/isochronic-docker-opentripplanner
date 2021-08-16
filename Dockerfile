FROM urbica/otp

RUN mkdir /app
WORKDIR /app

COPY . .

EXPOSE 8080

ENTRYPOINT ["otp", "--build", "/app/data", "--pointSets", "/app/data", "--inMemory", "--server", "--analyst"]