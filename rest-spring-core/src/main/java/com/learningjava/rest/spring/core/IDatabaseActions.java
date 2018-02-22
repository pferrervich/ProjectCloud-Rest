package com.learningjava.rest.spring.core;

import java.util.List;

public interface IDatabaseActions {
    public void save();
    public void delete();
    public void update();
    public List<DBObject> getAll();
}
