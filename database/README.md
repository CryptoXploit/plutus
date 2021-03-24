# Database FAQ
This database is a serialized `set()` of all Bitcoin addresses with a positive balance.

The database was created using bigquery.which generates a csv file of all Bitcoin addresses with a positive balance. The csv file was converted into a set and the set was serialized into several `.pickle` files each holding 1,000,000 P2PKH Bitcoin addresses. When the program runs, the files in the database get deserialized and combined to be used for a balance query.

The name of the database folder is db. The database will be updated every month and check bigquery for SQL query to fetch latest balance dump on your own if you want to manually update it.remember to keep the zip file name addresses.zip and inside the zip archive the csv name should be addresses.csv

### How Many Addresses Does The Database Have?

The database currently holds `1,50,00,000 Bitcoin addresses`.

This can be verified by removing the hashtag on <a href="https://github.com/Isaacdelly/Plutus/blob/master/plutus.py#L134">Line 134</a> before running the program. This will print the size of the database.

### Why Are There So Many Files?

There are multiple `.pickle` files because GitHub limits file uploads to 100 MB. The single serialized file is too large, so it was split into multiple files each under 50 MB in order to be uploaded to GitHub.
