package ru.kpfu.itis.notebook.controller;

import org.springframework.boot.context.properties.bind.DefaultValue;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import ru.kpfu.itis.notebook.dto.NoteDto;

import javax.validation.constraints.Pattern;
import java.util.ArrayList;
import java.util.List;
import java.util.SortedMap;
import java.util.stream.Collectors;

@Controller
public class NoteController {

    private List<NoteDto> notebook = new ArrayList<>();

    @PostMapping("/note")
    public String add(@ModelAttribute NoteDto note) {
        notebook.add(note);
        return "redirect:note";
    }

    @GetMapping("/note")
    public String getAdd() {
        return "note";
    }

    @PostMapping("/search")
    public String search(@RequestParam String title, Model model) {
        List<NoteDto> section;
        section = notebook.stream().filter(x -> x.getTitle().equals(title)).collect(Collectors.toList());
        model.addAttribute("section", section);
        model.addAttribute("page", "1");
        model.addAttribute("max", "1");
        return "search";
    }
    @GetMapping("/notebook")
    public String  getNoteBook(Model model){
        return getPage("1", model);
    }
    @GetMapping("/notebook/{page}")
    public String getPage(@Pattern(regexp = "\\d+") @PathVariable String page, Model model) {
        int max = notebook.size() / 5 + ((notebook.size() % 5 == 0) ? 0 : 1);
        int p = Integer.parseInt(page);
        if (p > max) {
            return "note";
        } else {
            int startIndex = 5 * (p - 1);
            int endIndex = (p == max) ? notebook.size() : 5 + 5 * (p - 1);
            List<NoteDto> section = notebook.subList(startIndex, endIndex);
            model.addAttribute("section", section);
            model.addAttribute("page", page);
            model.addAttribute("max", max);
        }
        return "notebook";
    }
}
