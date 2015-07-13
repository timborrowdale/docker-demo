package dockerdemo;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/")
public class DockerDemoController {

    @RequestMapping(method = RequestMethod.GET)
    public ResponseEntity<String> get() {
        return new ResponseEntity<>("hello zuto", HttpStatus.OK);
    }
}
