package ru.rail.print4all.utils.files.wrap;

import com.fasterxml.jackson.annotation.JsonIgnore;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.Serializable;
import java.nio.file.Path;
import java.nio.file.Paths;

/**
 * User: rakh1213
 */
public class SimpleFileWrap implements Serializable {

    @JsonIgnore
    private Path pathFile;
    private String fullPathToString;
    private int size;
    private int countPage;
    private String ext;
    private int idOrder;
    private boolean use;
    private byte[] bytes;
    private String contentType;
    @JsonIgnore
    private MultipartFile multipartFile;

    public SimpleFileWrap(MultipartFile multipartFile, String pathFile, String contentType, byte[] bytes) {
        getNewPath(pathFile);
        this.bytes = bytes;
        this.contentType = contentType;
        this.multipartFile = multipartFile;
    }

    public SimpleFileWrap(String pathFile, int idOrder, byte[] bytes) {
        getNewPath(pathFile);
        this.idOrder = idOrder;
        this.bytes = bytes;
    }

    private void getNewPath(String pathFile) {
        String newPatchString = Paths.get(System.getProperty("user.home")) + File.separator + pathFile;
        this.pathFile = Paths.get(newPatchString);
        fullPathToString = this.pathFile.toString();
    }

    public byte[] getBytes() {
        return bytes;
    }

    public void setBytes(byte[] bytes) {
        this.bytes = bytes;
    }

    public Path getPathFile() {
        return pathFile;
    }

    public void setPathFile(Path pathFile) {
        this.pathFile = pathFile;
    }

    public int getSize() {
        return size;
    }

    public void setSize(int size) {
        this.size = size;
    }

    public int getCountPage() {
        return countPage;
    }

    public void setCountPage(int countPage) {
        this.countPage = countPage;
    }

    public String getExt() {
        return ext;
    }

    public void setExt(String ext) {
        this.ext = ext;
    }

    public int getIdOrder() {
        return idOrder;
    }

    public void setIdOrder(int idOrder) {
        this.idOrder = idOrder;
    }

    public boolean isUse() {
        return use;
    }

    public void setUse(boolean use) {
        this.use = use;
    }

    public String getContentType() {
        return contentType;
    }

    public void setContentType(String contentType) {
        this.contentType = contentType;
    }

    public MultipartFile getMultipartFile() {
        return multipartFile;
    }

    public void setMultipartFile(MultipartFile multipartFile) {
        this.multipartFile = multipartFile;
    }

    public String getFullPathToString() {
        return fullPathToString;
    }

    public void setFullPathToString(String fullPathToString) {
        this.fullPathToString = fullPathToString;
    }
}
