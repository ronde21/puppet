class hello {
        file { '/tmp/hello.txt':
                content => "Hello World!\n"
        }
}
