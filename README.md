Download by passing the book_id:

```
docker run -it -v $(pwd):/downloads/ -e SAFARI_USER=$SAFARI_USER -e SAFARI_PASS=$SAFARI_PASS   sajid2045/safari-download $book_id 
```

