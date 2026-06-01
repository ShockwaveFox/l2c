#### Archiving and Comppressing
- compression is combining files to make their sizes smaller
- this makes them easier to send or transfer
- similar to Windows .zip process

#### Compression types
- There are 2 types of compression - lossy and lossless
    - lossy - very effective at reducing file sizes
        - the integrity and quality of the files is slightly lowered
        - good for videos, music and graphics where it is not as noticable
        - not good for documents which need to be high quality and correct
        - lossy compression is effecitive and efficient but quality is lower
    - lossless - not as effective at reducing file sizes
        - no impacts to the integrity and quality of the files

#### Tar
- tar (tape archive) - creates an archive to combine multiple files into one location
    - E.g. - tar -cvf combinedFiles.tar file1.txt file2.txt file3.txt
        - creates a new archive called combinedFiles.tar and adds the 3 text files into it
            - c = create a new archive, 
            - v = verbose, lists the files being adde to the archive, 
            - f = write to the following archive name / read from the follwing archive name
- tar can show the files contained within a .tar archive
    - E.g. - tar -tvf combinedFiles.tar
    ```
    -rw-r--r--  0 ada00211 staff       0 24 Apr 13:35 file1.txt
    -rw-r--r--  0 ada00211 staff       0 24 Apr 13:35 file2.txt
    -rw-r--r--  0 ada00211 staff       0 24 Apr 13:35 file3.txt
    ```
- to extract files using tar -
    - E.g. - tar -xvf combinedFiles.txt
        - x = extract the files
        - if a file being extracted already exists in location it will be replaced with the extracted file

#### Compression
- there are 3 main types of compression options in Linux
    - gzip - good balance of speed and compression sizes
        - uses .tar.gz or .tgz file extension
    - bzip2 - slow compression speed but smallest file sizes
        - uses .tar.bz2 file extension
    - compress - fastest compression speeds but larger file sizes
        - uses the .tar.z file extension

#### gzip (GNU zip)
- gzip is the most commonly used compression method
- to compress an archive with gzip
    - E.g. - gzip combinedFiles.* = combinedFiles.tar.gz
    - the * wildcard is used to apply gzip to any and all files that begin with combinedFiles with any file extension
- to unzip an archive with gzip -
    - E.g. - gunzip combinedFiles.*
    - the file will return back to its original .tar format

#### bzip2
- bzip2 is a widely used compression method
- to compress an archive with gzip
    - E.g. - bzip2 combinedFiles.* = combinedFiles.tar.bz2
    - the * wildcard is used to apply gzip to any and all files that begin with combinedFiles with any file extension
- to unzip an archive with gzip -
    - E.g. - bunzip2 combinedFiles.*
    - the file will return back to its original .tar format

#### compress
- compress is the least used compression method
- to compress an archive with gzip
    - E.g. - compress combinedFiles.* = combinedFiles.tar.Z
    - the * wildcard is used to apply gzip to any and all files that begin with combinedFiles with any file extension
- to unzip an archive with gzip -
    - E.g. - uncompress combinedFiles.*
    - the file will return back to its original .tar format

### dd command
- the dd command can make a bit0by-bit copy of single files, a file system or a whole hard drive
- Even deleted files can be copied using dd - deleted files are not copied by the cp command
- dd is very slow to use
- to use the dd command -
    - E.g. - dd if=/dev/flashdrive of=/root/adamsfolder
    - dd = the copy command
    - if = input file (/dev/flashdrive) - where to copy from
    - of = output file (/root/adamsfolder) - where to copy to
- various options can be added to the dd command
    - conv:noerror (conv=conversion) - continues copying even if there are errors
    - bs = block size - sets the size of the bytes read/written for the data being copied over
        - default setting is 512 bytes - setting it higher can speed up the process
        - is most often set to 4kb (4096 bytes)
- These extra commands are added at the end of the command -
    - E.g. - dd if=/dev/flashdrive of=/root/adamsfolder conv:noerror bs=4096