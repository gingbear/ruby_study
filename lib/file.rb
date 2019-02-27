module RubyTest
    class FileTest
        FILE_NAME = "file_test.txt"
        def self.test
            make_test_file
            read_test
            delete_test
            file_exist
        end

        def self.make_test_file
            f = File.new(FILE_NAME, "w")
            f.write("1234567890\n")
            f.close
        end

        def self.read_test
            s = File.read(FILE_NAME)
            p s
        end

        def self.delete_test
            File.delete(FILE_NAME)
        end

        def self.file_exist
            p File.exist?(FILE_NAME)
        end
    end
end

RubyTest::FileTest.test