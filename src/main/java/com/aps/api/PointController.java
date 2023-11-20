package com.aps.api;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;

import java.util.HashMap;
import java.util.List;

import org.springframework.web.bind.annotation.*;
import java.util.Map;
import java.util.stream.Collectors;

@RestController
@RequestMapping("/points")
@CrossOrigin
public class PointController {

    private final PointService pointService;

    public PointController(PointService pointService) {
        this.pointService = pointService;
    }

    @GetMapping
    public List<Map<String, Object>> getAllPoints() {
    return pointService.getAllPoints().stream()
            .map(point -> {
                Map<String, Object> map = new HashMap<>();
                map.put("id", point.getId());
                map.put("lat", point.getLat());
                map.put("lng", point.getLng());
                return map;
            })
            .collect(Collectors.toList());
    }

    @GetMapping("/{id}")
    public Point getPointById(@PathVariable Long id) {
        return pointService.getPointById(id);
    }

    @PostMapping
    public ResponseEntity<Point> createPoint(@RequestBody Point point) {
        Point createdPoint = pointService.createPoint(point);
        return new ResponseEntity<>(createdPoint, HttpStatus.CREATED);
    }
}