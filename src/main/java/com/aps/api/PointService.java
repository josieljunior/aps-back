package com.aps.api;


import org.springframework.stereotype.Service;
import java.util.List;

@Service
public class PointService {

    private final PointRepository pointRepository;

    public PointService(PointRepository pointRepository) {
        this.pointRepository = pointRepository;
    }

    public List<Point> getAllPoints() {
        return pointRepository.findAll();
    }

    public Point getPointById(Long id) {
        return pointRepository.findById(id).orElse(null);
    }

    public Point createPoint(Point point) {
        return pointRepository.save(point);
    }
}
