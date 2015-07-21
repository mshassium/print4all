package ru.rail.print4all.utils.files;

import org.apache.pdfbox.pdmodel.PDDocument;
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
            case ContentType.TXT:
                return saveTXTFile();
            case ContentType.PDF: {
                setCountPDFPage();
                return savePDFFile();
            }
            case ContentType.WORD:
                return savePDFFile();
            default:
                return savePDFFile();
        }
    }

    private void setCountPDFPage() {
        int numberOfPages = 0;
        PDDocument document = null;
        try {
            document = PDDocument.load(file.getBytes());
            numberOfPages = document.getNumberOfPages();
        } catch (IOException e) {
            e.printStackTrace();

        }
        file.setCountPage(numberOfPages);
    }

    private boolean savePDFFile() {
        MultipartFile multipartFile = file.getMultipartFile();
        try (FileInputStream fis = (FileInputStream) multipartFile.getInputStream()) {
            Path filePath = validateRemoveAndCreateNewFile();
            FileOutputStream fos = new FileOutputStream(filePath.toFile());
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
            Path filePath = validateRemoveAndCreateNewFile();
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

    private Path validateRemoveAndCreateNewFile() throws IOException {
        Path pathFile = this.file.getPathFile();
        Files.deleteIfExists(pathFile);
        return Files.createFile(pathFile);
    }

    private void checkExistFile() {
        if (file == null || file.getPathFile() == null) {
            throw new RuntimeException("���� �� ����� ������");
        }
    }

    public SimpleFileWrap getFile() {
        return file;
    }

    public void setFile(SimpleFileWrap file) {
        this.file = file;
    }
}
