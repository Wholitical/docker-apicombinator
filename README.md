docker build . -t apicombinator
docker run -p 9000:9000 -x OPENFEC_API_KEY="openfecapikey" apicombinator
