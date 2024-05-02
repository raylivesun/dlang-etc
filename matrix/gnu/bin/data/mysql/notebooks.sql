CREATE TABLE binary_data (
    id INT(4) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    description CHAR(50),
    bin_data LONGBLOB,
    filename CHAR(50),
    filesize CHAR(50),
    filetype CHAR(50)
);

