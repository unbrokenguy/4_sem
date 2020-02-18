package ru.kpfu.itis.notebook.dto;

import lombok.Data;

@Data
public class NoteDto {
    private String title;
    private String text;

    public String getTitle() {
        return title;
    }

    @Override
    public String toString() {
        return "NoteDto{" +
                "title='" + title + '\'' +
                ", text='" + text + '\'' +
                '}';
    }
}
