package ru.rail.print4all.utils.files;

import org.springframework.web.multipart.MultipartFile;
import ru.rail.print4all.utils.files.wrap.SimpleFileWrap;

import java.io.BufferedWriter;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.StandardOpenOption;

/**
 * User: rakh1213
 */
public class SaveFileFS {

    private SimpleFileWrap file;

    public SaveFileFS(SimpleFileWrap file) {
        this.file = file;
    }

    public boolean saveFile() {
        checkExistFile();
        String contentType = file.getContentType();
        switch (contentType) {
            case ContetntType.TXT:
                return saveTXTFile();
            case ContetntType.PDF:
                return savePDFFile();
            case ContetntType.WORD:
                return savePDFFile();
            default:
                return savePDFFile();
        }
    }

    private boolean savePDFFile() {
        MultipartFile multipartFile = file.getMultipartFile();
        try(FileInputStream fis = (FileInputStream) multipartFile.getInputStream()) {
            Path pathFile = this.file.getPathFile();
            Files.deleteIfExists(pathFile);
            Path filePath = Files.createFile(pathFile);
            FileOutputStream fos =new FileOutputStream(filePath.toFile());
            byte[] buffer = new byte[4096];
            int read;
            while ((read = fis.read(buffer)) != -1) {
                fos.write(buffer, 0, read);
            }
            fos.close();

        } catch (IOException e) {
            e.printStackTrace();
        }
        return true;
    }

    private boolean saveTXTFile() {
        try {
            Path filePath = Files.createFile(this.file.getPathFile());
            byte[] bytesFile = file.getBytes();
            try (BufferedWriter writer = Files.newBufferedWriter(filePath, StandardCharsets.UTF_8, StandardOpenOption
                    .WRITE)) {
                for (byte b : bytesFile) {
                    writer.write(b);
                }
                return true;
            } catch (IOException e) {
                e.printStackTrace();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    private void checkExistFile() {
        if (file == null || file.getPathFile() == null) {
            throw new RuntimeException("Путь до файла пустой");
        }
    }

    public SimpleFileWrap getFile() {
        return file;
    }

    public void setFile(SimpleFileWrap file) {
        this.file = file;
    }
}
