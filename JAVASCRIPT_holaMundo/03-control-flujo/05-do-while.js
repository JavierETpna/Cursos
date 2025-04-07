console.log("---------------------")

i = 6;

while (i < 6) {
    if (i % 2 == 0) {
        console.log(i, 'Par (while)')
    };
    i ++;
}

i = 6;

do {
    if (i % 2 == 0) {
        console.log(i, 'Par (do-while)');
    };
    i++;
} while ( i < 6);